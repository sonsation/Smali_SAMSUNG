.class final Lcom/android/server/cover/LedCoverController;
.super Ljava/lang/Object;
.source "LedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cover/LedCoverController$1;,
        Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final LED_COMMAND_ALARM:I = 0xd

.field public static final LED_COMMAND_BATTERY_CHARGING:I = 0xa

.field public static final LED_COMMAND_BATTERY_CHARGING_END:I = 0xb

.field public static final LED_COMMAND_BRIGHTNESS:I = 0x11

.field public static final LED_COMMAND_CALL_END:I = 0xc

.field public static final LED_COMMAND_CLOCK:I = 0x1

.field public static final LED_COMMAND_COLOR:I = 0x10

.field public static final LED_COMMAND_INCOMING_CALL:I = 0x4

.field public static final LED_COMMAND_INDICATOR:I = 0x12

.field public static final LED_COMMAND_LED_OFF:I = 0xf

.field public static final LED_COMMAND_LED_ON:I = 0xe

.field public static final LED_COMMAND_LOW_BATTERY_ALERT:I = 0x7

.field public static final LED_COMMAND_MISSED_CALL_MSG:I = 0x2

.field public static final LED_COMMAND_MUSIC:I = 0x5

.field public static final LED_COMMAND_PEDOMETER:I = 0x8

.field public static final LED_COMMAND_POWER_ON_OFF:I = 0x6

.field public static final LED_COMMAND_REQ_LED_STATUS:I = 0x9

.field public static final LED_COMMAND_VOLUME:I = 0x3

.field private static final MSG_LED_OFF_BY_SELF:I = 0x2

.field private static final MSG_SEND_LED_DATA:I = 0x0

.field private static final MSG_UPDATE_COVER_ATTACH_STATE:I = 0x1

.field private static final SAFE_DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "CoverManager.LedCoverController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCoverColor:I

.field private final mHandler:Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;

.field private mIsLedCoverAttached:Z

.field private mIsLedCoverPowered:Z

.field private mIsLedOn:Z

.field private mLedCoverPowerPath:Ljava/lang/String;

.field private mLedCoverUARTPath:Ljava/lang/String;

.field private mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSerialManager:Landroid/hardware/SerialManager;

