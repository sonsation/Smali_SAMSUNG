.class public Lcom/android/server/cover/GenericCoverServiceController;
.super Ljava/lang/Object;
.source "GenericCoverServiceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;,
        Lcom/android/server/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;,
        Lcom/android/server/cover/GenericCoverServiceController$ListenerTypes;,
        Lcom/android/server/cover/GenericCoverServiceController$SystemEvents;
    }
.end annotation


# static fields
.field private static final MSG_LCD_OFF_DISABLED_BY_COVER:I = 0x1

.field private static final MSG_SEND_POWER_KEY_TO_COVER:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisableLcdOffWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Lcom/android/server/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSendPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/cover/GenericCoverServiceController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/cover/GenericCoverServiceController;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cover/GenericCoverServiceController;->handleLcdOffDisabledByCover(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/cover/GenericCoverServiceController;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cover/GenericCoverServiceController;->handleSendPowerKeyToCover(Landroid/os/Bundle;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/android/server/cover/GenericCoverServiceController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lcom/android/server/cover/GenericCoverServiceController;->mContext:Landroid/content/Context;

    .line 83
    const-string v0, "power"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/cover/GenericCoverServiceController;->mPowerManager:Landroid/os/PowerManager;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;-><init>(Lcom/android/server/cover/GenericCoverServiceController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cover/GenericCoverServiceController;->mHandler:Lcom/android/server/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;

    .line 87
    iget-object v0, p0, Lcom/android/server/cover/GenericCoverServiceController;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "send power key"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/GenericCoverServiceController;->mSendPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 88
    iget-object v0, p0, Lcom/android/server/cover/GenericCoverServiceController;->mSendPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 89
    iget-object v0, p0, Lcom/android/server/cover/GenericCoverServiceController;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "disable LCD Off"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/GenericCoverServiceController;->mDisableLcdOffWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 90
    iget-object v0, p0, Lcom/android/server/cover/GenericCoverServiceController;->mDisableLcdOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 81
    return-void
.end method

.method private acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V
    .locals 5
    .param p1, "wakeLock"    # Landroid/os/PowerManager$WakeLock;

    .prologue
    .line 164
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 166
    .local v2, "origId":J
    :try_start_0
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 163
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lcom/android/server/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;

    const-string v4, "Shouldn\'t happen"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleLcdOffDisabledByCover(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 144
    const/4 v0, 0x4

    .line 146
    .local v0, "event":I
    iget-object v4, p0, Lcom/android/server/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 147
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "listener$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;

    .line 148
    .local v1, "listener":Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;
    iget v3, v1, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 149
    invoke-virtual {v1, v0, p1}, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 146
    .end local v1    # "listener":Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 153
    iget-object v3, p0, Lcom/android/server/cover/GenericCoverServiceController;->mDisableLcdOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0, v3}, Lcom/android/server/cover/GenericCoverServiceController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 143
    return-void
.end method

.method private handleSendPowerKeyToCover(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 131
    const/4 v0, 0x1

    .line 133
    .local v0, "event":I
    iget-object v4, p0, Lcom/android/server/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 134
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "listener$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;

    .line 135
    .local v1, "listener":Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;
    iget v3, v1, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->type:I

    const/16 v5, 0xa

    if-ne v3, v5, :cond_0

    .line 136
    invoke-virtual {v1, v0, p1}, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 133
    .end local v1    # "listener":Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 140
    iget-object v3, p0, Lcom/android/server/cover/GenericCoverServiceController;->mSendPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0, v3}, Lcom/android/server/cover/GenericCoverServiceController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 130
    return-void
.end method

.method private releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V
    .locals 5
    .param p1, "wakeLock"    # Landroid/os/PowerManager$WakeLock;

    .prologue
    .line 183
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 185
    .local v2, "origId":J
    :try_start_0
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 182
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lcom/android/server/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;

    const-string v4, "Shouldn\'t happen"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 285
    const-string v2, " Current Generic Cover Callback state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 287
    iget-object v3, p0, Lcom/android/server/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 288
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Live callbacks ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "):"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    iget-object v2, p0, Lcom/android/server/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;

    .line 290
    .local v0, "info":Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;
    if-eqz v0, :cond_0

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (pid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->pid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->type:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 292
    const-string v4, ")"

    .line 291
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 287
    .end local v0    # "info":Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 295
    .restart local v1    # "info$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 284
    return-void
.end method

.method registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 195
    sget-object v1, Lcom/android/server/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerNfcTouchListenerCallback: binder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 196
    const-string v3, ", uid : "

    .line 195
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 196
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 195
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 196
    const-string v3, ", type : "

    .line 195
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    .line 200
    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 201
    sget-object v1, Lcom/android/server/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported touch listener type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void

    .line 205
    :cond_0
    iget-object v8, p0, Lcom/android/server/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "listener$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;

    .line 207
    .local v0, "listener":Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;
    if-eqz v0, :cond_1

    .line 208
    iget-object v1, v0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    sget-object v1, Lcom/android/server/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;

    const-string v2, "registerNfcTouchListenerCallback : duplicated listener handle"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    .line 210
    return-void

    .line 215
    .end local v0    # "listener":Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;
    :cond_2
    const/4 v0, 0x0

    .line 216
    .local v0, "listener":Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;
    :try_start_1
    new-instance v0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;

    .end local v0    # "listener":Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 217
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v6, p1

    .line 216
    invoke-direct/range {v0 .. v6}, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;-><init>(Lcom/android/server/cover/GenericCoverServiceController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    .line 218
    .local v0, "listener":Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;
    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 219
    iget-object v1, p0, Lcom/android/server/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v8

    .line 194
    return-void

    .line 205
    .end local v0    # "listener":Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;
    .end local v7    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v8

    throw v1
.end method

.method sendPowerKeyToCover()V
    .locals 3

    .prologue
    .line 114
    sget-object v1, Lcom/android/server/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;

    const-string v2, "sendPowerKeyToCover"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v1, p0, Lcom/android/server/cover/GenericCoverServiceController;->mSendPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0, v1}, Lcom/android/server/cover/GenericCoverServiceController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 116
    iget-object v1, p0, Lcom/android/server/cover/GenericCoverServiceController;->mHandler:Lcom/android/server/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 117
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 113
    return-void
.end method

.method setLcdOffDisabledByCover(Z)V
    .locals 5
    .param p1, "disabled"    # Z

    .prologue
    .line 121
    sget-object v2, Lcom/android/server/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLcdOffDisabledByCover disabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v2, p0, Lcom/android/server/cover/GenericCoverServiceController;->mDisableLcdOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0, v2}, Lcom/android/server/cover/GenericCoverServiceController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 123
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 124
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "lcd_off_disabled_by_cover"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 125
    iget-object v2, p0, Lcom/android/server/cover/GenericCoverServiceController;->mHandler:Lcom/android/server/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/cover/GenericCoverServiceController$GenericPressServiceControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 126
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 127
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 120
    return-void
.end method

.method unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x0

    .line 224
    sget-object v2, Lcom/android/server/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unRegisterNfcTouchListenerCallback: binder = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 225
    const-string v4, ", uid : "

    .line 224
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 225
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 224
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v3, p0, Lcom/android/server/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 228
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;

    .line 229
    .local v0, "listener":Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;
    if-eqz v0, :cond_0

    .line 230
    iget-object v2, v0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    sget-object v2, Lcom/android/server/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v2, p0, Lcom/android/server/cover/GenericCoverServiceController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 233
    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    const/4 v2, 0x1

    monitor-exit v3

    return v2

    .end local v0    # "listener":Lcom/android/server/cover/GenericCoverServiceController$GenericPressEventListenerInfo;
    :cond_1
    monitor-exit v3

    .line 239
    sget-object v2, Lcom/android/server/cover/GenericCoverServiceController;->TAG:Ljava/lang/String;

    const-string v3, "UnregisterNfcTouchListener: listener does not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return v5

    .line 227
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
