.class final Lcom/android/server/cover/NfcLedCoverController;
.super Lcom/android/server/cover/BaseNfcLedCoverController;
.source "NfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;,
        Lcom/android/server/cover/NfcLedCoverController$Command;,
        Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;,
        Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    }
.end annotation


# static fields
.field private static final CMD_LED_BATTERY_CHARGING_WIRELESS_DELAY:J = 0x96L

.field private static final CMD_LED_CALL_INPROGRESS:I = 0xfffe

.field private static final CMD_LED_CLEAR_ONGOING_EVENT:I = 0xfff0

.field private static final CMD_LED_CLOCK_TIME_TICK:I = 0xffff

.field private static final LED_COVER_RETRY_COUNT_MAX:I = 0xd

.field private static final LED_COVER_RETRY_DELAY:J = 0x1f4L

.field private static final LED_COVER_RETRY_DONE_INTENT_ACTION:Ljava/lang/String; = "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

.field private static final MSG_CLEAR_ONGOING_EVENT:I = 0x5

.field private static final MSG_COVER_ATTACH_STATE:I = 0x7

.field private static final MSG_LCD_OFF_DISABLED_BY_COVER:I = 0xa

.field private static final MSG_LED_NOTIFICATION_ADD:I = 0x8

.field private static final MSG_LED_NOTIFICATION_REMOVE:I = 0x9

.field private static final MSG_LED_OFF_BY_SELF:I = 0x1

.field private static final MSG_NFC_LED_HANDLE_EVENT_RESPONSE:I = 0x3

.field private static final MSG_NFC_LED_POLL_EVENT_TOUCH:I = 0x2

.field private static final MSG_SEND_NFC_LED_DATA:I = 0x0

.field private static final MSG_SEND_NFC_LED_DATA_DELAYED:I = 0x4

.field private static final MSG_SEND_POWER_KEY_TO_COVER:I = 0x6

.field private static final RESPONSE_COMMAND_POS:I = 0x3

.field private static final RESPONSE_LEN_POS:I = 0x1

.field private static final RESPONSE_STATUS_POS:I = 0x2

.field private static final SYSTEM_EVENT_KEY_TYPE:Ljava/lang/String; = "event_type"

.field private static final SYSTEM_EVENT_TOUCH_RESPONSE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CoverManager.NfcLedCoverController"

.field private static TEST:I