.field private mUpdateAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/server/cover/LedCoverController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/cover/LedCoverController;->mCoverColor:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/cover/LedCoverController;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/LedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/cover/LedCoverController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/cover/LedCoverController;->mIsLedOn:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/cover/LedCoverController;I[B)V
    .locals 0
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/LedCoverController;->handleSendDataToLedCover(I[B)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/cover/LedCoverController;Z)V
    .locals 0
    .param p1, "attached"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cover/LedCoverController;->handleUpdateLedCoverAttachState(Z)V

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v2, p0, Lcom/android/server/cover/LedCoverController;->mIsLedCoverPowered:Z

    .line 62
    iput-boolean v2, p0, Lcom/android/server/cover/LedCoverController;->mIsLedCoverAttached:Z

    .line 63
    iput-boolean v2, p0, Lcom/android/server/cover/LedCoverController;->mIsLedOn:Z

    .line 65
    iput v2, p0, Lcom/android/server/cover/LedCoverController;->mCoverColor:I

    .line 229
    new-instance v0, Lcom/android/server/cover/LedCoverController$1;

    invoke-direct {v0, p0}, Lcom/android/server/cover/LedCoverController$1;-><init>(Lcom/android/server/cover/LedCoverController;)V

    iput-object v0, p0, Lcom/android/server/cover/LedCoverController;->mRunnable:Ljava/lang/Runnable;

    .line 94
    iput-object p2, p0, Lcom/android/server/cover/LedCoverController;->mContext:Landroid/content/Context;

    .line 96
    const-string v0, "power"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/cover/LedCoverController;->mPowerManager:Landroid/os/PowerManager;

    .line 97
    new-instance v0, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;-><init>(Lcom/android/server/cover/LedCoverController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cover/LedCoverController;->mHandler:Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;

    .line 98
    iget-object v0, p0, Lcom/android/server/cover/LedCoverController;->mPowerManager:Landroid/os/PowerManager;

    .line 99
    const-string v1, "send leddata"

    .line 98
    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/LedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 100
    iget-object v0, p0, Lcom/android/server/cover/LedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 101
    iget-object v0, p0, Lcom/android/server/cover/LedCoverController;->mPowerManager:Landroid/os/PowerManager;

    .line 102
    const-string v1, "powercontrol ledcover"

    .line 101
    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/LedCoverController;->mUpdateAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 103
    iget-object v0, p0, Lcom/android/server/cover/LedCoverController;->mUpdateAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 104
    iget-object v0, p0, Lcom/android/server/cover/LedCoverController;->mPowerManager:Landroid/os/PowerManager;

    .line 105
    const-string v1, "onoff ledcover"

    .line 104
    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/LedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 106
    iget-object v0, p0, Lcom/android/server/cover/LedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 108
    iget-object v0, p0, Lcom/android/server/cover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/cover/LedCoverController;->initializeCoverControlPath(Landroid/content/Context;)V

    .line 93
    return-void
.end method

.method private declared-synchronized getSerialManager(Landroid/content/Context;)Landroid/hardware/SerialManager;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/LedCoverController;->mSerialManager:Landroid/hardware/SerialManager;

    if-nez v0, :cond_0

    .line 158
    const-string v0, "serial"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SerialManager;

    iput-object v0, p0, Lcom/android/server/cover/LedCoverController;->mSerialManager:Landroid/hardware/SerialManager;

    .line 159
    iget-object v0, p0, Lcom/android/server/cover/LedCoverController;->mSerialManager:Landroid/hardware/SerialManager;

    if-nez v0, :cond_0

    .line 160
    const-string v0, "CoverManager.LedCoverController"

    const-string v1, "warning: no Serial Manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/LedCoverController;->mSerialManager:Landroid/hardware/SerialManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleSendDataToLedCover(I[B)V
    .locals 9
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 417
    array-length v4, p2

    add-int/lit8 v3, v4, 0x5

    .line 418
    .local v3, "size":I
    const-string v4, "CoverManager.LedCoverController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSendDataToLedCover : command : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    new-array v2, v3, [B

    .line 421
    .local v2, "genData":[B
    const/16 v4, 0x10

    aput-byte v4, v2, v8

    .line 422
    int-to-byte v4, v3

    const/4 v5, 0x1

    aput-byte v4, v2, v5

    .line 423
    int-to-byte v4, p1

    const/4 v5, 0x2

    aput-byte v4, v2, v5

    .line 424
    add-int/lit8 v4, v3, -0x5

    const/4 v5, 0x3

    invoke-static {p2, v8, v2, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 425
    add-int/lit8 v4, v3, -0x1

    add-int/lit8 v5, v3, -0x2

    aput-byte v7, v2, v5

    aput-byte v7, v2, v4

    .line 428
    :try_start_0
    iget-object v4, p0, Lcom/android/server/cover/LedCoverController;->mLedCoverUARTPath:Ljava/lang/String;

    invoke-direct {p0, v4, v2}, Lcom/android/server/cover/LedCoverController;->writeDataViaSerial(Ljava/lang/String;[B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 429
    const-string v4, "CoverManager.LedCoverController"

    const-string v5, "sendData success"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/cover/LedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 438
    iget-object v4, p0, Lcom/android/server/cover/LedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 416
    :cond_0
    :goto_1
    return-void

    .line 431
    :cond_1
    :try_start_2
    const-string v4, "CoverManager.LedCoverController"

    const-string v5, "sendData fail"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 440
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 441
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1
.end method

.method private handleUpdateLedCoverAttachState(Z)V
    .locals 6
    .param p1, "attached"    # Z

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/android/server/cover/LedCoverController;->powerControlLedCover(Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/cover/LedCoverController;->mIsLedCoverPowered:Z

    .line 208
    iget-boolean v1, p0, Lcom/android/server/cover/LedCoverController;->mIsLedCoverAttached:Z

    if-eqz v1, :cond_3

    .line 209
    const-string v1, "CoverManager.LedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUpdateLedCoverAttachState : cover color : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/cover/LedCoverController;->mCoverColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v1, p0, Lcom/android/server/cover/LedCoverController;->mHandler:Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;

    iget-object v2, p0, Lcom/android/server/cover/LedCoverController;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/android/server/cover/LedCoverController;->mHandler:Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;

    iget-object v2, p0, Lcom/android/server/cover/LedCoverController;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/LedCoverController;->mHandler:Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;

    iget-object v2, p0, Lcom/android/server/cover/LedCoverController;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 221
    :cond_1
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/LedCoverController;->mUpdateAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 222
    iget-object v1, p0, Lcom/android/server/cover/LedCoverController;->mUpdateAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_2
    :goto_1
    return-void

    .line 215
    :cond_3
    iget-object v1, p0, Lcom/android/server/cover/LedCoverController;->mHandler:Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;

    iget-object v2, p0, Lcom/android/server/cover/LedCoverController;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    iget-object v1, p0, Lcom/android/server/cover/LedCoverController;->mHandler:Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;

    iget-object v2, p0, Lcom/android/server/cover/LedCoverController;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1
.end method

.method private initializeCoverControlPath(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 167
    iget-object v0, p0, Lcom/android/server/cover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportLEDCoverQCOM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const-string v0, "/sys/class/sec/expander/expgpio"

    iput-object v0, p0, Lcom/android/server/cover/LedCoverController;->mLedCoverPowerPath:Ljava/lang/String;

    .line 169
    const-string v0, "/dev/ttyHSL1"

    iput-object v0, p0, Lcom/android/server/cover/LedCoverController;->mLedCoverUARTPath:Ljava/lang/String;

    .line 166
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportLEDCoverLSI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    const-string v0, "/sys/class/sec/ledcover/cover_pwr"

    iput-object v0, p0, Lcom/android/server/cover/LedCoverController;->mLedCoverPowerPath:Ljava/lang/String;

    .line 172
    const-string v0, "/dev/ttySAC2"

    iput-object v0, p0, Lcom/android/server/cover/LedCoverController;->mLedCoverUARTPath:Ljava/lang/String;

    goto :goto_0

    .line 174
    :cond_1
    iput-object v1, p0, Lcom/android/server/cover/LedCoverController;->mLedCoverPowerPath:Ljava/lang/String;

    .line 175
    iput-object v1, p0, Lcom/android/server/cover/LedCoverController;->mLedCoverUARTPath:Ljava/lang/String;

    goto :goto_0
.end method

.method private powerControlLedCover(Z)Z
    .locals 10
    .param p1, "attached"    # Z

    .prologue
    const/4 v9, 0x0

    .line 239
    const-string v6, "CoverManager.LedCoverController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "powerControlLedCover : attached="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v6, p0, Lcom/android/server/cover/LedCoverController;->mLedCoverPowerPath:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 241
    const-string v6, "CoverManager.LedCoverController"

    const-string v7, "There is no node for power control"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return v9

    .line 245
    :cond_0
    const/4 v3, 0x0

    .line 246
    .local v3, "out":Ljava/io/FileOutputStream;
    iget-object v5, p0, Lcom/android/server/cover/LedCoverController;->mLedCoverPowerPath:Ljava/lang/String;

    .line 247
    .local v5, "powerPath":Ljava/lang/String;
    if-eqz v5, :cond_9

    .line 249
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    if-eqz p1, :cond_4

    .line 252
    :try_start_1
    const-string v6, "/sys/class/sec/expander/expgpio"

    if-ne v5, v6, :cond_2

    .line 253
    const-string v6, "o 2 1"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 257
    :goto_0
    const/4 v6, 0x1

    .line 274
    if-eqz v4, :cond_1

    .line 275
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 257
    :cond_1
    :goto_1
    return v6

    .line 255
    :cond_2
    :try_start_3
    const-string v6, "val_on"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    move-object v3, v4

    .line 267
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 274
    if-eqz v3, :cond_3

    .line 275
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 268
    :cond_3
    :goto_3
    return v9

    .line 277
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 278
    .local v1, "err":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 259
    .end local v1    # "err":Ljava/io/IOException;
    :cond_4
    :try_start_6
    const-string v6, "/sys/class/sec/expander/expgpio"

    if-ne v5, v6, :cond_6

    .line 260
    const-string v6, "o 2 0"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 274
    :goto_4
    if-eqz v4, :cond_5

    .line 275
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 264
    :cond_5
    :goto_5
    return v9

    .line 262
    :cond_6
    :try_start_8
    const-string v6, "val_off"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    .line 269
    :catch_2
    move-exception v2

    .local v2, "ioe":Ljava/io/IOException;
    move-object v3, v4

    .line 270
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :goto_6
    :try_start_9
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 274
    if-eqz v3, :cond_7

    .line 275
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 271
    :cond_7
    :goto_7
    return v9

    .line 277
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    .line 278
    .restart local v1    # "err":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 277
    .end local v1    # "err":Ljava/io/IOException;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "ioe":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 278
    .restart local v1    # "err":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 277
    .end local v1    # "err":Ljava/io/IOException;
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v1

    .line 278
    .restart local v1    # "err":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 272
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "err":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 274
    :goto_8
    if-eqz v3, :cond_8

    .line 275
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 272
    :cond_8
    :goto_9
    throw v6

    .line 277
    :catch_6
    move-exception v1

    .line 278
    .restart local v1    # "err":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 282
    .end local v1    # "err":Ljava/io/IOException;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :cond_9
    return v9

    .line 272
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    goto :goto_8

    .line 266
    .local v3, "out":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    goto :goto_2

    .line 269
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_8
    move-exception v2

    .restart local v2    # "ioe":Ljava/io/IOException;
    goto :goto_6
.end method

.method private writeDataViaSerial(Ljava/lang/String;[B)Z
    .locals 10
    .param p1, "uartPath"    # Ljava/lang/String;
    .param p2, "outbuf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 446
    iget-object v6, p0, Lcom/android/server/cover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/android/server/cover/LedCoverController;->getSerialManager(Landroid/content/Context;)Landroid/hardware/SerialManager;

    move-result-object v4

    .line 447
    .local v4, "serialManager":Landroid/hardware/SerialManager;
    const/4 v5, 0x0

    .line 448
    .local v5, "serialPort":Landroid/hardware/SerialPort;
    array-length v6, p2

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 451
    .local v0, "bBuffer":Ljava/nio/ByteBuffer;
    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    .line 453
    :try_start_0
    invoke-virtual {v4}, Landroid/hardware/SerialManager;->getSerialPorts()[Ljava/lang/String;

    move-result-object v3

    .line 454
    .local v3, "ports":[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v6, v3

    if-lez v6, :cond_0

    .line 455
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v3

    if-ge v2, v6, :cond_1

    .line 456
    const-string v6, "CoverManager.LedCoverController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "port["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 459
    .end local v2    # "i":I
    :cond_0
    const-string v6, "CoverManager.LedCoverController"

    const-string v7, "ports is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_1
    const v6, 0x1c200

    invoke-virtual {v4, p1, v6}, Landroid/hardware/SerialManager;->openSerialPort(Ljava/lang/String;I)Landroid/hardware/SerialPort;

    move-result-object v5

    .line 464
    .end local v3    # "ports":[Ljava/lang/String;
    .end local v5    # "serialPort":Landroid/hardware/SerialPort;
    :cond_2
    if-eqz v5, :cond_3

    .line 465
    const-string v6, "CoverManager.LedCoverController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "serialPort.getName() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/hardware/SerialPort;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    array-length v7, p2

    invoke-virtual {v5, v6, v7}, Landroid/hardware/SerialPort;->write(Ljava/nio/ByteBuffer;I)V

    .line 467
    invoke-virtual {v5}, Landroid/hardware/SerialPort;->close()V

    .line 476
    const/4 v6, 0x1

    return v6

    .line 469
    :cond_3
    const-string v6, "CoverManager.LedCoverController"

    const-string v7, "serialPort isn\'t available"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    return v9

    .line 472
    :catch_0
    move-exception v1

    .line 473
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 474
    return v9
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 480
    const-string v0, " Current LedCoverController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    const-string v0, "  mIsLEDCoverPowered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/cover/LedCoverController;->mIsLedCoverPowered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 482
    const-string v0, "  mIsLEDCoverAttached="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/cover/LedCoverController;->mIsLedCoverAttached:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 483
    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    return-void
.end method

.method isCoverAttached()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/server/cover/LedCoverController;->mIsLedCoverAttached:Z

    return v0
.end method

.method isCoverPowered()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/server/cover/LedCoverController;->mIsLedCoverPowered:Z

    return v0
.end method

.method sendDataToLedCover(I[B)Z
    .locals 6
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 286
    iget-object v3, p0, Lcom/android/server/cover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/cover/Feature;->isSupportLEDCover()Z

    move-result v3

    if-nez v3, :cond_0

    .line 288
    const-string v3, "CoverManager.LedCoverController"

    const-string v4, "sendDataToLedCover : Not support LED Cover"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return v5

    .line 293
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/cover/LedCoverController;->mIsLedCoverAttached:Z

    if-nez v3, :cond_1

    .line 295
    const-string v3, "CoverManager.LedCoverController"

    const-string v4, "sendDataToLedCover : Not attached LED Cover"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return v5

    .line 300
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/cover/LedCoverController;->mIsLedCoverPowered:Z

    if-nez v3, :cond_2

    .line 302
    const-string v3, "CoverManager.LedCoverController"

    const-string v4, "sendDataToLedCover : Not Powered LED Cover"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return v5

    .line 308
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/LedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_3

    .line 309
    iget-object v3, p0, Lcom/android/server/cover/LedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :cond_3
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 316
    .local v1, "msg":Landroid/os/Message;
    iput v5, v1, Landroid/os/Message;->what:I

    .line 317
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 318
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 319
    iget-object v3, p0, Lcom/android/server/cover/LedCoverController;->mHandler:Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 321
    const/16 v3, 0xf

    if-ne p1, v3, :cond_5

    iget-object v3, p0, Lcom/android/server/cover/LedCoverController;->mHandler:Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;

    invoke-virtual {v3, v4}, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 322
    iget-object v3, p0, Lcom/android/server/cover/LedCoverController;->mHandler:Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;

    invoke-virtual {v3, v4}, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->removeMessages(I)V

    .line 324
    :try_start_1
    iget-object v3, p0, Lcom/android/server/cover/LedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 325
    iget-object v3, p0, Lcom/android/server/cover/LedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 371
    :cond_4
    :goto_1
    const/4 v3, 0x1

    return v3

    .line 311
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 327
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v1    # "msg":Landroid/os/Message;
    :catch_1
    move-exception v0

    .line 328
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 330
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_5
    const/16 v3, 0x9

    if-eq p1, v3, :cond_4

    .line 331
    const/4 v3, 0x4

    if-eq p1, v3, :cond_4

    const/16 v3, 0x12

    if-eq p1, v3, :cond_4

    .line 336
    :try_start_2
    iget-object v3, p0, Lcom/android/server/cover/LedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_6

    .line 337
    iget-object v3, p0, Lcom/android/server/cover/LedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 343
    :cond_6
    :goto_2
    const/16 v3, 0xe

    if-eq p1, v3, :cond_4

    .line 344
    iget-object v3, p0, Lcom/android/server/cover/LedCoverController;->mHandler:Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;

    invoke-virtual {v3, v4}, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 345
    iget-object v3, p0, Lcom/android/server/cover/LedCoverController;->mHandler:Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;

    invoke-virtual {v3, v4}, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->removeMessages(I)V

    .line 348
    :cond_7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 349
    .local v2, "msgLedOff":Landroid/os/Message;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 350
    iput v4, v2, Landroid/os/Message;->what:I

    .line 352
    sparse-switch p1, :sswitch_data_0

    .line 366
    iget-object v3, p0, Lcom/android/server/cover/LedCoverController;->mHandler:Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 339
    .end local v2    # "msgLedOff":Landroid/os/Message;
    :catch_2
    move-exception v0

    .line 340
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    .line 354
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v2    # "msgLedOff":Landroid/os/Message;
    :sswitch_0
    iget-object v3, p0, Lcom/android/server/cover/LedCoverController;->mHandler:Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;

    const-wide/16 v4, 0xdac

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 358
    :sswitch_1
    iget-object v3, p0, Lcom/android/server/cover/LedCoverController;->mHandler:Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;

    const-wide/16 v4, 0x2328

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 362
    :sswitch_2
    iget-object v3, p0, Lcom/android/server/cover/LedCoverController;->mHandler:Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 352
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0xd -> :sswitch_2
    .end sparse-switch
.end method

.method public sendPowerKeyToCover()V
    .locals 14

    .prologue
    .line 375
    const/4 v10, 0x1

    new-array v5, v10, [B

    .line 376
    .local v5, "data":[B
    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-byte v10, v5, v11

    .line 378
    iget-boolean v10, p0, Lcom/android/server/cover/LedCoverController;->mIsLedOn:Z

    if-eqz v10, :cond_0

    .line 380
    const-string v10, "CoverManager.LedCoverController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mIsLedOn : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/server/cover/LedCoverController;->mIsLedOn:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". should be off"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/16 v10, 0xf

    invoke-virtual {p0, v10, v5}, Lcom/android/server/cover/LedCoverController;->sendDataToLedCover(I[B)Z

    .line 374
    :goto_0
    return-void

    .line 384
    :cond_0
    const-string v10, "CoverManager.LedCoverController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mIsLedOn : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/server/cover/LedCoverController;->mIsLedOn:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". should be on"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/4 v4, 0x0

    .line 386
    .local v4, "curTimeStr":Ljava/lang/String;
    const/4 v7, 0x0

    .line 388
    .local v7, "locale":Ljava/util/Locale;
    iget-object v10, p0, Lcom/android/server/cover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 389
    .local v0, "bIs24HTime":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 390
    .local v2, "curTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 391
    .local v1, "c":Ljava/util/Calendar;
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 393
    const/16 v10, 0xb

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 394
    .local v6, "hours":I
    const/16 v10, 0xc

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 396
    .local v8, "minutes":I
    if-eqz v0, :cond_1

    .line 398
    const-string v10, "%02d:%02d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    invoke-static {v7, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 407
    .local v4, "curTimeStr":Ljava/lang/String;
    :goto_1
    const-string v10, "CoverManager.LedCoverController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sendPowerKeyToCover : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 411
    .local v9, "timeData":[B
    const/4 v10, 0x1

    invoke-virtual {p0, v10, v9}, Lcom/android/server/cover/LedCoverController;->sendDataToLedCover(I[B)Z

    .line 412
    const/16 v10, 0xe

    invoke-virtual {p0, v10, v5}, Lcom/android/server/cover/LedCoverController;->sendDataToLedCover(I[B)Z

    goto/16 :goto_0

    .line 400
    .end local v9    # "timeData":[B
    .local v4, "curTimeStr":Ljava/lang/String;
    :cond_1
    rem-int/lit8 v6, v6, 0xc

    .line 401
    if-nez v6, :cond_2

    .line 402
    const/16 v6, 0xc

    .line 405
    :cond_2
    const-string v10, "%2d:%02d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    invoke-static {v7, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "curTimeStr":Ljava/lang/String;
    goto :goto_1
.end method

.method updateLedCoverAttachStateLocked(ZII)V
    .locals 5
    .param p1, "attached"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I

    .prologue
    const/4 v3, 0x1

    .line 180
    iget-object v4, p0, Lcom/android/server/cover/LedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/cover/Feature;->isSupportLEDCover()Z

    move-result v4

    if-nez v4, :cond_0

    .line 182
    const-string v3, "CoverManager.LedCoverController"

    const-string v4, "updateLedCoverAttachStateLocked : Not support LED Cover"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void

    .line 186
    :cond_0
    if-eqz p1, :cond_4

    .line 187
    const/4 v4, 0x7

    if-ne p2, v4, :cond_3

    const/4 v1, 0x1

    .line 188
    .local v1, "isCoverAttached":Z
    :goto_0
    iput p3, p0, Lcom/android/server/cover/LedCoverController;->mCoverColor:I

    .line 189
    iget-boolean v4, p0, Lcom/android/server/cover/LedCoverController;->mIsLedCoverAttached:Z

    if-eq v4, v1, :cond_2

    .line 191
    :try_start_0
    iget-object v4, p0, Lcom/android/server/cover/LedCoverController;->mUpdateAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-nez v4, :cond_1

    .line 192
    iget-object v4, p0, Lcom/android/server/cover/LedCoverController;->mUpdateAttachStateWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_1
    :goto_1
    iput-boolean v1, p0, Lcom/android/server/cover/LedCoverController;->mIsLedCoverAttached:Z

    .line 199
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 200
    .local v2, "msg":Landroid/os/Message;
    iput v3, v2, Landroid/os/Message;->what:I

    .line 201
    iget-boolean v4, p0, Lcom/android/server/cover/LedCoverController;->mIsLedCoverAttached:Z

    if-eqz v4, :cond_5

    :goto_2
    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 202
    iget-object v3, p0, Lcom/android/server/cover/LedCoverController;->mHandler:Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 179
    .end local v2    # "msg":Landroid/os/Message;
    :cond_2
    return-void

    .line 187
    .end local v1    # "isCoverAttached":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "isCoverAttached":Z
    goto :goto_0

    .line 186
    .end local v1    # "isCoverAttached":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "isCoverAttached":Z
    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 201
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v2    # "msg":Landroid/os/Message;
    :cond_5
    const/4 v3, 0x0

    goto :goto_2
.end method
