.class final Lcom/android/server/cover/DreamyNfcLedCoverController;
.super Lcom/android/server/cover/BaseNfcLedCoverController;
.source "DreamyNfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cover/DreamyNfcLedCoverController$AuthCallbackInfo;,
        Lcom/android/server/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;,
        Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;,
        Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    }
.end annotation


# static fields
.field static final CMD_START_LED_COVER_SERVICE_APP:I = -0x1

.field private static final MAX_FACTORY_MODE_ENQUEUE_COMMANDS:I = 0x3

.field private static final MSG_COVER_ATTACH_STATE:I = 0x5

.field private static final MSG_FOTA_IN_PROGRESS_REQUEST:I = 0xc

.field private static final MSG_FOTA_IN_PROGRESS_RESPONSE:I = 0xd

.field private static final MSG_LCD_OFF_DISABLED_BY_COVER:I = 0x9

.field private static final MSG_LED_NOTIFICATION_ADD:I = 0x6

.field private static final MSG_LED_NOTIFICATION_REMOVE:I = 0x7

.field private static final MSG_NFC_LED_HANDLE_EVENT_RESPONSE:I = 0x3

.field private static final MSG_NOTIFY_AUTH_RESPONSE:I = 0xb

.field private static final MSG_REQUEST_AUTH:I = 0xa

.field private static final MSG_SEND_NFC_LED_DATA:I = 0x0

.field private static final MSG_SEND_POWER_KEY_TO_COVER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CoverManager.DreamyNfcLedCoverController"


# instance fields
.field private mCoverAuthCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cover/DreamyNfcLedCoverController$AuthCallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEnquedFactoryCommands:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mFotaInProgressCallbacks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/android/server/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSAccessoryManager:Lcom/samsung/accessory/manager/ISAccessoryManager;

