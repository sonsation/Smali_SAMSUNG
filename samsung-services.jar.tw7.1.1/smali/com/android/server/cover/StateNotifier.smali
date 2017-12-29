.class final Lcom/android/server/cover/StateNotifier;
.super Ljava/lang/Object;
.source "StateNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;,
        Lcom/android/server/cover/StateNotifier$H;,
        Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;,
        Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;
    }
.end annotation


# static fields
.field private static final INCALLUI_PACKAGE:Ljava/lang/String; = "com.samsung.android.incallui"

.field private static final TAG:Ljava/lang/String;

.field static final TYPE_COVER_STATE_LISTENER:I = 0x2

.field static final TYPE_COVER_WINDOW_STATE_LISTENER:I = 0x4

.field static final TYPE_STATE_LISTENER:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCoverOpen:Z

.field private mCoverType:I

.field private final mHandler:Lcom/android/server/cover/StateNotifier$H;

.field private final mHighPriorityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLcdOffDisableListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLcdOffDisabledByApp:Z

.field private mLcdOffDisabledByAppListener:Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mSendCoverAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/cover/StateNotifier;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/cover/StateNotifier;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/cover/StateNotifier;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/cover/StateNotifier;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/cover/StateNotifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cover/StateNotifier;->enableLcdOffByCoverIfPossibleLocked()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/cover/StateNotifier;Z)V
    .locals 0
    .param p1, "attached"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cover/StateNotifier;->handleSendCoverAttachState(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/cover/StateNotifier;Lcom/samsung/android/cover/CoverState;Z)V
    .locals 0
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;
    .param p2, "switchState"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/StateNotifier;->handleSendCoverSwitchState(Lcom/samsung/android/cover/CoverState;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cover/StateNotifier;->TAG:Ljava/lang/String;

    .line 50
    return-void
.end method

.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    .line 70
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/cover/StateNotifier;->mCoverType:I

    .line 71
    iput-boolean v2, p0, Lcom/android/server/cover/StateNotifier;->mCoverOpen:Z

    .line 77
    iput-object p2, p0, Lcom/android/server/cover/StateNotifier;->mContext:Landroid/content/Context;

    .line 78
    const-string v0, "power"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    .line 80
    new-instance v0, Lcom/android/server/cover/StateNotifier$H;

    invoke-direct {v0, p0, p1}, Lcom/android/server/cover/StateNotifier$H;-><init>(Lcom/android/server/cover/StateNotifier;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cover/StateNotifier;->mHandler:Lcom/android/server/cover/StateNotifier$H;

    .line 81
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "CoverSwitchState"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/StateNotifier;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 82
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 83
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "CoverAttachState"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/StateNotifier;->mSendCoverAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 84
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mSendCoverAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 76
    return-void
.end method

.method private addListenerToListLocked(Landroid/os/IBinder;Landroid/content/ComponentName;ILjava/util/List;)V
    .locals 9
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/content/ComponentName;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p4, "listenersList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;>;"
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "listener$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;

    .line 240
    .local v0, "listener":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    sget-object v1, Lcom/android/server/cover/StateNotifier;->TAG:Ljava/lang/String;

    const-string v2, "addListenerToListLocked : duplicated listener handle"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-void

    .line 246
    .end local v0    # "listener":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    :cond_1
    new-instance v0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;

    .line 247
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    .line 246
    invoke-direct/range {v0 .. v6}, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;-><init>(Lcom/android/server/cover/StateNotifier;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    .line 249
    .restart local v0    # "listener":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    return-void

    .line 250
    :catch_0
    move-exception v7

    .line 251
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private checkSystemFeatureForCoverType(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 494
    sparse-switch p1, :sswitch_data_0

    .line 515
    const/4 v0, 0x0

    return v0

    .line 499
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportSViewCover()Z

    move-result v0

    return v0

    .line 501
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportClearCover()Z

    move-result v0

    return v0

    .line 503
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportFlipCover()Z

    move-result v0

    return v0

    .line 505
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportSmartCover()Z

    move-result v0

    return v0

    .line 507
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportNeonCover()Z

    move-result v0

    return v0

    .line 509
    :sswitch_5
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportLEDCover()Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportNfcLedCover()Z

    move-result v0

    .line 509
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 494
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

.method private enableLcdOffByCoverIfPossibleLocked()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 596
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 597
    iput-boolean v1, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    .line 598
    iget-boolean v0, p0, Lcom/android/server/cover/StateNotifier;->mCoverOpen:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/cover/StateNotifier;->mCoverType:I

    if-nez v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisabledByAppListener:Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/cover/StateNotifier;->mCoverType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    .line 602
    iget v0, p0, Lcom/android/server/cover/StateNotifier;->mCoverType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 603
    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisabledByAppListener:Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;

    invoke-interface {v0}, Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;->onLcdOffByCoverEnabled()V

    .line 595
    :cond_2
    return-void
.end method

.method private findListenerOnListLocked(Landroid/os/IBinder;Ljava/util/ArrayList;)Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;",
            ">;)",
            "Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;"
        }
    .end annotation

    .prologue
    .local p2, "listenersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;>;"
    const/4 v3, 0x0

    .line 278
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;

    .line 279
    .local v0, "listener":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    return-object v0

    .line 283
    .end local v0    # "listener":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    :cond_1
    return-object v3
.end method

.method private handleSendCoverAttachState(Z)V
    .locals 4
    .param p1, "attached"    # Z

    .prologue
    .line 372
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 373
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;

    .line 375
    .local v0, "listener":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    invoke-virtual {v0, p1}, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->onCoverAttachStateChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 372
    .end local v0    # "listener":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 378
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 379
    :try_start_1
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;

    .line 381
    .restart local v0    # "listener":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    invoke-virtual {v0, p1}, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->onCoverAttachStateChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 378
    .end local v0    # "listener":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    monitor-exit v3

    .line 384
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier;->mSendCoverAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 385
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier;->mSendCoverAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 371
    :cond_2
    return-void
.end method

.method private handleSendCoverSwitchState(Lcom/samsung/android/cover/CoverState;Z)V
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;
    .param p2, "switchState"    # Z

    .prologue
    .line 339
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 340
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;

    .line 342
    .local v0, "listener":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    invoke-virtual {v0, p1}, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->onCoverSwitchStateChanged(Lcom/samsung/android/cover/CoverState;)V

    .line 343
    invoke-virtual {v0, p2}, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->onCoverSwitchStateChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 339
    .end local v0    # "listener":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 346
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 347
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 338
    :cond_1
    return-void
.end method

.method private removeListenerFromListLocked(Landroid/os/IBinder;Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;Ljava/util/ArrayList;)Z
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "listener"    # Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "listenersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;>;"
    const/4 v2, 0x0

    .line 288
    if-nez p2, :cond_0

    .line 289
    sget-object v0, Lcom/android/server/cover/StateNotifier;->TAG:Ljava/lang/String;

    const-string v1, "removeListenerFromListLocked : listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return v2

    .line 293
    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 294
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 296
    :cond_1
    invoke-interface {p1, p2, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 297
    invoke-virtual {p3}, Ljava/util/ArrayList;->notify()V

    .line 298
    const/4 v0, 0x1

    return v0
.end method

.method private sendCoverAttachState(Z)V
    .locals 4
    .param p1, "attached"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 364
    sget-boolean v0, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cover/StateNotifier;->TAG:Ljava/lang/String;

    const-string v3, "sendCoverAttachState"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mSendCoverAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mSendCoverAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 368
    :cond_1
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mHandler:Lcom/android/server/cover/StateNotifier$H;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v1, v0, v2}, Lcom/android/server/cover/StateNotifier$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 363
    return-void

    :cond_2
    move v0, v2

    .line 368
    goto :goto_0
.end method

.method private sendCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/4 v1, 0x0

    .line 330
    sget-boolean v0, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cover/StateNotifier;->TAG:Ljava/lang/String;

    const-string v2, "sendCoverSwitchState"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mSendCoverSwitchStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 334
    :cond_1
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier;->mHandler:Lcom/android/server/cover/StateNotifier$H;

    .line 335
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 334
    :goto_0
    invoke-virtual {v2, v1, v0, v1, p1}, Lcom/android/server/cover/StateNotifier$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 329
    return-void

    :cond_2
    move v0, v1

    .line 335
    goto :goto_0
.end method


# virtual methods
.method disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 9
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 549
    sget-object v1, Lcom/android/server/cover/StateNotifier;->TAG:Ljava/lang/String;

    const-string v2, "disableLcdOffByCover"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v7, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 551
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "listener$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;

    .line 552
    .local v0, "listener":Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    sget-object v1, Lcom/android/server/cover/StateNotifier;->TAG:Ljava/lang/String;

    const-string v2, "disableLcdOffByCover : LCD off already called by app"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    .line 554
    return v3

    .line 558
    .end local v0    # "listener":Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;
    :cond_1
    :try_start_1
    new-instance v0, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;

    .line 559
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 558
    invoke-direct/range {v0 .. v5}, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;-><init>(Lcom/android/server/cover/StateNotifier;Landroid/os/IBinder;Landroid/content/ComponentName;II)V

    .line 560
    .restart local v0    # "listener":Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 561
    iget-object v1, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisabledByApp:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    .line 563
    return v8

    .line 550
    .end local v0    # "listener":Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;
    .end local v6    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v7

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 628
    const-string v3, " Current StateNotifier state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 630
    iget-object v4, p0, Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 631
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Live listeners ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "):"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 632
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "info$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;

    .line 633
    .local v0, "info":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    if-eqz v0, :cond_0

    .line 634
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 635
    const-string v5, " (pid="

    .line 634
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 635
    iget v5, v0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->pid:I

    .line 634
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 635
    const-string v5, " uid="

    .line 634
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 635
    iget v5, v0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->uid:I

    .line 634
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 635
    const-string v5, ")"

    .line 634
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 630
    .end local v0    # "info":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    .end local v2    # "info$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 638
    .restart local v2    # "info$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    const-string v3, "  "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 640
    iget-object v4, p0, Lcom/android/server/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 641
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Live high priority listeners ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "):"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 642
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;

    .line 643
    .restart local v0    # "info":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    if-eqz v0, :cond_2

    .line 644
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 645
    const-string v5, " (pid="

    .line 644
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 645
    iget v5, v0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->pid:I

    .line 644
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 645
    const-string v5, " uid="

    .line 644
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 645
    iget v5, v0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->uid:I

    .line 644
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 645
    const-string v5, ")"

    .line 644
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 640
    .end local v0    # "info":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 648
    :cond_3
    :try_start_3
    const-string v3, "  "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v4

    .line 650
    iget-object v4, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 651
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " LCD Off disabled by app: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 652
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " LCD Off listeners ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "):"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 653
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;

    .line 654
    .local v1, "info":Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;
    if-eqz v1, :cond_4

    .line 655
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v1, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 656
    const-string v5, " (pid="

    .line 655
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 656
    iget v5, v1, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;->pid:I

    .line 655
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 656
    const-string v5, " uid="

    .line 655
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 656
    iget v5, v1, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;->uid:I

    .line 655
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 656
    const-string v5, ")"

    .line 655
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    .line 650
    .end local v1    # "info":Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;
    :catchall_2
    move-exception v3

    monitor-exit v4

    throw v3

    .line 659
    :cond_5
    :try_start_5
    const-string v3, "  "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit v4

    .line 627
    return-void
.end method

.method enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 7
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 568
    sget-object v3, Lcom/android/server/cover/StateNotifier;->TAG:Ljava/lang/String;

    const-string v4, "enableLcdOffByCover"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v4, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 570
    const/4 v2, 0x0

    .line 571
    .local v2, "listener":Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;

    .line 572
    .local v0, "l":Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 573
    move-object v2, v0

    .line 578
    .end local v0    # "l":Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;
    .end local v2    # "listener":Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;
    :cond_1
    if-nez v2, :cond_2

    .line 579
    sget-object v3, Lcom/android/server/cover/StateNotifier;->TAG:Ljava/lang/String;

    const-string v5, "enableLcdOffByCover: matching listener does not exist."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 580
    return v6

    .line 583
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 585
    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 586
    invoke-direct {p0}, Lcom/android/server/cover/StateNotifier;->enableLcdOffByCoverIfPossibleLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 587
    const/4 v3, 0x1

    monitor-exit v4

    return v3

    .line 569
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method isLcdOffByDisabledByApp()Z
    .locals 1

    .prologue
    .line 624
    iget-boolean v0, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    return v0
.end method

.method onCoverAppStateChanged(Z)I
    .locals 4
    .param p1, "covered"    # Z

    .prologue
    .line 484
    sget-boolean v2, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/cover/StateNotifier;->TAG:Ljava/lang/String;

    const-string v3, "onCoverAppStateChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_0
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 486
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;

    .line 487
    .local v0, "listener":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    invoke-virtual {v0, p1}, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->onCoverAppStateChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 485
    .end local v0    # "listener":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v3

    .line 490
    const/4 v2, 0x0

    return v2
.end method

.method registerLcdOffDisabledByAppListener(Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;

    .prologue
    .line 616
    iput-object p1, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisabledByAppListener:Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;

    .line 615
    return-void
.end method

.method registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "type"    # I

    .prologue
    .line 216
    sget-boolean v0, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 217
    sget-object v0, Lcom/android/server/cover/StateNotifier;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerListenerCallback : binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 218
    const-string v2, ", pid : "

    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 218
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 219
    const-string v2, ", uid : "

    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 219
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 220
    const-string v2, ", type : "

    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    if-eqz p2, :cond_1

    const-string v0, "com.samsung.android.incallui"

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    iget-object v1, p0, Lcom/android/server/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/cover/StateNotifier;->addListenerToListLocked(Landroid/os/IBinder;Landroid/content/ComponentName;ILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 215
    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 232
    :try_start_1
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/cover/StateNotifier;->addListenerToListLocked(Landroid/os/IBinder;Landroid/content/ComponentName;ILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 231
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method unregisterCallback(Landroid/os/IBinder;)Z
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 257
    sget-boolean v1, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    .line 258
    sget-object v1, Lcom/android/server/cover/StateNotifier;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterCallback : binder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 259
    const-string v3, ", pid : "

    .line 258
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 259
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 258
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 260
    const-string v3, ", uid : "

    .line 258
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 260
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 258
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/android/server/cover/StateNotifier;->findListenerOnListLocked(Landroid/os/IBinder;Ljava/util/ArrayList;)Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;

    move-result-object v0

    .local v0, "listener":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    if-eqz v0, :cond_1

    .line 265
    iget-object v1, p0, Lcom/android/server/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/cover/StateNotifier;->removeListenerFromListLocked(Landroid/os/IBinder;Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;Ljava/util/ArrayList;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :cond_1
    monitor-exit v2

    .line 268
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 269
    :try_start_1
    iget-object v1, p0, Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/android/server/cover/StateNotifier;->findListenerOnListLocked(Landroid/os/IBinder;Ljava/util/ArrayList;)Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 270
    iget-object v1, p0, Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/cover/StateNotifier;->removeListenerFromListLocked(Landroid/os/IBinder;Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;Ljava/util/ArrayList;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    monitor-exit v2

    return v1

    .line 263
    .end local v0    # "listener":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .restart local v0    # "listener":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    :cond_2
    monitor-exit v2

    .line 273
    const/4 v1, 0x0

    return v1

    .line 268
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method unregisterLcdOffDisabledByAppListener(Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;

    .prologue
    .line 620
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisabledByAppListener:Lcom/android/server/cover/StateNotifier$LcdOffDisabledByAppListener;

    .line 619
    return-void
.end method

.method updateCoverAttachState(ZIZ)V
    .locals 3
    .param p1, "attached"    # Z
    .param p2, "type"    # I
    .param p3, "switchState"    # Z

    .prologue
    .line 352
    iput p2, p0, Lcom/android/server/cover/StateNotifier;->mCoverType:I

    .line 353
    iput-boolean p3, p0, Lcom/android/server/cover/StateNotifier;->mCoverOpen:Z

    .line 355
    sget-boolean v0, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    .line 356
    sget-object v0, Lcom/android/server/cover/StateNotifier;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCoverAttachState : attached = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/cover/StateNotifier;->checkSystemFeatureForCoverType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    invoke-direct {p0, p1}, Lcom/android/server/cover/StateNotifier;->sendCoverAttachState(Z)V

    .line 351
    :cond_1
    return-void
.end method

.method updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V
    .locals 5
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 302
    sget-boolean v2, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    .line 303
    sget-object v2, Lcom/android/server/cover/StateNotifier;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCoverSwitchState : switchState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 304
    const-string v4, ", type = "

    .line 303
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 304
    iget v4, p1, Lcom/samsung/android/cover/CoverState;->type:I

    .line 303
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 304
    const-string v4, ", color = "

    .line 303
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 304
    iget v4, p1, Lcom/samsung/android/cover/CoverState;->color:I

    .line 303
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 305
    const-string v4, ", widthPixel = "

    .line 303
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 305
    iget v4, p1, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    .line 303
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 306
    const-string v4, ", heightPixel = "

    .line 303
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 306
    iget v4, p1, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    .line 303
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/cover/StateNotifier;->mCoverOpen:Z

    .line 311
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 312
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/StateNotifier;->mHighPriorityListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;

    .line 316
    .local v0, "listener":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    invoke-virtual {v0, p1}, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->onCoverSwitchStateChanged(Lcom/samsung/android/cover/CoverState;)V

    .line 317
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;->onCoverSwitchStateChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 311
    .end local v0    # "listener":Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v3

    .line 320
    invoke-direct {p0, p1}, Lcom/android/server/cover/StateNotifier;->sendCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    .line 322
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mContext:Landroid/content/Context;

    .line 323
    iget-boolean v2, p0, Lcom/android/server/cover/StateNotifier;->mCoverOpen:Z

    if-eqz v2, :cond_2

    const-string v2, "CM01"

    .line 322
    :goto_1
    invoke-static {v3, v2}, Lcom/android/server/cover/ContextLoggingManager;->sendContextServiceLogForFeature(Landroid/content/Context;Ljava/lang/String;)V

    .line 301
    return-void

    .line 324
    :cond_2
    const-string v2, "CM02"

    goto :goto_1
.end method

.method updatePowerState(IZ)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "isOpen"    # Z

    .prologue
    const/4 v7, 0x6

    const/4 v4, 0x0

    .line 390
    sget-object v3, Lcom/android/server/cover/StateNotifier;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatePowerState : isOpen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v5, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    if-eqz p2, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v5, v3}, Landroid/os/PowerManager;->updateCoverState(Z)V

    .line 394
    sparse-switch p1, :sswitch_data_0

    .line 389
    :cond_0
    :goto_1
    return-void

    .line 392
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 398
    :sswitch_0
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/cover/Feature;->isSupportSViewCover()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 399
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7, v4, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    goto :goto_1

    .line 404
    :sswitch_1
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/cover/Feature;->isSupportClearCover()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 405
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7, v4, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    goto :goto_1

    .line 410
    :sswitch_2
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/cover/Feature;->isSupportNeonCover()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 411
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7, v4, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    goto :goto_1

    .line 417
    :sswitch_3
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/cover/Feature;->isSupportFlipCover()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 418
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 419
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v3

    .line 418
    if-nez v3, :cond_2

    .line 420
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v3

    .line 418
    if-eqz v3, :cond_3

    .line 421
    :cond_2
    sget-boolean v3, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/cover/StateNotifier;->TAG:Ljava/lang/String;

    const-string v4, "updatePowerState : factory mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 424
    :cond_3
    if-eqz p2, :cond_5

    .line 425
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 426
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7, v4, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    goto/16 :goto_1

    .line 429
    :cond_4
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v7}, Landroid/os/PowerManager;->semWakeUp(JI)V

    goto/16 :goto_1

    .line 431
    :cond_5
    iget-boolean v3, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    if-eqz v3, :cond_9

    .line 434
    iget-object v4, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 435
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 436
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;

    .line 437
    .local v0, "l":Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cover close: goToSleep disabled by: PID:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v0, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;->pid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " UID:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v0, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;->uid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, "logMSG":Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v3, :cond_6

    .line 439
    sget-object v3, Lcom/android/server/cover/StateNotifier;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 434
    .end local v0    # "l":Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    .end local v2    # "logMSG":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 441
    .restart local v0    # "l":Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;
    .restart local v1    # "l$iterator":Ljava/util/Iterator;
    .restart local v2    # "logMSG":Ljava/lang/String;
    :cond_6
    :try_start_1
    sget-object v3, Lcom/android/server/cover/StateNotifier;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 445
    .end local v0    # "l":Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    .end local v2    # "logMSG":Ljava/lang/String;
    :cond_7
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    .line 446
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/os/PowerManager;->goToSleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    :goto_3
    monitor-exit v4

    goto/16 :goto_1

    .line 450
    :cond_9
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->goToSleep(J)V

    goto/16 :goto_1

    .line 455
    :sswitch_4
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/cover/Feature;->isSupportNfcLedCover()Z

    move-result v3

    if-nez v3, :cond_a

    .line 456
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/cover/Feature;->isSupportLEDCover()Z

    move-result v3

    .line 455
    if-eqz v3, :cond_0

    .line 457
    :cond_a
    if-eqz p2, :cond_c

    .line 458
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 459
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7, v4, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    goto/16 :goto_1

    .line 462
    :cond_b
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v7}, Landroid/os/PowerManager;->semWakeUp(JI)V

    goto/16 :goto_1

    .line 464
    :cond_c
    iget-boolean v3, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisabledByApp:Z

    if-eqz v3, :cond_0

    .line 467
    iget-object v4, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 468
    :try_start_2
    iget-object v3, p0, Lcom/android/server/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 470
    invoke-direct {p0}, Lcom/android/server/cover/StateNotifier;->enableLcdOffByCoverIfPossibleLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 467
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 394
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_4
        0x8 -> :sswitch_1
        0xb -> :sswitch_2
        0x64 -> :sswitch_3
    .end sparse-switch
.end method
