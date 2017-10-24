.class final Lcom/android/server/cover/DreamyNfcLedCoverController;
.super Lcom/android/server/cover/BaseNfcLedCoverController;
.source "DreamyNfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;,
        Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    }
.end annotation


# static fields
.field protected static final CMD_LED_FACTORY_MODE:I = 0x70

.field static final CMD_START_LED_COVER_SERVICE_APP:I = -0x1

.field private static final MAX_FACTORY_MODE_ENQUEUE_COMMANDS:I = 0x3

.field private static final MSG_COVER_ATTACH_STATE:I = 0x5

.field private static final MSG_LCD_OFF_DISABLED_BY_COVER:I = 0x9

.field private static final MSG_LED_NOTIFICATION_ADD:I = 0x6

.field private static final MSG_LED_NOTIFICATION_REMOVE:I = 0x7

.field private static final MSG_NFC_LED_HANDLE_EVENT_RESPONSE:I = 0x3

.field private static final MSG_SEND_NFC_LED_DATA:I = 0x0

.field private static final MSG_SEND_POWER_KEY_TO_COVER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CoverManager.DreamyNfcLedCoverController"


# instance fields
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

.field private mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/server/cover/DreamyNfcLedCoverController;)Ljava/util/ArrayList;
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

.method static synthetic -wrap4(Lcom/android/server/cover/DreamyNfcLedCoverController;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cover/DreamyNfcLedCoverController;->handleRemoveLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/cover/DreamyNfcLedCoverController;I[B)V
    .locals 0
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/DreamyNfcLedCoverController;->handleSendDataToNfcLedCover(I[B)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/cover/DreamyNfcLedCoverController;)V
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

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/BaseNfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mEnquedFactoryCommands:Ljava/util/ArrayDeque;

    .line 80
    new-instance v0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;-><init>(Lcom/android/server/cover/DreamyNfcLedCoverController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 81
    iget-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    .line 82
    const-string/jumbo v1, "send leddata"

    .line 81
    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 83
    iget-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 84
    iget-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    .line 85
    const-string/jumbo v1, "touchResponse ledcover"

    .line 84
    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 86
    iget-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 74
    return-void
.end method

.method private handleAddLedNotification(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 306
    const/4 v0, 0x2

    .line 308
    .local v0, "event":I
    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 309
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

    .line 310
    .local v1, "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v1, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 311
    invoke-virtual {v1, v0, p1}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 308
    .end local v1    # "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 305
    return-void
.end method

.method private handleCoverDetachedLocked()V
    .locals 2

    .prologue
    .line 150
    const-string/jumbo v0, "CoverManager.DreamyNfcLedCoverController"

    const-string/jumbo v1, "handleCoverDetached()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 149
    :cond_1
    return-void
.end method

.method private handleEventResponse(II)V
    .locals 6
    .param p1, "eventType"    # I
    .param p2, "eventAction"    # I

    .prologue
    .line 386
    const-string/jumbo v3, "CoverManager.DreamyNfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "HandleEventResponse: type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    packed-switch p2, :pswitch_data_0

    .line 440
    const-string/jumbo v3, "CoverManager.DreamyNfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown event action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 445
    iget-object v3, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_7

    .line 385
    :cond_0
    :goto_1
    return-void

    .line 390
    :pswitch_0
    const-string/jumbo v3, "CoverManager.DreamyNfcLedCoverController"

    const-string/jumbo v4, "Event touch: accept"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 392
    :try_start_1
    iget-object v3, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "info$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 393
    .local v1, "info":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v1, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v3, :cond_1

    .line 394
    invoke-virtual {v1}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTouchAccept()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 391
    .end local v1    # "info":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v2    # "info$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "info$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit v4

    goto :goto_0

    .line 400
    .end local v2    # "info$iterator":Ljava/util/Iterator;
    :pswitch_1
    const-string/jumbo v3, "CoverManager.DreamyNfcLedCoverController"

    const-string/jumbo v4, "Event touch: reject"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 402
    :try_start_2
    iget-object v3, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "info$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 403
    .restart local v1    # "info":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v1, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v3, :cond_3

    .line 404
    invoke-virtual {v1}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTouchReject()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 401
    .end local v1    # "info":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v2    # "info$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 410
    :pswitch_2
    const-string/jumbo v3, "CoverManager.DreamyNfcLedCoverController"

    const-string/jumbo v4, "Event touch: tap left"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 412
    :try_start_3
    iget-object v3, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "info$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 413
    .restart local v1    # "info":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v1, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v3, :cond_4

    .line 414
    invoke-virtual {v1}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTapLeft()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    .line 411
    .end local v1    # "info":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v2    # "info$iterator":Ljava/util/Iterator;
    :catchall_2
    move-exception v3

    monitor-exit v4

    throw v3

    .line 420
    :pswitch_3
    const-string/jumbo v3, "CoverManager.DreamyNfcLedCoverController"

    const-string/jumbo v4, "Event touch: tap middle"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 422
    :try_start_4
    iget-object v3, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "info$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 423
    .restart local v1    # "info":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v1, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v3, :cond_5

    .line 424
    invoke-virtual {v1}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTapMid()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_5

    .line 421
    .end local v1    # "info":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v2    # "info$iterator":Ljava/util/Iterator;
    :catchall_3
    move-exception v3

    monitor-exit v4

    throw v3

    .line 430
    :pswitch_4
    const-string/jumbo v3, "CoverManager.DreamyNfcLedCoverController"

    const-string/jumbo v4, "Event touch: tap right"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 432
    :try_start_5
    iget-object v3, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "info$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 433
    .restart local v1    # "info":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v1, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v3, :cond_6

    .line 434
    invoke-virtual {v1}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTapRight()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_6

    .line 431
    .end local v1    # "info":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v2    # "info$iterator":Ljava/util/Iterator;
    :catchall_4
    move-exception v3

    monitor-exit v4

    throw v3

    .line 446
    :cond_7
    :try_start_6
    iget-object v3, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_1

    .line 388
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
    .line 330
    const/4 v0, 0x4

    .line 332
    .local v0, "event":I
    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 333
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

    .line 334
    .local v1, "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v1, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 335
    invoke-virtual {v1, v0, p1}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 332
    .end local v1    # "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 329
    return-void
.end method

.method private handleRemoveLedNotification(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 318
    const/4 v0, 0x3

    .line 320
    .local v0, "event":I
    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 321
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

    .line 322
    .local v1, "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v1, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 323
    invoke-virtual {v1, v0, p1}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 320
    .end local v1    # "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 317
    return-void
.end method

.method private handleSendDataToNfcLedCover(I[B)V
    .locals 8
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    .line 355
    const/4 v1, 0x5

    .line 356
    .local v1, "event":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 357
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v5, "send_command_id"

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 358
    const-string/jumbo v5, "send_command_content"

    invoke-virtual {v0, v5, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 360
    const/4 v2, 0x0

    .line 361
    .local v2, "isLedCoverServiceRegistered":Z
    iget-object v6, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 362
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

    .line 363
    .local v3, "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v5, v3, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v7, 0x4

    if-ne v5, v7, :cond_0

    .line 364
    invoke-virtual {v3, v1, v0}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    const/4 v2, 0x1

    goto :goto_0

    .end local v3    # "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    :cond_1
    monitor-exit v6

    .line 369
    if-nez v2, :cond_3

    const/16 v5, 0x70

    if-ne p1, v5, :cond_3

    .line 370
    const-string/jumbo v5, "CoverManager.DreamyNfcLedCoverController"

    .line 371
    const-string/jumbo v6, "LedCoverService did not finished initalizing, enqueue this factory command"

    .line 370
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v5, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mEnquedFactoryCommands:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->size()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_2

    .line 375
    iget-object v5, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mEnquedFactoryCommands:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 377
    :cond_2
    iget-object v5, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mEnquedFactoryCommands:Ljava/util/ArrayDeque;

    invoke-virtual {v5, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 379
    :cond_3
    iget-object v5, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 380
    iget-object v5, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 354
    :cond_4
    :goto_1
    return-void

    .line 361
    .end local v4    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 381
    .restart local v4    # "listener$iterator":Ljava/util/Iterator;
    :cond_5
    iget-object v5, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1
.end method

.method private handleSendPowerKeyToCover()V
    .locals 0

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/android/server/cover/DreamyNfcLedCoverController;->notifyPowerButtonPressListeners()V

    .line 348
    return-void
.end method

.method private notifyPowerButtonPressListeners()V
    .locals 6

    .prologue
    .line 460
    const/4 v0, 0x1

    .line 462
    .local v0, "event":I
    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 463
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

    .line 464
    .local v1, "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v1, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 465
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 462
    .end local v1    # "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 459
    return-void
.end method


# virtual methods
.method public addLedNotification(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 268
    const-string/jumbo v1, "CoverManager.DreamyNfcLedCoverController"

    const-string/jumbo v2, "addLedNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 270
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 271
    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 267
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 594
    const-string/jumbo v2, " Current NfcLedCoverController state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 595
    const-string/jumbo v2, "  mIsLEDCoverAttached="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 596
    iget-boolean v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mIsLedCoverAttached:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 597
    const-string/jumbo v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    const-string/jumbo v2, " Current NFC Callback state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 601
    iget-object v3, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 602
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  Live callbacks ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "):"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 603
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

    .line 604
    .local v0, "info":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    if-eqz v0, :cond_0

    .line 605
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " (pid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 606
    const-string/jumbo v4, " type="

    .line 605
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 606
    iget v4, v0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 605
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 606
    const-string/jumbo v4, ")"

    .line 605
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 601
    .end local v0    # "info":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 609
    .restart local v1    # "info$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    const-string/jumbo v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 593
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
    const/4 v4, 0x5

    .line 210
    const-string/jumbo v1, "CoverManager.DreamyNfcLedCoverController"

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerNfcTouchListenerCallback: binder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 212
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 211
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 212
    const-string/jumbo v3, ", uid : "

    .line 211
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 212
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 211
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 213
    const-string/jumbo v3, ", type : "

    .line 211
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    if-ltz p1, :cond_0

    if-le p1, v4, :cond_1

    .line 217
    :cond_0
    const-string/jumbo v1, "CoverManager.DreamyNfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported touch listener type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void

    .line 221
    :cond_1
    iget-object v10, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v10

    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "listener$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 223
    .local v0, "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    if-eqz v0, :cond_2

    .line 224
    iget-object v1, v0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 225
    const-string/jumbo v1, "CoverManager.DreamyNfcLedCoverController"

    const-string/jumbo v2, "sendDataToNfcLedCover : duplicated listener handle"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    .line 226
    return-void

    .line 231
    .end local v0    # "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    :cond_3
    const/4 v0, 0x0

    .line 232
    .local v0, "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    :try_start_1
    new-instance v0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;

    .end local v0    # "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 233
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v6, p1

    .line 232
    invoke-direct/range {v0 .. v6}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;-><init>(Lcom/android/server/cover/DreamyNfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    .line 234
    .local v0, "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 235
    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    .line 237
    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mEnquedFactoryCommands:Ljava/util/ArrayDeque;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "args$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 238
    .local v7, "args":Landroid/os/Bundle;
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v7}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 221
    .end local v0    # "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v7    # "args":Landroid/os/Bundle;
    .end local v8    # "args$iterator":Ljava/util/Iterator;
    .end local v9    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v10

    throw v1

    .line 240
    .restart local v0    # "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    .restart local v8    # "args$iterator":Ljava/util/Iterator;
    .restart local v9    # "listener$iterator":Ljava/util/Iterator;
    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mEnquedFactoryCommands:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v8    # "args$iterator":Ljava/util/Iterator;
    :cond_5
    monitor-exit v10

    .line 208
    return-void
.end method

.method public removeLedNotification(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 275
    const-string/jumbo v1, "CoverManager.DreamyNfcLedCoverController"

    const-string/jumbo v2, "removeLedNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 277
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 278
    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 274
    return-void
.end method

.method sendDataToNfcLedCover(I[B)V
    .locals 7
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    .line 164
    iget-boolean v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mIsLedCoverAttached:Z

    if-nez v4, :cond_0

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 169
    :cond_0
    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/server/cover/DreamyNfcLedCoverController;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v4

    if-nez v4, :cond_2

    .line 171
    const-string/jumbo v4, "CoverManager.DreamyNfcLedCoverController"

    const-string/jumbo v5, "sendDataToLedCover : Nfc Service not available"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void

    .line 166
    :cond_1
    const-string/jumbo v4, "CoverManager.DreamyNfcLedCoverController"

    const-string/jumbo v5, "sendDataToLedCover : Not attached LED Cover"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void

    .line 177
    :cond_2
    const/4 v4, -0x1

    if-ne p1, v4, :cond_3

    .line 178
    const-string/jumbo v4, "CoverManager.DreamyNfcLedCoverController"

    .line 179
    const-string/jumbo v5, "sendDataToLedCover : command: -1 should not be sent, ignore"

    .line 178
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void

    .line 184
    :cond_3
    const-string/jumbo v4, "CoverManager.DreamyNfcLedCoverController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendDataToNfcLedCover: command: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :try_start_0
    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-nez v4, :cond_4

    .line 191
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 192
    .local v2, "identity":J
    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 193
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v2    # "identity":J
    :cond_4
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 200
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 201
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 203
    const/4 v4, 0x0

    iput v4, v1, Landroid/os/Message;->what:I

    .line 204
    iget-object v4, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v4, v1}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 162
    return-void

    .line 195
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendPowerKeyToCover()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->sendEmptyMessage(I)Z

    .line 341
    return-void
.end method

.method public sendSystemEvent(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, -0x1

    .line 282
    const-string/jumbo v5, "event_type"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 283
    .local v0, "event":I
    packed-switch v0, :pswitch_data_0

    .line 281
    :goto_0
    return-void

    .line 285
    :pswitch_0
    iget-object v5, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_0

    .line 286
    iget-object v5, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 288
    :cond_0
    const-string/jumbo v5, "lcd_touch_listener_type"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 289
    .local v4, "touchListenerType":I
    const-string/jumbo v5, "lcd_touch_listener_respone"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 290
    .local v3, "response":I
    iget-object v5, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 292
    .local v1, "msg":Landroid/os/Message;
    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 294
    iput v3, v1, Landroid/os/Message;->arg2:I

    .line 295
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 298
    .end local v1    # "msg":Landroid/os/Message;
    .end local v3    # "response":I
    .end local v4    # "touchListenerType":I
    :pswitch_1
    iget-object v5, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 299
    .local v2, "msgLedOffDisabled":Landroid/os/Message;
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 300
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x0

    .line 247
    const-string/jumbo v2, "CoverManager.DreamyNfcLedCoverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unRegisterNfcTouchListenerCallback: binder = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", pid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 248
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 247
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 248
    const-string/jumbo v4, ", uid : "

    .line 247
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 248
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 247
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v3, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 252
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

    .line 253
    .local v0, "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    if-eqz v0, :cond_0

    .line 254
    iget-object v2, v0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    const-string/jumbo v2, "CoverManager.DreamyNfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 257
    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    const/4 v2, 0x1

    monitor-exit v3

    return v2

    .end local v0    # "listener":Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedTouchListenerInfo;
    :cond_1
    monitor-exit v3

    .line 263
    const-string/jumbo v2, "CoverManager.DreamyNfcLedCoverController"

    const-string/jumbo v3, "UnregisterNfcTouchListener: listener does not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return v5

    .line 251
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method updateNfcLedCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V
    .locals 4
    .param p1, "attached"    # Z
    .param p2, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 128
    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    .line 129
    .local v0, "isCoverAttached":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mIsLedCoverAttached:Z

    if-eq v2, v0, :cond_0

    .line 130
    iput-boolean v0, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mIsLedCoverAttached:Z

    .line 131
    iget-boolean v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mIsLedCoverAttached:Z

    if-nez v2, :cond_0

    .line 136
    const-string/jumbo v2, "CoverManager.DreamyNfcLedCoverController"

    const-string/jumbo v3, "NfcLedCover detached, start clearing all flags, messages, wakelocks"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 138
    .local v1, "msg":Landroid/os/Message;
    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :goto_1
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 139
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController;->mHandler:Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 127
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .line 128
    .end local v0    # "isCoverAttached":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isCoverAttached":Z
    goto :goto_0

    .line 138
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