.field private mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/server/cover/DreamyNfcLedCoverController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mCoverAuthCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/cover/DreamyNfcLedCoverController;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mFotaInProgressCallbacks:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/cover/DreamyNfcLedCoverController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/cover/DreamyNfcLedCoverController;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cover/DreamyNfcLedCoverController;->handleAddLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/cover/DreamyNfcLedCoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cover/DreamyNfcLedCoverController;->handleCoverDetachedLocked()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/server/cover/DreamyNfcLedCoverController;Z)V
    .locals 0
    .param p1, "inProgress"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cover/DreamyNfcLedCoverController;->handleSetFotaInProgress(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/cover/DreamyNfcLedCoverController;II)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "eventAction"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/DreamyNfcLedCoverController;->handleEventResponse(II)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/cover/DreamyNfcLedCoverController;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cover/DreamyNfcLedCoverController;->handleLcdOffDisabledByCover(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/cover/DreamyNfcLedCoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cover/DreamyNfcLedCoverController;->handleNotifyAuthResponse()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/cover/DreamyNfcLedCoverController;Z)V
    .locals 0
    .param p1, "inProgress"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cover/DreamyNfcLedCoverController;->handleNotifyFotaInProgress(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/cover/DreamyNfcLedCoverController;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cover/DreamyNfcLedCoverController;->handleRemoveLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/cover/DreamyNfcLedCoverController;J)V
    .locals 1
    .param p1, "whenNanos"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/DreamyNfcLedCoverController;->handleRequestCoverAuthentication(J)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/cover/DreamyNfcLedCoverController;I[B)V
    .locals 0
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/DreamyNfcLedCoverController;->handleSendDataToNfcLedCover(I[B)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/cover/DreamyNfcLedCoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cover/DreamyNfcLedCoverController;->handleSendPowerKeyToCover()V

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/BaseNfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mCoverAuthCallbacks:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mEnquedFactoryCommands:Ljava/util/ArrayDeque;

    .line 91
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mFotaInProgressCallbacks:Ljava/util/Queue;

    .line 93
    new-instance v0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;-><init>(Lcom/android/server/cover/DreamyNfcLedCoverController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 94
    iget-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    .line 95
    const-string v1, "send leddata"

    .line 94
    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 96
    iget-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    .line 98
    const-string v1, "touchResponse ledcover"

    .line 97
    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 99
    iget-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 85
    return-void
.end method

.method private getSAccessoryManager()Lcom/samsung/accessory/manager/ISAccessoryManager;
    .locals 2

    .prologue
    .line 803
    iget-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mSAccessoryManager:Lcom/samsung/accessory/manager/ISAccessoryManager;

    if-nez v0, :cond_0

    .line 804
    const-string v0, "saccessory_manager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/accessory/manager/ISAccessoryManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/manager/ISAccessoryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mSAccessoryManager:Lcom/samsung/accessory/manager/ISAccessoryManager;

    .line 805
    iget-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mSAccessoryManager:Lcom/samsung/accessory/manager/ISAccessoryManager;

    if-nez v0, :cond_0

    .line 806
    const-string v0, "CoverManager.DreamyNfcLedCoverController"

    const-string v1, "warning: no SAccessoryManager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mSAccessoryManager:Lcom/samsung/accessory/manager/ISAccessoryManager;

    return-object v0
.end method

.method private handleAddLedNotification(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 345
    const/4 v0, 0x2

    .line 347
    .local v0, "event":I
    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 348
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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

    check-cast v1, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 349
    .local v1, "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v1, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 350
    invoke-virtual {v1, v0, p1}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 347
    .end local v1    # "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 344
    return-void
.end method

.method private handleCoverDetachedLocked()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 178
    const-string v4, "CoverManager.DreamyNfcLedCoverController"

    const-string v5, "handleCoverDetached()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v4, v6}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 182
    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v4}, Lcom/android/server/cover/DreamyNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 183
    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v4}, Lcom/android/server/cover/DreamyNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 184
    iget-object v5, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 185
    :try_start_0
    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "listener$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 186
    .local v2, "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    if-eqz v2, :cond_0

    .line 187
    const-string v4, "CoverManager.DreamyNfcLedCoverController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleCoverDetached remove NfcLedTouchListenerInfo listener: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v4, v2, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    const/4 v6, 0x0

    invoke-interface {v4, v2, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 184
    .end local v2    # "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v3    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 191
    .restart local v3    # "listener$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    .line 193
    iget-object v5, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mCoverAuthCallbacks:Ljava/util/ArrayList;

    monitor-enter v5

    .line 194
    :try_start_2
    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mCoverAuthCallbacks:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/DreamyNfcLedCoverController$AuthCallbackInfo;

    .line 195
    .local v0, "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$AuthCallbackInfo;
    if-eqz v0, :cond_2

    .line 196
    const-string v4, "CoverManager.DreamyNfcLedCoverController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleCoverDetached remove AuthCallbackInfo listener: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/server/cover/DreamyNfcLedCoverController$AuthCallbackInfo;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v4, v0, Lcom/android/server/cover/DreamyNfcLedCoverController$AuthCallbackInfo;->token:Landroid/os/IBinder;

    const/4 v6, 0x0

    invoke-interface {v4, v0, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 193
    .end local v0    # "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$AuthCallbackInfo;
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    .line 200
    :cond_3
    :try_start_3
    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mCoverAuthCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v5

    .line 202
    iget-object v5, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mFotaInProgressCallbacks:Ljava/util/Queue;

    monitor-enter v5

    .line 203
    :try_start_4
    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mFotaInProgressCallbacks:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;

    .line 204
    .local v1, "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;
    if-eqz v1, :cond_4

    .line 205
    const-string v4, "CoverManager.DreamyNfcLedCoverController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleCoverDetached remove FotaInProgressCallbackInfo listener: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/android/server/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v4, v1, Lcom/android/server/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;->token:Landroid/os/IBinder;

    const/4 v6, 0x0

    invoke-interface {v4, v1, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    .line 202
    .end local v1    # "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;
    :catchall_2
    move-exception v4

    monitor-exit v5

    throw v4

    .line 209
    :cond_5
    :try_start_5
    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mFotaInProgressCallbacks:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit v5

    .line 177
    return-void
.end method

.method private handleEventResponse(II)V
    .locals 5
    .param p1, "eventType"    # I
    .param p2, "eventAction"    # I

    .prologue
    .line 424
    const-string v2, "CoverManager.DreamyNfcLedCoverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HandleEventResponse: type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    packed-switch p2, :pswitch_data_0

    .line 478
    const-string v2, "CoverManager.DreamyNfcLedCoverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown event action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :goto_0
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 482
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v2}, Lcom/android/server/cover/DreamyNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 423
    :cond_0
    return-void

    .line 428
    :pswitch_0
    const-string v2, "CoverManager.DreamyNfcLedCoverController"

    const-string v3, "Event touch: accept"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v3, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 430
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 431
    .local v0, "info":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v2, v0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v2, :cond_1

    .line 432
    invoke-virtual {v0}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTouchAccept()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 429
    .end local v0    # "info":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "info$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit v3

    goto :goto_0

    .line 438
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    :pswitch_1
    const-string v2, "CoverManager.DreamyNfcLedCoverController"

    const-string v3, "Event touch: reject"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v3, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 440
    :try_start_1
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "info$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 441
    .restart local v0    # "info":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v2, v0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v2, :cond_3

    .line 442
    invoke-virtual {v0}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTouchReject()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 439
    .end local v0    # "info":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 448
    :pswitch_2
    const-string v2, "CoverManager.DreamyNfcLedCoverController"

    const-string v3, "Event touch: tap left"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v3, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 450
    :try_start_2
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "info$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 451
    .restart local v0    # "info":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v2, v0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v2, :cond_4

    .line 452
    invoke-virtual {v0}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTapLeft()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    .line 449
    .end local v0    # "info":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    :catchall_2
    move-exception v2

    monitor-exit v3

    throw v2

    .line 458
    :pswitch_3
    const-string v2, "CoverManager.DreamyNfcLedCoverController"

    const-string v3, "Event touch: tap middle"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v3, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 460
    :try_start_3
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "info$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 461
    .restart local v0    # "info":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v2, v0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v2, :cond_5

    .line 462
    invoke-virtual {v0}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTapMid()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_4

    .line 459
    .end local v0    # "info":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    :catchall_3
    move-exception v2

    monitor-exit v3

    throw v2

    .line 468
    :pswitch_4
    const-string v2, "CoverManager.DreamyNfcLedCoverController"

    const-string v3, "Event touch: tap right"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v3, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 470
    :try_start_4
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "info$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 471
    .restart local v0    # "info":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v2, v0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v2, :cond_6

    .line 472
    invoke-virtual {v0}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTapRight()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_5

    .line 469
    .end local v0    # "info":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    :catchall_4
    move-exception v2

    monitor-exit v3

    throw v2

    nop

    .line 426
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleLcdOffDisabledByCover(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 369
    const/4 v0, 0x4

    .line 371
    .local v0, "event":I
    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 372
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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

    check-cast v1, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 373
    .local v1, "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v1, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 374
    invoke-virtual {v1, v0, p1}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 371
    .end local v1    # "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 368
    return-void
.end method

.method private handleNotifyAuthResponse()V
    .locals 5

    .prologue
    .line 558
    iget-object v3, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mCoverAuthCallbacks:Ljava/util/ArrayList;

    monitor-enter v3

    .line 559
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mCoverAuthCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 560
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/cover/DreamyNfcLedCoverController$AuthCallbackInfo;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 561
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/DreamyNfcLedCoverController$AuthCallbackInfo;

    .line 562
    .local v1, "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$AuthCallbackInfo;
    const/4 v2, 0x6

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/android/server/cover/DreamyNfcLedCoverController$AuthCallbackInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    .line 563
    iget-object v2, v1, Lcom/android/server/cover/DreamyNfcLedCoverController$AuthCallbackInfo;->token:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 564
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 558
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/cover/DreamyNfcLedCoverController$AuthCallbackInfo;>;"
    .end local v1    # "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$AuthCallbackInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/cover/DreamyNfcLedCoverController$AuthCallbackInfo;>;"
    :cond_0
    monitor-exit v3

    .line 557
    return-void
.end method

.method private handleNotifyFotaInProgress(Z)V
    .locals 5
    .param p1, "inProgress"    # Z

    .prologue
    .line 626
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 627
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "fota_in_progress"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 629
    iget-object v3, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mFotaInProgressCallbacks:Ljava/util/Queue;

    monitor-enter v3

    .line 630
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mFotaInProgressCallbacks:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;

    .line 631
    .local v1, "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;
    if-eqz v1, :cond_0

    .line 632
    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/android/server/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    .line 633
    iget-object v2, v1, Lcom/android/server/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;->token:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    .line 625
    return-void

    .line 629
    .end local v1    # "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private handleRemoveLedNotification(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 357
    const/4 v0, 0x3

    .line 359
    .local v0, "event":I
    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 360
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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

    check-cast v1, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 361
    .local v1, "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v1, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 362
    invoke-virtual {v1, v0, p1}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 359
    .end local v1    # "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 356
    return-void
.end method

.method private handleRequestCoverAuthentication(J)V
    .locals 1
    .param p1, "whenNanos"    # J

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/android/server/cover/DreamyNfcLedCoverController;->getSAccessoryManager()Lcom/samsung/accessory/manager/ISAccessoryManager;

    move-result-object v0

    .line 536
    .local v0, "sam":Lcom/samsung/accessory/manager/ISAccessoryManager;
    if-eqz v0, :cond_0

    .line 533
    :cond_0
    return-void
.end method

.method private handleSendDataToNfcLedCover(I[B)V
    .locals 8
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    .line 394
    const/4 v1, 0x5

    .line 395
    .local v1, "event":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 396
    .local v0, "args":Landroid/os/Bundle;
    const-string v5, "send_command_id"

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 397
    const-string v5, "send_command_content"

    invoke-virtual {v0, v5, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 399
    const/4 v2, 0x0

    .line 400
    .local v2, "isLedCoverServiceRegistered":Z
    iget-object v6, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 401
    :try_start_0
    iget-object v5, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "listener$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 402
    .local v3, "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v5, v3, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v7, 0x4

    if-ne v5, v7, :cond_0

    .line 403
    invoke-virtual {v3, v1, v0}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    const/4 v2, 0x1

    goto :goto_0

    .end local v3    # "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    :cond_1
    monitor-exit v6

    .line 408
    if-nez v2, :cond_3

    .line 409
    const-string v5, "CoverManager.DreamyNfcLedCoverController"

    .line 410
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LedCoverService did not finished initalizing, enqueue command "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 409
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v5, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mEnquedFactoryCommands:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->size()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_2

    .line 414
    iget-object v5, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mEnquedFactoryCommands:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 416
    :cond_2
    iget-object v5, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mEnquedFactoryCommands:Ljava/util/ArrayDeque;

    invoke-virtual {v5, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_3
    iget-object v5, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 419
    iget-object v5, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v5}, Lcom/android/server/cover/DreamyNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 393
    :cond_4
    return-void

    .line 400
    .end local v4    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private handleSendPowerKeyToCover()V
    .locals 0

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/android/server/cover/DreamyNfcLedCoverController;->notifyPowerButtonPressListeners()V

    .line 387
    return-void
.end method

.method private handleSetFotaInProgress(Z)V
    .locals 6
    .param p1, "inProgress"    # Z

    .prologue
    .line 603
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 604
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "fota_in_progress"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 608
    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 609
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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

    check-cast v1, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 610
    .local v1, "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v1, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 611
    const/4 v3, 0x7

    invoke-virtual {v1, v3, v0}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 608
    .end local v1    # "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 602
    return-void
.end method

.method private notifyPowerButtonPressListeners()V
    .locals 6

    .prologue
    .line 493
    const/4 v0, 0x1

    .line 495
    .local v0, "event":I
    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 496
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "listener$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 497
    .local v1, "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v1, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-eq v3, v5, :cond_1

    .line 498
    iget v3, v1, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/16 v5, 0xa

    if-ne v3, v5, :cond_0

    .line 499
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 495
    .end local v1    # "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit v4

    .line 492
    return-void
.end method


# virtual methods
.method public addLedNotification(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 304
    const-string v1, "CoverManager.DreamyNfcLedCoverController"

    const-string v2, "addLedNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 306
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 307
    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 303
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 813
    const-string v2, " Current NfcLedCoverController state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 814
    const-string v2, "  mIsLEDCoverAttached="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 815
    iget-boolean v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mIsLedCoverAttached:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 816
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 818
    const-string v2, " Current NFC Callback state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 820
    iget-object v3, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 821
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Live callbacks ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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

    .line 822
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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

    check-cast v0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 823
    .local v0, "info":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    if-eqz v0, :cond_0

    .line 824
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (pid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 825
    const-string v4, " type="

    .line 824
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 825
    iget v4, v0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 824
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 825
    const-string v4, ")"

    .line 824
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 820
    .end local v0    # "info":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 828
    .restart local v1    # "info$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 812
    return-void
.end method

.method notifyAuthenticationResponse()V
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->sendEmptyMessage(I)Z

    .line 548
    return-void
.end method

.method registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 11
    .param p1, "type"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 251
    const-string v1, "CoverManager.DreamyNfcLedCoverController"

    .line 252
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

    .line 253
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 252
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 253
    const-string v3, ", uid : "

    .line 252
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 253
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 252
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 254
    const-string v3, ", type : "

    .line 252
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v10, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v10

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "listener$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 259
    .local v0, "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    if-eqz v0, :cond_0

    .line 260
    iget-object v1, v0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    const-string v1, "CoverManager.DreamyNfcLedCoverController"

    const-string v2, "sendDataToNfcLedCover : duplicated listener handle"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    .line 262
    return-void

    .line 267
    .end local v0    # "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    :cond_1
    const/4 v0, 0x0

    .line 268
    .local v0, "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    :try_start_1
    new-instance v0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .end local v0    # "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 269
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v6, p1

    .line 268
    invoke-direct/range {v0 .. v6}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;-><init>(Lcom/android/server/cover/DreamyNfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    .line 270
    .local v0, "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 271
    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 273
    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mEnquedFactoryCommands:Ljava/util/ArrayDeque;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "args$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 274
    .local v7, "args":Landroid/os/Bundle;
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v7}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 257
    .end local v0    # "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v7    # "args":Landroid/os/Bundle;
    .end local v8    # "args$iterator":Ljava/util/Iterator;
    .end local v9    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v10

    throw v1

    .line 276
    .restart local v0    # "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    .restart local v8    # "args$iterator":Ljava/util/Iterator;
    .restart local v9    # "listener$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mEnquedFactoryCommands:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v8    # "args$iterator":Ljava/util/Iterator;
    :cond_3
    monitor-exit v10

    .line 249
    return-void
.end method

.method public removeLedNotification(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 311
    const-string v1, "CoverManager.DreamyNfcLedCoverController"

    const-string v2, "removeLedNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 313
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 314
    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 310
    return-void
.end method

.method protected requestCoverAuthentication(JLandroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 11
    .param p1, "whenNanos"    # J
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 510
    iget-object v9, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mCoverAuthCallbacks:Ljava/util/ArrayList;

    monitor-enter v9

    .line 511
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mCoverAuthCallbacks:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "listener$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/DreamyNfcLedCoverController$AuthCallbackInfo;

    .line 512
    .local v0, "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$AuthCallbackInfo;
    if-eqz v0, :cond_0

    .line 513
    iget-object v1, v0, Lcom/android/server/cover/DreamyNfcLedCoverController$AuthCallbackInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    const-string v1, "CoverManager.DreamyNfcLedCoverController"

    const-string v2, "requestCoverAuthentication : duplicated listener handle"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    .line 515
    return v3

    .line 520
    .end local v0    # "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$AuthCallbackInfo;
    :cond_1
    const/4 v0, 0x0

    .line 521
    .local v0, "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$AuthCallbackInfo;
    :try_start_1
    new-instance v0, Lcom/android/server/cover/DreamyNfcLedCoverController$AuthCallbackInfo;

    .end local v0    # "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$AuthCallbackInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 522
    const/4 v6, 0x4

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    .line 521
    invoke-direct/range {v0 .. v6}, Lcom/android/server/cover/DreamyNfcLedCoverController$AuthCallbackInfo;-><init>(Lcom/android/server/cover/DreamyNfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    .line 523
    .local v0, "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$AuthCallbackInfo;
    const/4 v1, 0x0

    invoke-interface {p3, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 524
    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mCoverAuthCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v9

    .line 527
    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 528
    .local v8, "msg":Landroid/os/Message;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 529
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 530
    const/4 v1, 0x1

    return v1

    .line 510
    .end local v0    # "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$AuthCallbackInfo;
    .end local v7    # "listener$iterator":Ljava/util/Iterator;
    .end local v8    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v9

    throw v1
.end method

.method sendDataToNfcLedCover(I[B)V
    .locals 4
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    .line 215
    iget-boolean v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mIsLedCoverAttached:Z

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/cover/DreamyNfcLedCoverController;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v1

    if-nez v1, :cond_2

    .line 222
    const-string v1, "CoverManager.DreamyNfcLedCoverController"

    const-string v2, "sendDataToLedCover : Nfc Service not available"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void

    .line 217
    :cond_1
    const-string v1, "CoverManager.DreamyNfcLedCoverController"

    const-string v2, "sendDataToLedCover : Not attached LED Cover"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void

    .line 228
    :cond_2
    const/4 v1, -0x1

    if-ne p1, v1, :cond_3

    .line 229
    const-string v1, "CoverManager.DreamyNfcLedCoverController"

    .line 230
    const-string v2, "sendDataToLedCover : command: -1 should not be sent, ignore"

    .line 229
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void

    .line 235
    :cond_3
    const-string v1, "CoverManager.DreamyNfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDataToNfcLedCover: command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v1}, Lcom/android/server/cover/DreamyNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 240
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 241
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 242
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 244
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 245
    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 213
    return-void
.end method

.method public sendPowerKeyToCover()V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->sendEmptyMessage(I)Z

    .line 380
    return-void
.end method

.method public sendSystemEvent(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v9, -0x1

    .line 318
    const-string v8, "event_type"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 319
    .local v0, "event":I
    sparse-switch v0, :sswitch_data_0

    .line 317
    :goto_0
    return-void

    .line 321
    :sswitch_0
    iget-object v7, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v7}, Lcom/android/server/cover/DreamyNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 322
    const-string v7, "lcd_touch_listener_type"

    invoke-virtual {p1, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 323
    .local v6, "touchListenerType":I
    const-string v7, "lcd_touch_listener_respone"

    invoke-virtual {p1, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 324
    .local v5, "response":I
    iget-object v7, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 326
    .local v2, "msg":Landroid/os/Message;
    iput v6, v2, Landroid/os/Message;->arg1:I

    .line 328
    iput v5, v2, Landroid/os/Message;->arg2:I

    .line 329
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 332
    .end local v2    # "msg":Landroid/os/Message;
    .end local v5    # "response":I
    .end local v6    # "touchListenerType":I
    :sswitch_1
    iget-object v7, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 333
    .local v4, "msgLedOffDisabled":Landroid/os/Message;
    iput-object p1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 334
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 337
    .end local v4    # "msgLedOffDisabled":Landroid/os/Message;
    :sswitch_2
    const-string v8, "fota_in_progress"

    invoke-virtual {p1, v8, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 338
    .local v1, "inProgress":Z
    iget-object v8, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v9, 0xd

    invoke-virtual {v8, v9}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 339
    .local v3, "msgFotaInProgress":Landroid/os/Message;
    if-eqz v1, :cond_0

    const/4 v7, 0x1

    :cond_0
    iput v7, v3, Landroid/os/Message;->arg1:I

    .line 340
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 319
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method setFotaInProgress(ZLandroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 12
    .param p1, "inProgress"    # Z
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 571
    iget-object v11, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mFotaInProgressCallbacks:Ljava/util/Queue;

    monitor-enter v11

    .line 572
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mFotaInProgressCallbacks:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "listener$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;

    .line 573
    .local v0, "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;
    if-eqz v0, :cond_0

    .line 574
    iget-object v1, v0, Lcom/android/server/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 575
    const-string v1, "CoverManager.DreamyNfcLedCoverController"

    const-string v2, "setFotaInProgress : duplicated listener handle"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v11

    .line 576
    return v10

    .line 581
    .end local v0    # "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;
    :cond_1
    const/4 v0, 0x0

    .line 582
    .local v0, "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;
    :try_start_1
    new-instance v0, Lcom/android/server/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;

    .end local v0    # "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 583
    const/4 v6, 0x4

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    .line 582
    invoke-direct/range {v0 .. v6}, Lcom/android/server/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;-><init>(Lcom/android/server/cover/DreamyNfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    .line 584
    .local v0, "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;
    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 585
    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mFotaInProgressCallbacks:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v11

    .line 588
    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 589
    .local v8, "msg":Landroid/os/Message;
    if-eqz p1, :cond_2

    move v1, v9

    :goto_0
    iput v1, v8, Landroid/os/Message;->arg1:I

    .line 590
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 591
    return v9

    .line 571
    .end local v0    # "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;
    .end local v7    # "listener$iterator":Ljava/util/Iterator;
    .end local v8    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v11

    throw v1

    .restart local v0    # "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$FotaInProgressCallbackInfo;
    .restart local v7    # "listener$iterator":Ljava/util/Iterator;
    .restart local v8    # "msg":Landroid/os/Message;
    :cond_2
    move v1, v10

    .line 589
    goto :goto_0
.end method

.method public unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x0

    .line 283
    const-string v2, "CoverManager.DreamyNfcLedCoverController"

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

    .line 284
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 283
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 284
    const-string v4, ", uid : "

    .line 283
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 284
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 283
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v3, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 288
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 289
    .local v0, "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    if-eqz v0, :cond_0

    .line 290
    iget-object v2, v0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    const-string v2, "CoverManager.DreamyNfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 293
    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    const/4 v2, 0x1

    monitor-exit v3

    return v2

    .end local v0    # "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    :cond_1
    monitor-exit v3

    .line 299
    const-string v2, "CoverManager.DreamyNfcLedCoverController"

    const-string v3, "UnregisterNfcTouchListener: listener does not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return v5

    .line 287
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method updateNfcLedCoverAttachStateLocked(ZI)V
    .locals 4
    .param p1, "attached"    # Z
    .param p2, "type"    # I

    .prologue
    .line 156
    if-eqz p1, :cond_1

    const/4 v2, 0x7

    if-ne p2, v2, :cond_1

    const/4 v0, 0x1

    .line 157
    .local v0, "isCoverAttached":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mIsLedCoverAttached:Z

    if-eq v2, v0, :cond_0

    .line 158
    iput-boolean v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mIsLedCoverAttached:Z

    .line 159
    iget-boolean v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mIsLedCoverAttached:Z

    if-nez v2, :cond_0

    .line 164
    const-string v2, "CoverManager.DreamyNfcLedCoverController"

    const-string v3, "NfcLedCover detached, start clearing all flags, messages, wakelocks"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 166
    .local v1, "msg":Landroid/os/Message;
    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :goto_1
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 167
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 155
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .line 156
    .end local v0    # "isCoverAttached":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isCoverAttached":Z
    goto :goto_0

    .line 166
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