.field private static final mResponsePattern:[B


# instance fields
.field private mCallDurationTimer:Ljava/util/Timer;

.field private mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

.field private mCallInProgressDisplay:Z

.field private mCallStartTime:J

.field private mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mCoverEventsDisabledForSamsungPay:Z

.field mFactoryTransceiveResponseIntentSent:Z

.field private final mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

.field private mIsLedOn:Z

.field private mLedCoverRetryPostTime:J

.field private mLedCoverStartRetryCount:I

.field private mLedCoverTransceiveRetryCount:I

.field private mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

.field private mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPollingTouchEvents:Z

.field private mPrevCommand:I

.field private mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

.field private testCount:I


# direct methods
.method static synthetic -get0(Lcom/android/server/cover/NfcLedCoverController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/cover/NfcLedCoverController;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/cover/NfcLedCoverController;)Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/cover/NfcLedCoverController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/cover/NfcLedCoverController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/cover/NfcLedCoverController;)[B
    .locals 1

    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->getCallDuration()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/cover/NfcLedCoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->clearRetryCountDelayedMsg()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/server/cover/NfcLedCoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->handleSendPowerKeyToCover()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/cover/NfcLedCoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->sendCurrentClockCommand()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/cover/NfcLedCoverController;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cover/NfcLedCoverController;->handleAddLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/cover/NfcLedCoverController;I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cover/NfcLedCoverController;->handleClearOngoingEvent(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/cover/NfcLedCoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->handleCoverDetachedLocked()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/cover/NfcLedCoverController;II)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "eventAction"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/NfcLedCoverController;->handleEventResponse(II)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/cover/NfcLedCoverController;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cover/NfcLedCoverController;->handleLcdOffDisabledByCover(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/cover/NfcLedCoverController;I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cover/NfcLedCoverController;->handlePollEventTouch(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/cover/NfcLedCoverController;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cover/NfcLedCoverController;->handleRemoveLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/cover/NfcLedCoverController;I[B)V
    .locals 0
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/NfcLedCoverController;->handleSendDataToNfcLedCover(I[B)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/cover/NfcLedCoverController;->mResponsePattern:[B

    .line 59
    return-void

    .line 112
    nop

    :array_0
    .array-data 1
        0x10t
        0x6t
        -0x2ft
        0x0t
        -0x1t
        -0x1t
    .end array-data
.end method

.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/BaseNfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    .line 67
    iput-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    .line 122
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 124
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallStartTime:J

    .line 141
    iput v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 142
    iput v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 158
    new-instance v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;-><init>(Lcom/android/server/cover/NfcLedCoverController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    .line 159
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    .line 160
    const-string v1, "send leddata"

    .line 159
    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 161
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 162
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    .line 163
    const-string v1, "pollTouch ledcover"

    .line 162
    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 164
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 165
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    .line 166
    const-string v1, "touchResponse ledcover"

    .line 165
    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 167
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 168
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    .line 169
    const-string v1, "onoff ledcover"

    .line 168
    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 170
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 173
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_led_cover_test"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    .line 153
    return-void
.end method

.method private buildNfcCoverLedData(I[B)[B
    .locals 8
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 1101
    if-nez p2, :cond_0

    .line 1102
    new-array p2, v4, [B

    .end local p2    # "data":[B
    aput-byte v5, p2, v5

    .line 1105
    .restart local p2    # "data":[B
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/cover/NfcLedCoverController;->getLenByteValue([B)I

    move-result v1

    .line 1106
    .local v1, "ledPacketLength":I
    add-int/lit8 v2, v1, 0x5

    .line 1107
    .local v2, "size":I
    add-int/lit8 v3, v1, 0x5

    new-array v0, v3, [B

    .line 1110
    .local v0, "genData":[B
    aput-byte v5, v0, v5

    .line 1111
    const/16 v3, -0x5e

    aput-byte v3, v0, v4

    .line 1112
    const/4 v3, 0x2

    aput-byte v5, v0, v3

    .line 1113
    const/4 v3, 0x3

    aput-byte v5, v0, v3

    .line 1115
    int-to-byte v3, v1

    const/4 v4, 0x4

    aput-byte v3, v0, v4

    .line 1118
    const/16 v3, 0x10

    aput-byte v3, v0, v6

    .line 1119
    int-to-byte v3, v1

    const/4 v4, 0x6

    aput-byte v3, v0, v4

    .line 1120
    int-to-byte v3, p1

    const/4 v4, 0x7

    aput-byte v3, v0, v4

    .line 1121
    array-length v3, p2

    const/16 v4, 0x8

    invoke-static {p2, v5, v0, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1122
    add-int/lit8 v3, v2, -0x1

    add-int/lit8 v4, v2, -0x2

    aput-byte v7, v0, v4

    aput-byte v7, v0, v3

    .line 1125
    const-string v3, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "byte data to send to cover: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/android/server/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    return-object v0
.end method

.method private clearOngoingEvent()V
    .locals 1

    .prologue
    .line 979
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    .line 978
    return-void
.end method

.method private clearRetryCountDelayedMsg()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x0

    .line 1405
    iput v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 1407
    iput v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 1409
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1410
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 1403
    :cond_0
    return-void
.end method

.method private getCallDuration()[B
    .locals 12

    .prologue
    .line 1435
    const/4 v6, 0x4

    new-array v0, v6, [B

    .local v0, "duration":[B
    fill-array-data v0, :array_0

    .line 1436
    iget-wide v6, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallStartTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 1437
    return-object v0

    .line 1439
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallStartTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8

    .line 1441
    .local v4, "time":J
    const/4 v1, 0x0

    .line 1442
    .local v1, "locale":Ljava/util/Locale;
    const-string v6, "%02d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const-wide/16 v8, 0x3c

    div-long v8, v4, v8

    const-wide/16 v10, 0x64

    rem-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v1, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 1443
    .local v2, "minutes":[B
    const-string v6, "%02d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const-wide/16 v8, 0x3c

    rem-long v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v1, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 1444
    .local v3, "seconds":[B
    const/4 v6, 0x0

    aget-byte v6, v2, v6

    const/4 v7, 0x0

    aput-byte v6, v0, v7

    .line 1445
    const/4 v6, 0x1

    aget-byte v6, v2, v6

    const/4 v7, 0x1

    aput-byte v6, v0, v7

    .line 1446
    const/4 v6, 0x0

    aget-byte v6, v3, v6

    const/4 v7, 0x2

    aput-byte v6, v0, v7

    .line 1447
    const/4 v6, 0x1

    aget-byte v6, v3, v6

    const/4 v7, 0x3

    aput-byte v6, v0, v7

    .line 1449
    return-object v0

    .line 1435
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private getCurrentClockData()[B
    .locals 13

    .prologue
    const/4 v10, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 682
    const/4 v4, 0x0

    .line 683
    .local v4, "curTimeStr":Ljava/lang/String;
    const/4 v6, 0x0

    .line 685
    .local v6, "locale":Ljava/util/Locale;
    iget-object v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    .line 686
    .local v0, "bIs24HTime":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 687
    .local v2, "curTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 688
    .local v1, "c":Ljava/util/Calendar;
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 690
    const/16 v8, 0xb

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 691
    .local v5, "hours":I
    const/16 v8, 0xc

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 693
    .local v7, "minutes":I
    if-eqz v0, :cond_0

    .line 696
    const-string v8, "%02d%02d"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    .line 697
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    .line 696
    invoke-static {v6, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 709
    .local v4, "curTimeStr":Ljava/lang/String;
    :goto_0
    const-string v8, "CoverManager.NfcLedCoverController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getCurrentClockData : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    return-object v8

    .line 699
    .local v4, "curTimeStr":Ljava/lang/String;
    :cond_0
    rem-int/lit8 v5, v5, 0xc

    .line 700
    if-nez v5, :cond_1

    .line 701
    const/16 v5, 0xc

    .line 705
    :cond_1
    const-string v8, "%2d%02d"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    .line 706
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    .line 705
    invoke-static {v6, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "curTimeStr":Ljava/lang/String;
    goto :goto_0
.end method

.method private getLenByteValue([B)I
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 1135
    if-eqz p1, :cond_0

    .line 1136
    array-length v1, p1

    add-int/lit8 v0, v1, 0x5

    .line 1142
    .local v0, "len":I
    :goto_0
    return v0

    .line 1139
    .end local v0    # "len":I
    :cond_0
    const/4 v0, 0x6

    .restart local v0    # "len":I
    goto :goto_0
.end method

.method private getListenerTypeForCommand(I[B)I
    .locals 2
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v1, 0x0

    .line 1531
    sparse-switch p1, :sswitch_data_0

    .line 1555
    :cond_0
    :goto_0
    const/4 v0, -0x1

    return v0

    .line 1533
    :sswitch_0
    return v1

    .line 1535
    :sswitch_1
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 1536
    aget-byte v0, p2, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1539
    :pswitch_1
    return v1

    .line 1544
    :sswitch_2
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 1545
    aget-byte v0, p2, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1547
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 1549
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 1551
    :pswitch_4
    const/4 v0, 0x3

    return v0

    .line 1531
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
        0xe0 -> :sswitch_1
    .end sparse-switch

    .line 1536
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1545
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleAddLedNotification(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 562
    const/4 v0, 0x2

    .line 564
    .local v0, "event":I
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 565
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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

    check-cast v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 566
    .local v1, "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 567
    invoke-virtual {v1, v0, p1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 564
    .end local v1    # "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 561
    return-void
.end method

.method private handleClearOngoingEvent(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 1277
    const v0, 0xfffe

    if-ne p1, v0, :cond_0

    .line 1278
    const/4 p1, 0x3

    .line 1280
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    iget v0, v0, Lcom/android/server/cover/NfcLedCoverController$Command;->code:I

    if-ne v0, p1, :cond_2

    .line 1281
    :cond_1
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->clearOngoingEvent()V

    .line 1274
    :cond_2
    return-void
.end method

.method private handleCoverDetachedLocked()V
    .locals 2

    .prologue
    .line 270
    const-string v0, "CoverManager.NfcLedCoverController"

    const-string v1, "handleCoverDetached()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 274
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->stopCallInProgressDisplayTimer()V

    .line 276
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 278
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 279
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 280
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 281
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    .line 284
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    .line 286
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->clearRetryCountDelayedMsg()V

    .line 287
    invoke-virtual {p0}, Lcom/android/server/cover/NfcLedCoverController;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->stopLedCover()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 269
    return-void

    .line 290
    :catchall_0
    move-exception v0

    .line 291
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 290
    throw v0
.end method

.method private handleEventResponse(II)V
    .locals 5
    .param p1, "eventType"    # I
    .param p2, "eventAction"    # I

    .prologue
    .line 1286
    const-string v2, "CoverManager.NfcLedCoverController"

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

    .line 1288
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 1289
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string v3, "Event touch: accept"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1291
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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

    check-cast v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 1292
    .local v0, "info":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    iget v2, v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v2, :cond_0

    .line 1293
    invoke-virtual {v0}, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTouchAccept()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1290
    .end local v0    # "info":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "info$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v3

    .line 1309
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    :goto_1
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v2}, Lcom/android/server/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 1285
    return-void

    .line 1297
    :cond_2
    const/4 v2, 0x2

    if-ne p2, v2, :cond_4

    .line 1298
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string v3, "Event touch: reject"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1300
    :try_start_1
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "info$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 1301
    .restart local v0    # "info":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    iget v2, v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v2, :cond_3

    .line 1302
    invoke-virtual {v0}, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTouchReject()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 1299
    .end local v0    # "info":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1307
    :cond_4
    const-string v2, "CoverManager.NfcLedCoverController"

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

    goto :goto_1
.end method

.method private handleInvalidCommand(I[B[B)V
    .locals 10
    .param p1, "command"    # I
    .param p2, "data"    # [B
    .param p3, "returnValue"    # [B

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 1011
    iput p1, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    .line 1013
    if-eqz p3, :cond_2

    const/16 v5, 0x12

    if-eq p1, v5, :cond_2

    array-length v5, p3

    const/4 v6, 0x1

    if-lt v5, v6, :cond_2

    .line 1014
    const/4 v0, 0x0

    .line 1017
    .local v0, "doRetry":Z
    aget-byte v5, p3, v8

    sparse-switch v5, :sswitch_data_0

    .line 1029
    const-string v5, "CoverManager.NfcLedCoverController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transceive error - unknown error value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v7, p3, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :goto_0
    if-nez v0, :cond_0

    array-length v5, p3

    if-le v5, v9, :cond_0

    .line 1036
    aget-byte v5, p3, v9

    const/16 v6, -0x30

    if-ne v5, v6, :cond_0

    .line 1040
    array-length v5, p3

    new-array v4, v5, [B

    .line 1041
    .local v4, "tmp":[B
    array-length v5, p3

    invoke-static {p3, v8, v4, v8, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1042
    const/16 v5, -0x2f

    aput-byte v5, v4, v9

    .line 1046
    invoke-direct {p0, p1, v4}, Lcom/android/server/cover/NfcLedCoverController;->isValidResponse(I[B)Z

    move-result v0

    .line 1049
    .end local v0    # "doRetry":Z
    .end local v4    # "tmp":[B
    :cond_0
    if-eqz v0, :cond_1

    iget v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    const/16 v6, 0xd

    if-ge v5, v6, :cond_1

    .line 1050
    const-string v5, "CoverManager.NfcLedCoverController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Repeat command "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    iput-boolean v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    .line 1057
    iget-object v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v5}, Landroid/nfc/NfcAdapter;->semStopLedCoverMode()Z

    move-result v3

    .line 1059
    .local v3, "stopCoverResult":Z
    const-string v5, "CoverManager.NfcLedCoverController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stop result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 1062
    .local v2, "msg":Landroid/os/Message;
    const/4 v5, 0x4

    iput v5, v2, Landroid/os/Message;->what:I

    .line 1063
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 1064
    iput-object p2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1065
    iget-object v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v2, v6, v7}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1066
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverRetryPostTime:J

    .line 1067
    iget v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 1068
    return-void

    .line 1026
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "stopCoverResult":Z
    .restart local v0    # "doRetry":Z
    :sswitch_0
    const/4 v0, 0x1

    .line 1027
    goto/16 :goto_0

    .line 1070
    .end local v0    # "doRetry":Z
    :cond_1
    iput v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 1071
    const-string v5, "CoverManager.NfcLedCoverController"

    const-string v6, "Could not transceive command to cover so turn off led cover"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iput-boolean v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mFactoryTransceiveResponseIntentSent:Z

    .line 1076
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1077
    .local v1, "doneIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1078
    const-string v5, "CoverManager.NfcLedCoverController"

    const-string v6, "Sent done intent, fail transceive"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    sparse-switch p1, :sswitch_data_1

    .line 1088
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->stopLedCover()V

    .line 1090
    iput-boolean v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    .line 1091
    iget-object v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v5, v9}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 1092
    iget-object v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v5}, Lcom/android/server/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 1005
    return-void

    .line 1083
    :sswitch_1
    iget-boolean v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    if-eqz v5, :cond_3

    .line 1084
    iput-boolean v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    goto :goto_1

    .line 1017
    :sswitch_data_0
    .sparse-switch
        -0x50 -> :sswitch_0
        -0x4f -> :sswitch_0
        -0x4e -> :sswitch_0
        -0x20 -> :sswitch_0
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch

    .line 1080
    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_1
        0x12 -> :sswitch_1
    .end sparse-switch
.end method

.method private handleLcdOffDisabledByCover(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 586
    const/4 v0, 0x4

    .line 589
    .local v0, "event":I
    const-string v4, "lcd_off_disabled_by_cover"

    .line 588
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 590
    .local v1, "lcdOffDisabledByCover":Z
    iget-boolean v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    if-eq v4, v1, :cond_0

    .line 591
    iput-boolean v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    .line 593
    iget-boolean v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    if-eqz v4, :cond_0

    .line 594
    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    .line 598
    :cond_0
    iget-object v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 599
    :try_start_0
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "listener$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 600
    .local v2, "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    iget v4, v2, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_1

    .line 601
    invoke-virtual {v2, v0, p1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 598
    .end local v2    # "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v3    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v3    # "listener$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit v5

    .line 585
    return-void
.end method

.method private handlePollEventTouch(I)V
    .locals 12
    .param p1, "event"    # I

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1150
    iget-boolean v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    if-nez v4, :cond_0

    .line 1152
    const-string v4, "CoverManager.NfcLedCoverController"

    const-string v5, "Stop polling touch events"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v4}, Lcom/android/server/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 1155
    return-void

    .line 1158
    :cond_0
    sget v4, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    if-lez v4, :cond_1

    .line 1159
    iget v4, p0, Lcom/android/server/cover/NfcLedCoverController;->testCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/cover/NfcLedCoverController;->testCount:I

    .line 1163
    :cond_1
    new-array v4, v8, [B

    aput-byte v7, v4, v7

    const/16 v5, 0x11

    invoke-direct {p0, v5, v4}, Lcom/android/server/cover/NfcLedCoverController;->buildNfcCoverLedData(I[B)[B

    move-result-object v2

    .line 1164
    .local v2, "pollData":[B
    const/4 v3, 0x0

    .line 1166
    .local v3, "returnData":[B
    :try_start_0
    sget v4, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    if-nez v4, :cond_2

    .line 1167
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4, v2}, Landroid/nfc/NfcAdapter;->semTransceiveDataWithLedCover([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1174
    .end local v3    # "returnData":[B
    :cond_2
    :goto_0
    sget v4, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    if-lez v4, :cond_3

    iget v4, p0, Lcom/android/server/cover/NfcLedCoverController;->testCount:I

    const/16 v5, 0x13

    if-le v4, v5, :cond_3

    .line 1175
    const/4 v4, 0x5

    new-array v3, v4, [B

    .line 1176
    .local v3, "returnData":[B
    aput-byte v7, v3, v8

    aput-byte v7, v3, v7

    .line 1177
    const/16 v4, -0x2f

    aput-byte v4, v3, v9

    .line 1178
    const/16 v4, 0x11

    aput-byte v4, v3, v11

    .line 1179
    sget v4, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    if-ne v4, v9, :cond_4

    .line 1180
    aput-byte v8, v3, v10

    .line 1190
    .end local v3    # "returnData":[B
    :cond_3
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/server/cover/NfcLedCoverController;->isFinishedTouchReply([B)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1192
    const-string v5, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TouchEvent from led cover: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1193
    aget-byte v4, v3, v10

    if-ne v4, v8, :cond_6

    const-string v4, "accept"

    .line 1192
    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v4}, Lcom/android/server/cover/NfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 1196
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1197
    .local v1, "msg":Landroid/os/Message;
    iput v11, v1, Landroid/os/Message;->what:I

    .line 1199
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 1201
    aget-byte v4, v3, v10

    iput v4, v1, Landroid/os/Message;->arg2:I

    .line 1202
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v4, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1203
    iput-boolean v7, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    .line 1204
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v4}, Lcom/android/server/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 1148
    :goto_3
    return-void

    .line 1169
    .end local v1    # "msg":Landroid/os/Message;
    .local v3, "returnData":[B
    :catch_0
    move-exception v0

    .line 1170
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "CoverManager.NfcLedCoverController"

    const-string v5, "Error sending data to NFC"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1181
    .end local v0    # "e":Ljava/lang/Exception;
    .local v3, "returnData":[B
    :cond_4
    sget v4, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    if-ne v4, v8, :cond_5

    .line 1182
    aput-byte v9, v3, v10

    goto :goto_1

    .line 1184
    :cond_5
    const-string v4, "CoverManager.NfcLedCoverController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown test value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reject by default"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    aput-byte v9, v3, v10

    goto :goto_1

    .line 1193
    .end local v3    # "returnData":[B
    :cond_6
    const-string v4, "reject"

    goto :goto_2

    .line 1207
    :cond_7
    const-string v4, "CoverManager.NfcLedCoverController"

    const-string v5, "No touch event from LED cover, keep listening"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1209
    .restart local v1    # "msg":Landroid/os/Message;
    iput v9, v1, Landroid/os/Message;->what:I

    .line 1210
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 1211
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v1, v6, v7}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3
.end method

.method private handleRemoveLedNotification(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 574
    const/4 v0, 0x3

    .line 576
    .local v0, "event":I
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 577
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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

    check-cast v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 578
    .local v1, "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 579
    invoke-virtual {v1, v0, p1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 576
    .end local v1    # "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 573
    return-void
.end method

.method private handleSendDataToNfcLedCover(I[B)V
    .locals 13
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v12, 0x4

    .line 760
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 763
    :try_start_0
    const-string v9, "CoverManager.NfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleSendDataToLedCover : command : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    if-ne p1, v12, :cond_1

    .line 767
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->stopCallInProgressDisplayTimer()V

    .line 771
    if-eqz p2, :cond_1

    array-length v9, p2

    if-lez v9, :cond_1

    const/4 v9, 0x0

    aget-byte v9, p2, v9

    if-nez v9, :cond_1

    .line 773
    iget v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    if-ne v9, v12, :cond_0

    .line 774
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v9

    .line 773
    if-eqz v9, :cond_0

    .line 777
    const-string v9, "CoverManager.NfcLedCoverController"

    const-string v10, "CMD_LED_CALL_END was already processed so return"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 938
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 778
    return-void

    .line 780
    :cond_0
    :try_start_1
    const-string v9, "CoverManager.NfcLedCoverController"

    .line 781
    const-string v10, "CMD_LED_CALL_END called but with dummy data, switch to LED_OFF and stop CallTimer"

    .line 780
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/16 p1, 0x12

    .line 788
    :cond_1
    const v9, 0xfffe

    if-ne p1, v9, :cond_2

    .line 789
    invoke-direct {p0, p2}, Lcom/android/server/cover/NfcLedCoverController;->startCallInProgressDisplayTimer([B)V

    .line 790
    const/4 p1, 0x3

    .line 880
    :goto_0
    iget v6, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    .line 881
    .local v6, "previousCommand":I
    iput p1, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    .line 884
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/NfcLedCoverController;->setOngoingEventIfValid(I[B)V

    .line 888
    sparse-switch p1, :sswitch_data_0

    .line 932
    :goto_1
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    .line 933
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 934
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v9}, Lcom/android/server/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 938
    :goto_2
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 755
    return-void

    .line 791
    .end local v6    # "previousCommand":I
    :cond_2
    const/16 v9, 0x12

    if-ne p1, v9, :cond_3

    :try_start_2
    iget-boolean v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    if-eqz v9, :cond_4

    .line 800
    :cond_3
    const-string v9, "CoverManager.NfcLedCoverController"

    const-string v10, "Ensuring NFC LED Cover started"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const/4 v0, 0x0

    .line 804
    .local v0, "coverStarted":Z
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->tryStartLedCover()Z

    move-result v0

    .line 806
    .local v0, "coverStarted":Z
    if-nez v0, :cond_6

    .line 807
    iget v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    const/16 v10, 0xd

    if-ge v9, v10, :cond_5

    .line 808
    const-string v9, "CoverManager.NfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Repeat command after LED_COVER_RETRY_DELAY: 500 count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 809
    iget v11, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 808
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 811
    .local v5, "msg":Landroid/os/Message;
    const/4 v9, 0x4

    iput v9, v5, Landroid/os/Message;->what:I

    .line 812
    iput p1, v5, Landroid/os/Message;->arg1:I

    .line 813
    iput-object p2, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 814
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v10, 0x1f4

    invoke-virtual {v9, v5, v10, v11}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 815
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverRetryPostTime:J

    .line 816
    iget v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 822
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v9}, Landroid/nfc/NfcAdapter;->semStopLedCoverMode()Z

    move-result v8

    .line 824
    .local v8, "stopCoverResult":Z
    const-string v9, "CoverManager.NfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Stop result: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 938
    .end local v5    # "msg":Landroid/os/Message;
    .end local v8    # "stopCoverResult":Z
    :goto_3
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 839
    return-void

    .line 793
    .end local v0    # "coverStarted":Z
    :cond_4
    :try_start_3
    const-string v9, "CoverManager.NfcLedCoverController"

    const-string v10, "NfcLedCover not started, Start wireless charger"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/nfc/NfcAdapter;->semSetWirelessChargeEnabled(Z)Z

    .line 796
    const-string v9, "CoverManager.NfcLedCoverController"

    const-string v10, "Led cover already off"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 938
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 798
    return-void

    .line 827
    .restart local v0    # "coverStarted":Z
    :cond_5
    :try_start_4
    const-string v9, "CoverManager.NfcLedCoverController"

    const-string v10, "Could not start NFC LED Cover"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 829
    new-instance v1, Landroid/content/Intent;

    const-string v9, "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 830
    .local v1, "doneIntent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v1, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 831
    const-string v9, "CoverManager.NfcLedCoverController"

    const-string v10, "Sent done intent, fail start"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->stopLedCover()V

    .line 837
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mFactoryTransceiveResponseIntentSent:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 937
    .end local v0    # "coverStarted":Z
    .end local v1    # "doneIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v9

    .line 938
    iget-object v10, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 937
    throw v9

    .line 841
    .restart local v0    # "coverStarted":Z
    :cond_6
    const/4 v9, 0x0

    :try_start_5
    iput v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 844
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/NfcLedCoverController;->buildNfcCoverLedData(I[B)[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v3

    .line 845
    .local v3, "genData":[B
    const/4 v7, 0x0

    .line 847
    .local v7, "returnValue":[B
    :try_start_6
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v9, v3}, Landroid/nfc/NfcAdapter;->semTransceiveDataWithLedCover([B)[B

    move-result-object v7

    .line 848
    .local v7, "returnValue":[B
    if-eqz v7, :cond_7

    .line 849
    const-string v9, "CoverManager.NfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Response data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v7}, Lcom/android/server/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 855
    .end local v7    # "returnValue":[B
    :cond_7
    :goto_4
    :try_start_7
    invoke-direct {p0, p1, v7}, Lcom/android/server/cover/NfcLedCoverController;->isValidResponse(I[B)Z

    move-result v9

    if-nez v9, :cond_9

    .line 856
    const-string v9, "CoverManager.NfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error parsing response for command "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 857
    const-string v11, ": "

    .line 856
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 857
    invoke-virtual {p0, v7}, Lcom/android/server/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v11

    .line 856
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    invoke-direct {p0, p1, p2, v7}, Lcom/android/server/cover/NfcLedCoverController;->handleInvalidCommand(I[B[B)V

    .line 861
    invoke-direct {p0, v7}, Lcom/android/server/cover/NfcLedCoverController;->sendNfcFailIntentForFactoryMode([B)V

    .line 862
    sget v9, Lcom/android/server/cover/NfcLedCoverController;->TEST:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v9, :cond_8

    .line 938
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 863
    return-void

    .line 851
    :catch_0
    move-exception v2

    .line 852
    .local v2, "e":Ljava/lang/Exception;
    :try_start_8
    const-string v9, "CoverManager.NfcLedCoverController"

    const-string v10, "Error in trancieve command"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 865
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8
    const-string v9, "CoverManager.NfcLedCoverController"

    const-string v10, "TEST mode enabled, ignore NFC Led Cover response"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_9
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mFactoryTransceiveResponseIntentSent:Z

    .line 871
    new-instance v1, Landroid/content/Intent;

    const-string v9, "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 872
    .restart local v1    # "doneIntent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v1, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 873
    const-string v9, "CoverManager.NfcLedCoverController"

    const-string v10, "Sent done intent, sucess"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 875
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/NfcLedCoverController;->scheduleLedOffTimeout(I[B)V

    goto/16 :goto_0

    .line 891
    .end local v0    # "coverStarted":Z
    .end local v1    # "doneIntent":Landroid/content/Intent;
    .end local v3    # "genData":[B
    .restart local v6    # "previousCommand":I
    :sswitch_0
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    .line 895
    :sswitch_1
    sget v9, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    if-lez v9, :cond_a

    .line 896
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/cover/NfcLedCoverController;->testCount:I

    .line 900
    :cond_a
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 901
    .restart local v5    # "msg":Landroid/os/Message;
    const/4 v9, 0x2

    iput v9, v5, Landroid/os/Message;->what:I

    .line 902
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/NfcLedCoverController;->getListenerTypeForCommand(I[B)I

    move-result v4

    .line 903
    .local v4, "listenerType":I
    if-gez v4, :cond_b

    .line 904
    const-string v9, "CoverManager.NfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Wrong listener type requested for command:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; return"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 938
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 905
    return-void

    .line 907
    :cond_b
    :try_start_9
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v9}, Lcom/android/server/cover/NfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 909
    iput v4, v5, Landroid/os/Message;->arg1:I

    .line 912
    iget-boolean v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    if-eqz v9, :cond_c

    .line 913
    const-string v9, "CoverManager.NfcLedCoverController"

    const-string v10, "Already polling for touch events"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 918
    :goto_5
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v10, 0x64

    invoke-virtual {v9, v5, v10, v11}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 916
    :cond_c
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    goto :goto_5

    .line 923
    .end local v4    # "listenerType":I
    .end local v5    # "msg":Landroid/os/Message;
    :sswitch_2
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->stopLedCover()V

    .line 924
    invoke-direct {p0, v6}, Lcom/android/server/cover/NfcLedCoverController;->notifyLedOffListeners(I)V

    .line 929
    :sswitch_3
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 888
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
        0xa -> :sswitch_3
        0x12 -> :sswitch_2
        0xe0 -> :sswitch_1
    .end sparse-switch
.end method

.method private handleSendPowerKeyToCover()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 624
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->notifyPowerButtonPressListeners()V

    .line 626
    new-array v0, v2, [B

    .line 627
    .local v0, "data":[B
    aput-byte v1, v0, v1

    .line 629
    iget-boolean v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    if-eqz v1, :cond_0

    .line 632
    const-string v1, "CoverManager.NfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsLedOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". should be off"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v1}, Lcom/android/server/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 635
    const/16 v1, 0x12

    invoke-virtual {p0, v1, v0}, Lcom/android/server/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    .line 620
    :goto_0
    return-void

    .line 639
    :cond_0
    const-string v1, "CoverManager.NfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsLedOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". should be on"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const-string v1, "CoverManager.NfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOngoingEvent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 646
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    if-eqz v1, :cond_4

    .line 649
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    iget v1, v1, Lcom/android/server/cover/NfcLedCoverController$Command;->code:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 650
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    if-nez v1, :cond_2

    .line 651
    :cond_1
    const-string v1, "CoverManager.NfcLedCoverController"

    const-string v2, "There is no time update task but we\'ve got call duration ongoing event... displaying clock instead"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->clearOngoingEvent()V

    .line 653
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->sendCurrentClockCommand()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    :goto_1
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 655
    :cond_2
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 663
    :catchall_0
    move-exception v1

    .line 664
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 663
    throw v1

    .line 658
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    iget v1, v1, Lcom/android/server/cover/NfcLedCoverController$Command;->code:I

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    iget-object v2, v2, Lcom/android/server/cover/NfcLedCoverController$Command;->data:[B

    invoke-virtual {p0, v1, v2}, Lcom/android/server/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    goto :goto_1

    .line 661
    :cond_4
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->sendCurrentClockCommand()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private isFinishedTouchReply([B)Z
    .locals 6
    .param p1, "returnData"    # [B

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1265
    if-eqz p1, :cond_2

    array-length v2, p1

    const/4 v3, 0x5

    if-lt v2, v3, :cond_2

    .line 1266
    aget-byte v2, p1, v4

    const/16 v3, -0x2f

    if-ne v2, v3, :cond_2

    .line 1267
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    const/16 v3, 0x11

    if-ne v2, v3, :cond_2

    aget-byte v2, p1, v5

    if-eq v2, v0, :cond_0

    aget-byte v2, p1, v5

    if-ne v2, v4, :cond_1

    .line 1265
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1267
    goto :goto_0

    :cond_2
    move v0, v1

    .line 1265
    goto :goto_0
.end method

.method private isSingleMissedEvent([B)Z
    .locals 5
    .param p1, "data"    # [B

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v4, 0x30

    .line 464
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 465
    :cond_0
    return v1

    .line 467
    :cond_1
    aget-byte v2, p1, v0

    if-ne v2, v4, :cond_3

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    if-ne v2, v4, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    if-ne v2, v4, :cond_4

    const/4 v2, 0x4

    aget-byte v2, p1, v2

    if-eq v2, v4, :cond_2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private isValidCoverStartData([B)Z
    .locals 3
    .param p1, "coverStartData"    # [B

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 992
    if-eqz p1, :cond_0

    array-length v2, p1

    if-le v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isValidResponse(I[B)Z
    .locals 7
    .param p1, "command"    # I
    .param p2, "response"    # [B

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1225
    if-nez p2, :cond_0

    .line 1226
    return v3

    .line 1228
    :cond_0
    array-length v2, p2

    sget-object v4, Lcom/android/server/cover/NfcLedCoverController;->mResponsePattern:[B

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 1230
    return v3

    .line 1232
    :cond_1
    sget-object v2, Lcom/android/server/cover/NfcLedCoverController;->mResponsePattern:[B

    int-to-byte v4, p1

    const/4 v5, 0x3

    aput-byte v4, v2, v5

    .line 1234
    const-string v2, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected response data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/cover/NfcLedCoverController;->mResponsePattern:[B

    invoke-virtual {p0, v5}, Lcom/android/server/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    const/4 v1, 0x0

    .line 1237
    .local v1, "patternCount":I
    array-length v4, p2

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_6

    aget-byte v0, p2, v2

    .line 1239
    .local v0, "b":B
    sget-object v5, Lcom/android/server/cover/NfcLedCoverController;->mResponsePattern:[B

    aget-byte v5, v5, v1

    if-eq v0, v5, :cond_2

    if-ne v1, v6, :cond_3

    .line 1240
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 1241
    sget-object v5, Lcom/android/server/cover/NfcLedCoverController;->mResponsePattern:[B

    array-length v5, v5

    if-ne v1, v5, :cond_4

    .line 1242
    return v6

    .line 1244
    :cond_3
    if-nez v1, :cond_5

    .line 1237
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1250
    :cond_5
    return v3

    .line 1253
    .end local v0    # "b":B
    :cond_6
    return v3
.end method

.method private notifyLedOffListeners(I)V
    .locals 7
    .param p1, "turnedOffCommand"    # I

    .prologue
    .line 1485
    const/4 v0, 0x0

    .line 1486
    .local v0, "event":I
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1487
    .local v3, "systemEventData":Landroid/os/Bundle;
    const-string v4, "led_off_command"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1489
    iget-object v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 1490
    :try_start_0
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "listener$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 1491
    .local v1, "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    iget v4, v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_0

    .line 1492
    invoke-virtual {v1, v0, v3}, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1489
    .end local v1    # "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v5

    .line 1484
    return-void
.end method

.method private notifyPowerButtonPressListeners()V
    .locals 6

    .prologue
    .line 1505
    const/4 v0, 0x1

    .line 1507
    .local v0, "event":I
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1508
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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

    check-cast v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 1509
    .local v1, "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 1510
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1507
    .end local v1    # "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 1504
    return-void
.end method

.method private scheduleLedOffTimeout(I[B)V
    .locals 8
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    const-wide/16 v6, 0xe74

    const/16 v5, 0xf

    const/4 v4, 0x1

    .line 391
    const-string v1, "CoverManager.NfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scheduleLedOffTimerout, command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    sparse-switch p1, :sswitch_data_0

    .line 410
    iget-boolean v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    if-eqz v1, :cond_3

    if-eq p1, v5, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 411
    :cond_0
    iget v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    if-ne v1, p1, :cond_3

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v4}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v1

    .line 410
    if-eqz v1, :cond_3

    .line 412
    if-ne p1, v5, :cond_2

    .line 413
    const-string v1, "CoverManager.NfcLedCoverController"

    const-string v2, "Time update"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :goto_0
    return-void

    .line 399
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v4}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v4}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 402
    :cond_1
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v1}, Lcom/android/server/cover/NfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 406
    return-void

    .line 415
    :cond_2
    const-string v1, "CoverManager.NfcLedCoverController"

    const-string v2, "Call InProgress duration time update"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 421
    :cond_3
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v1}, Lcom/android/server/cover/NfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 423
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v4}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 424
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v4}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 427
    :cond_4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 428
    .local v0, "msgLedOff":Landroid/os/Message;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 429
    iput v4, v0, Landroid/os/Message;->what:I

    .line 430
    packed-switch p1, :pswitch_data_0

    .line 451
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0, v6, v7}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 390
    :goto_1
    return-void

    .line 432
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v2, 0x11f8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 437
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/server/cover/NfcLedCoverController;->isSingleMissedEvent([B)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 438
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0, v6, v7}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 440
    :cond_5
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v2, 0x13ec

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 445
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v2, 0x2328

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 448
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 392
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x12 -> :sswitch_0
        0x14 -> :sswitch_0
        0xe0 -> :sswitch_0
    .end sparse-switch

    .line 430
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private sendCurrentClockCommand()V
    .locals 2

    .prologue
    .line 674
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    .line 673
    return-void
.end method

.method private sendNfcFailIntentForFactoryMode([B)V
    .locals 6
    .param p1, "returnValue"    # [B

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1459
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1463
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mFactoryTransceiveResponseIntentSent:Z

    if-eqz v1, :cond_2

    .line 1465
    return-void

    .line 1459
    :cond_1
    sget v1, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_0

    .line 1460
    return-void

    .line 1470
    :cond_2
    if-eqz p1, :cond_3

    array-length v1, p1

    if-le v1, v5, :cond_3

    aget-byte v1, p1, v3

    const/16 v2, 0x69

    if-ne v1, v2, :cond_3

    .line 1471
    aget-byte v1, p1, v4

    const/16 v2, -0x7b

    if-ne v1, v2, :cond_3

    aget-byte v1, p1, v5

    if-nez v1, :cond_3

    .line 1472
    iput-boolean v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mFactoryTransceiveResponseIntentSent:Z

    .line 1473
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NFC_LED_COVER_FPCB_DISCONNECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1474
    .local v0, "nfcFailIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->SEM_ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1456
    .end local v0    # "nfcFailIntent":Landroid/content/Intent;
    :cond_3
    return-void
.end method

.method private setOngoingEventIfValid(I[B)V
    .locals 3
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v2, 0x0

    .line 951
    sparse-switch p1, :sswitch_data_0

    .line 968
    return-void

    .line 954
    :sswitch_0
    if-eqz p2, :cond_1

    array-length v0, p2

    if-lez v0, :cond_1

    aget-byte v0, p2, v2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    aget-byte v0, p2, v2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 970
    :cond_0
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    if-nez v0, :cond_2

    .line 971
    new-instance v0, Lcom/android/server/cover/NfcLedCoverController$Command;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/cover/NfcLedCoverController$Command;-><init>(Lcom/android/server/cover/NfcLedCoverController;I[B)V

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    .line 950
    :goto_0
    return-void

    .line 958
    :cond_1
    return-void

    .line 973
    :cond_2
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    iput p1, v0, Lcom/android/server/cover/NfcLedCoverController$Command;->code:I

    .line 974
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    iput-object p2, v0, Lcom/android/server/cover/NfcLedCoverController$Command;->data:[B

    goto :goto_0

    .line 951
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0xd -> :sswitch_0
        0xe -> :sswitch_1
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method private startCallInProgressDisplayTimer([B)V
    .locals 11
    .param p1, "data"    # [B

    .prologue
    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 1321
    const/16 v0, 0x40

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 1323
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v6, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1324
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1325
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallStartTime:J
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1333
    const-string v0, "CoverManager.NfcLedCoverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallStartTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1335
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1336
    iput-object v10, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    .line 1337
    iput-object v10, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    .line 1339
    :cond_0
    iput-boolean v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    .line 1340
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, v4}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    .line 1341
    new-instance v0, Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    invoke-direct {v0, p0, v10}, Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;-><init>(Lcom/android/server/cover/NfcLedCoverController;Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;)V

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    .line 1343
    :try_start_1
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1320
    :goto_0
    return-void

    .line 1329
    :catch_0
    move-exception v7

    .line 1330
    .local v7, "e":Ljava/nio/BufferOverflowException;
    const-string v0, "CoverManager.NfcLedCoverController"

    const-string v1, "CallStartTime incorrect"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1331
    return-void

    .line 1326
    .end local v7    # "e":Ljava/nio/BufferOverflowException;
    :catch_1
    move-exception v8

    .line 1327
    .local v8, "e":Ljava/nio/BufferUnderflowException;
    const-string v0, "CoverManager.NfcLedCoverController"

    const-string v1, "CallStartTime incorrect"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1328
    return-void

    .line 1344
    .end local v8    # "e":Ljava/nio/BufferUnderflowException;
    :catch_2
    move-exception v9

    .line 1345
    .local v9, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v0, "CoverManager.NfcLedCoverController"

    const-string v1, "Error while scheduling TimerTask"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    .line 1347
    iput-object v10, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    .line 1348
    iput-object v10, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    goto :goto_0
.end method

.method private stopCallInProgressDisplayTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    .line 1360
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1361
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1362
    iput-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    .line 1363
    iput-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    .line 1367
    :goto_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallStartTime:J

    .line 1357
    return-void

    .line 1365
    :cond_0
    const-string v0, "CoverManager.NfcLedCoverController"

    const-string v1, "Call duration should not be null in stop or was already stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopLedCover()V
    .locals 4

    .prologue
    .line 1419
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->semStopLedCoverMode()Z

    move-result v0

    .line 1421
    .local v0, "stopCoverResult":Z
    const-string v1, "CoverManager.NfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop LedCover, result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    .line 1425
    const-string v1, "CoverManager.NfcLedCoverController"

    const-string v2, "LED_OFF, Start wireless charger"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/nfc/NfcAdapter;->semSetWirelessChargeEnabled(Z)Z

    .line 1417
    return-void
.end method

.method private tryStartLedCover()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 722
    const-string v1, "CoverManager.NfcLedCoverController"

    .line 723
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to start NFC LED Cover mIsLedOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 724
    iget-boolean v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 723
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 722
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-boolean v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    if-nez v1, :cond_2

    .line 727
    iget v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    if-nez v1, :cond_0

    .line 729
    const-string v1, "CoverManager.NfcLedCoverController"

    const-string v2, "Disable Wireless Charger"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, v4}, Landroid/nfc/NfcAdapter;->semSetWirelessChargeEnabled(Z)Z

    .line 733
    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->semStartLedCoverMode()[B

    move-result-object v0

    .line 735
    .local v0, "coverStartData":[B
    const-string v1, "CoverManager.NfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/server/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    invoke-direct {p0, v0}, Lcom/android/server/cover/NfcLedCoverController;->isValidCoverStartData([B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 738
    const-string v1, "CoverManager.NfcLedCoverController"

    const-string v2, "Started NFC LED Cover"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iput v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 740
    iput-boolean v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    .line 752
    .end local v0    # "coverStartData":[B
    :goto_0
    return v5

    .line 742
    .restart local v0    # "coverStartData":[B
    :cond_1
    const-string v1, "CoverManager.NfcLedCoverController"

    const-string v2, "Failed to start NFC LED Cover"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-direct {p0, v0}, Lcom/android/server/cover/NfcLedCoverController;->sendNfcFailIntentForFactoryMode([B)V

    .line 746
    return v4

    .line 749
    .end local v0    # "coverStartData":[B
    :cond_2
    const-string v1, "CoverManager.NfcLedCoverController"

    const-string v2, "NFC LED Cover already started"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addLedNotification(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 526
    const-string v1, "CoverManager.NfcLedCoverController"

    const-string v2, "addLedNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 528
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 529
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 525
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1633
    const-string v2, " Current NfcLedCoverController state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1634
    const-string v2, "  mIsLEDCoverAttached="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1635
    iget-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedCoverAttached:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1636
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1638
    const-string v2, " Current NFC Callback state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1640
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1641
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Live callbacks ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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

    .line 1642
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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

    check-cast v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 1643
    .local v0, "info":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    if-eqz v0, :cond_0

    .line 1644
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (pid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1645
    const-string v4, " type="

    .line 1644
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1645
    iget v4, v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 1644
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1645
    const-string v4, ")"

    .line 1644
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1640
    .end local v0    # "info":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1648
    .restart local v1    # "info$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 1632
    return-void
.end method

.method public registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
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
    .line 473
    const-string v1, "CoverManager.NfcLedCoverController"

    .line 474
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

    .line 475
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 474
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 475
    const-string v3, ", uid : "

    .line 474
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 475
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 474
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 476
    const-string v3, ", command : "

    .line 474
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 473
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    if-ltz p1, :cond_0

    const/4 v1, 0x5

    if-le p1, v1, :cond_1

    .line 480
    :cond_0
    const-string v1, "CoverManager.NfcLedCoverController"

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

    .line 482
    return-void

    .line 485
    :cond_1
    iget-object v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 486
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "listener$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 487
    .local v0, "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    if-eqz v0, :cond_2

    .line 488
    iget-object v1, v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 489
    const-string v1, "CoverManager.NfcLedCoverController"

    const-string v2, "sendDataToNfcLedCover : duplicated listener handle"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    .line 490
    return-void

    .line 495
    .end local v0    # "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :cond_3
    const/4 v0, 0x0

    .line 496
    .local v0, "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :try_start_1
    new-instance v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .end local v0    # "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 497
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v6, p1

    .line 496
    invoke-direct/range {v0 .. v6}, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;-><init>(Lcom/android/server/cover/NfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    .line 498
    .local v0, "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 499
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v8

    .line 471
    return-void

    .line 485
    .end local v0    # "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v7    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v8

    throw v1
.end method

.method public removeLedNotification(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 533
    const-string v1, "CoverManager.NfcLedCoverController"

    const-string v2, "removeLedNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 535
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 536
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 532
    return-void
.end method

.method sendDataToNfcLedCover(I[B)V
    .locals 10
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    const/16 v9, 0xf

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 297
    iget-boolean v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedCoverAttached:Z

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 302
    :cond_0
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/server/cover/NfcLedCoverController;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v3

    if-nez v3, :cond_2

    .line 304
    const-string v3, "CoverManager.NfcLedCoverController"

    const-string v4, "sendDataToLedCover : Nfc Service not available"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void

    .line 297
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    if-eqz v3, :cond_0

    .line 299
    const-string v3, "CoverManager.NfcLedCoverController"

    const-string v4, "sendDataToLedCover : Not attached LED Cover or Disabled by SamsungPay"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-void

    .line 310
    :cond_2
    const-string v3, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendDataToNfcLedCover: command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const v3, 0xffff

    if-ne p1, v3, :cond_3

    .line 315
    iget v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    if-ne v3, v9, :cond_5

    iget-boolean v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    if-eqz v3, :cond_5

    .line 316
    const/16 p1, 0xf

    .line 324
    :cond_3
    if-ne p1, v9, :cond_4

    .line 325
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->getCurrentClockData()[B

    move-result-object p2

    .line 331
    :cond_4
    const/16 v3, 0xc

    if-ne p1, v3, :cond_6

    iget v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    const/16 v4, 0xb

    if-ne v3, v4, :cond_6

    .line 332
    const-string v3, "CoverManager.NfcLedCoverController"

    const-string v4, "Ignore battery chargin, battery low already shown"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-void

    .line 318
    :cond_5
    const-string v3, "CoverManager.NfcLedCoverController"

    const-string v4, "Time tick: clock not displayed, ignore"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-void

    .line 336
    :cond_6
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v3}, Lcom/android/server/cover/NfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 338
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 339
    .local v2, "msg":Landroid/os/Message;
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 340
    iput-object p2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 342
    const v3, 0xfff0

    if-ne p1, v3, :cond_8

    .line 343
    if-eqz p2, :cond_7

    array-length v3, p2

    if-lez v3, :cond_7

    .line 344
    const/4 v3, 0x5

    iput v3, v2, Landroid/os/Message;->what:I

    .line 345
    aget-byte v3, p2, v6

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 346
    iput-object v7, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 347
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 295
    :cond_7
    :goto_0
    return-void

    .line 349
    :cond_8
    const/16 v3, 0x13

    if-ne p1, v3, :cond_9

    .line 350
    iput v8, v2, Landroid/os/Message;->what:I

    .line 351
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v3, v8}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 352
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    .line 353
    const-wide/16 v4, 0x96

    .line 352
    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 355
    :cond_9
    iput v6, v2, Landroid/os/Message;->what:I

    .line 363
    const-wide/16 v0, 0x0

    .line 364
    .local v0, "delay":J
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v3, v8}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 365
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v3, v6}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverRetryPostTime:J

    sub-long/2addr v4, v6

    .line 367
    const-wide/16 v6, 0x1f4

    sub-long v0, v6, v4

    .line 369
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gez v3, :cond_a

    .line 370
    const-wide/16 v0, 0x0

    .line 372
    :cond_a
    const-string v3, "CoverManager.NfcLedCoverController"

    .line 373
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There is pending DELAYED message due to Retry mechanism send this command with proper delay:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 372
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_b
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->clearRetryCountDelayedMsg()V

    .line 380
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public sendPowerKeyToCover()V
    .locals 2

    .prologue
    .line 609
    iget-boolean v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCoverEventsDisabledForSamsungPay:Z

    if-eqz v0, :cond_0

    .line 610
    const-string v0, "CoverManager.NfcLedCoverController"

    .line 611
    const-string v1, "handleMessage MSG_EVENT_POWER_BUTTON: SamsungPay active - ignore power button events"

    .line 610
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :goto_0
    return-void

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public sendSystemEvent(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, -0x1

    .line 540
    const-string v5, "event_type"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 541
    .local v0, "event":I
    packed-switch v0, :pswitch_data_0

    .line 539
    :goto_0
    return-void

    .line 543
    :pswitch_0
    const-string v5, "lcd_touch_listener_type"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 544
    .local v4, "touchListenerType":I
    const-string v5, "lcd_touch_listener_respone"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 545
    .local v3, "response":I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 546
    .local v1, "msg":Landroid/os/Message;
    const/4 v5, 0x3

    iput v5, v1, Landroid/os/Message;->what:I

    .line 548
    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 550
    iput v3, v1, Landroid/os/Message;->arg2:I

    .line 551
    iget-object v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v5, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 554
    .end local v1    # "msg":Landroid/os/Message;
    .end local v3    # "response":I
    .end local v4    # "touchListenerType":I
    :pswitch_1
    iget-object v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 555
    .local v2, "msgLedOffDisabled":Landroid/os/Message;
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 556
    iget-object v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v5, v2}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 541
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

    .line 505
    const-string v2, "CoverManager.NfcLedCoverController"

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

    .line 506
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 505
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 506
    const-string v4, ", uid : "

    .line 505
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 506
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 505
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 510
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 511
    .local v0, "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    if-eqz v0, :cond_0

    .line 512
    iget-object v2, v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 513
    const-string v2, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 515
    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    const/4 v2, 0x1

    monitor-exit v3

    return v2

    .end local v0    # "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :cond_1
    monitor-exit v3

    .line 521
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string v3, "UnregisterNfcTouchListener: listener does not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return v5

    .line 509
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method updateNfcLedCoverAttachStateLocked(ZI)V
    .locals 6
    .param p1, "attached"    # Z
    .param p2, "type"    # I

    .prologue
    const/4 v5, 0x7

    const/4 v3, 0x0

    .line 244
    if-eqz p1, :cond_1

    if-ne p2, v5, :cond_1

    const/4 v0, 0x1

    .line 245
    .local v0, "isCoverAttached":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedCoverAttached:Z

    if-eq v2, v0, :cond_0

    .line 246
    iput-boolean v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedCoverAttached:Z

    .line 247
    iget-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedCoverAttached:Z

    if-nez v2, :cond_0

    .line 252
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string v4, "NfcLedCover detached, start clearing all flags, messages, wakelocks"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 254
    .local v1, "msg":Landroid/os/Message;
    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :goto_1
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 255
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 260
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "nfc_led_cover_test"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    .line 243
    return-void

    .line 244
    .end local v0    # "isCoverAttached":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isCoverAttached":Z
    goto :goto_0

    .restart local v1    # "msg":Landroid/os/Message;
    :cond_2
    move v2, v3

    .line 254
    goto :goto_1
.end method
