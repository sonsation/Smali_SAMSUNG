.class final Lcom/android/server/cover/GracefulNfcLedCoverController;
.super Lcom/android/server/cover/BaseNfcLedCoverController;
.source "GracefulNfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;,
        Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    }
.end annotation


# static fields
.field protected static final CMD_LED_FACTORY_MODE:I = 0x70

.field private static final INTENT_RETURN_VALUE_ACTION:Ljava/lang/String; = "android.intent.action.NFC_LED_COVER_RETURN_VALUE"

.field private static final INTENT_RETURN_VALUE_EXTRA_COMMAND_DATA:Ljava/lang/String; = "command_data"

.field private static final INTENT_RETURN_VALUE_EXTRA_START_RESULT:Ljava/lang/String; = "start_result"

.field private static final INTENT_RETURN_VALUE_EXTRA_START_SUCCESS:Ljava/lang/String; = "start_success"

.field private static final INTENT_RETURN_VALUE_EXTRA_TRANSCEIVE_RESULT:Ljava/lang/String; = "transceive_result"

.field private static final INTENT_RETURN_VALUE_EXTRA_TRANSCEIVE_SUCCESS:Ljava/lang/String; = "transceive_success"

.field private static final LED_COVER_RETRY_COUNT_MAX:I = 0xd

.field private static final LED_COVER_RETRY_DELAY:J = 0x1f4L

.field private static final MSG_COVER_ATTACH_STATE:I = 0x7

.field private static final MSG_COVER_VERSION_CHECK:I = 0xa

.field private static final MSG_LCD_OFF_DISABLED_BY_COVER:I = 0xb

.field private static final MSG_LED_NOTIFICATION_ADD:I = 0x8

.field private static final MSG_LED_NOTIFICATION_REMOVE:I = 0x9

.field private static final MSG_NFC_LED_HANDLE_EVENT_RESPONSE:I = 0x3

.field private static final MSG_NFC_LED_POLL_EVENT_TOUCH:I = 0x2

.field private static final MSG_SEND_NFC_LED_DATA:I = 0x0

.field private static final MSG_SEND_NFC_LED_DATA_DELAYED:I = 0x4

.field private static final MSG_SEND_POWER_KEY_TO_COVER:I = 0x6

.field private static final SETTING_SECURE_FIRMWARE_VERSION:Ljava/lang/String; = "led_cover_firmware_version"

.field private static final TAG:Ljava/lang/String; = "CoverManager.GracefulNfcLedCoverController"

.field private static TEST:I = 0x0

.field private static final VERSION_CHECK_COMMAND:[B

.field private static final WC_CONTROL_RESET_INTERVAL:J = 0x7530L


# instance fields
.field private mCallTimerLock:Ljava/lang/Object;

.field private mFirmwareVersion:Ljava/lang/String;

.field private final mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

.field private mIsLedOn:Z

.field private mLastWcControlResetTime:J

.field private mLedCoverStartRetryCount:I

.field private mLedCoverTransceiveRetryCount:I

.field private mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPollingTouchEvents:Z

.field private mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

.field private testCount:I


# direct methods
.method static synthetic -get0(Lcom/android/server/cover/GracefulNfcLedCoverController;)Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/cover/GracefulNfcLedCoverController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/cover/GracefulNfcLedCoverController;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/cover/GracefulNfcLedCoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->clearRetryCountDelayedMsg()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/cover/GracefulNfcLedCoverController;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handleAddLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/cover/GracefulNfcLedCoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handleCoverDetachedLocked()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/cover/GracefulNfcLedCoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handleCoverVersionCheck()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/cover/GracefulNfcLedCoverController;II)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "eventAction"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handleEventResponse(II)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/cover/GracefulNfcLedCoverController;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handleLcdOffDisabledByCover(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/cover/GracefulNfcLedCoverController;I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handlePollEventTouch(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/cover/GracefulNfcLedCoverController;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handleRemoveLedNotification(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/cover/GracefulNfcLedCoverController;I[B)V
    .locals 0
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handleSendDataToNfcLedCover(I[B)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/cover/GracefulNfcLedCoverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handleSendPowerKeyToCover()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/cover/GracefulNfcLedCoverController;->VERSION_CHECK_COMMAND:[B

    .line 47
    return-void

    .line 85
    :array_0
    .array-data 1
        0x0t
        -0x5et
        0x0t
        0x0t
        0x7t
        0x7t
        0x71t
        0x0t
        0x0t
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

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/BaseNfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    .line 55
    iput-boolean v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mCallTimerLock:Ljava/lang/Object;

    .line 96
    iput v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 97
    iput v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;-><init>(Lcom/android/server/cover/GracefulNfcLedCoverController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    .line 117
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    .line 118
    const-string v1, "send leddata"

    .line 117
    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 119
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 120
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    .line 121
    const-string v1, "pollTouch ledcover"

    .line 120
    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 122
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 123
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    .line 124
    const-string v1, "touchResponse ledcover"

    .line 123
    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 125
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 126
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    .line 127
    const-string v1, "version check ledcover"

    .line 126
    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 128
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 130
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_led_cover_test"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    .line 111
    return-void
.end method

.method private buildNfcCoverLedData(I[B)[B
    .locals 13
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v12, 0x1

    const/4 v11, -0x1

    const/4 v10, 0x2

    const/4 v6, 0x5

    const/4 v9, 0x0

    .line 686
    if-nez p2, :cond_0

    .line 687
    new-array p2, v10, [B

    fill-array-data p2, :array_0

    .line 691
    :cond_0
    array-length v5, p2

    if-ge v5, v10, :cond_1

    .line 692
    new-array v0, v10, [B

    aput-byte v9, v0, v9

    aget-byte v5, p2, v9

    aput-byte v5, v0, v12

    .end local p2    # "data":[B
    .local v0, "data":[B
    move-object p2, v0

    .line 694
    .end local v0    # "data":[B
    .restart local p2    # "data":[B
    :cond_1
    const/4 v2, 0x0

    .line 697
    .local v2, "isPayloadData":Z
    array-length v5, p2

    const/4 v7, 0x3

    if-le v5, v7, :cond_2

    .line 698
    const/4 v2, 0x1

    .line 701
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->getLenByteValue([B)I

    move-result v3

    .line 702
    .local v3, "ledPacketLength":I
    if-eqz v2, :cond_3

    .line 703
    aget-byte v5, p2, v9

    and-int/lit16 v3, v5, 0xff

    .line 705
    :cond_3
    add-int/lit8 v4, v3, 0x5

    .line 706
    .local v4, "size":I
    add-int/lit8 v5, v3, 0x5

    new-array v1, v5, [B

    .line 708
    .local v1, "genData":[B
    array-length v7, v1

    array-length v8, p2

    if-eqz v2, :cond_4

    move v5, v6

    :goto_0
    add-int/2addr v5, v8

    if-ge v7, v5, :cond_5

    .line 709
    const-string v5, "CoverManager.GracefulNfcLedCoverController"

    .line 710
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "buildNfcCoverLedData : Invalid genData length data.length="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 711
    array-length v7, p2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 710
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 711
    const-string v7, " genData.length="

    .line 710
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 712
    array-length v7, v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 710
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 709
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const/4 v5, 0x0

    return-object v5

    .line 708
    :cond_4
    const/4 v5, 0x7

    goto :goto_0

    .line 717
    :cond_5
    aput-byte v9, v1, v9

    .line 718
    const/16 v5, -0x5e

    aput-byte v5, v1, v12

    .line 719
    aput-byte v9, v1, v10

    .line 720
    const/4 v5, 0x3

    aput-byte v9, v1, v5

    .line 722
    int-to-byte v5, v3

    const/4 v7, 0x4

    aput-byte v5, v1, v7

    .line 724
    if-eqz v2, :cond_6

    .line 725
    array-length v5, p2

    invoke-static {p2, v9, v1, v6, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 736
    :goto_1
    const-string v5, "CoverManager.GracefulNfcLedCoverController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "byte data to send to cover: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    return-object v1

    .line 728
    :cond_6
    int-to-byte v5, v3

    aput-byte v5, v1, v6

    .line 729
    int-to-byte v5, p1

    const/4 v6, 0x6

    aput-byte v5, v1, v6

    .line 732
    array-length v5, p2

    const/4 v6, 0x7

    invoke-static {p2, v9, v1, v6, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 733
    add-int/lit8 v5, v4, -0x1

    add-int/lit8 v6, v4, -0x2

    aput-byte v11, v1, v6

    aput-byte v11, v1, v5

    goto :goto_1

    nop

    .line 687
    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private clearRetryCountDelayedMsg()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x0

    .line 909
    iput v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 911
    iput v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 913
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 907
    :cond_0
    return-void
.end method

.method private getLenByteValue([B)I
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 746
    if-eqz p1, :cond_0

    .line 747
    array-length v1, p1

    add-int/lit8 v0, v1, 0x4

    .line 753
    .local v0, "len":I
    :goto_0
    return v0

    .line 750
    .end local v0    # "len":I
    :cond_0
    const/4 v0, 0x6

    .restart local v0    # "len":I
    goto :goto_0
.end method

.method private getListenerTypeForCommand(I[B)I
    .locals 3
    .param p1, "command"    # I
    .param p2, "genData"    # [B

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 1043
    sparse-switch p1, :sswitch_data_0

    .line 1067
    :cond_0
    :goto_0
    const/4 v0, -0x1

    return v0

    .line 1045
    :sswitch_0
    return v2

    .line 1047
    :sswitch_1
    if-eqz p2, :cond_0

    array-length v0, p2

    if-le v0, v1, :cond_0

    .line 1048
    aget-byte v0, p2, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1051
    :pswitch_1
    return v2

    .line 1056
    :sswitch_2
    if-eqz p2, :cond_0

    array-length v0, p2

    if-le v0, v1, :cond_0

    .line 1057
    aget-byte v0, p2, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1059
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 1061
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 1063
    :pswitch_4
    const/4 v0, 0x3

    return v0

    .line 1043
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
        0x70 -> :sswitch_1
    .end sparse-switch

    .line 1048
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1057
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
    .line 359
    const/4 v0, 0x2

    .line 361
    .local v0, "event":I
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 362
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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

    check-cast v1, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 363
    .local v1, "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v1, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 364
    invoke-virtual {v1, v0, p1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 361
    .end local v1    # "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 358
    return-void
.end method

.method private handleCoverDetachedLocked()V
    .locals 3

    .prologue
    .line 217
    const-string v0, "CoverManager.GracefulNfcLedCoverController"

    const-string v1, "handleCoverDetached()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mCallTimerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 222
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 223
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 224
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    .line 228
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->clearRetryCountDelayedMsg()V

    .line 229
    invoke-virtual {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->stopLedCover()V

    .line 232
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 216
    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleCoverVersionCheck()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 965
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 966
    const-string v1, "CoverManager.GracefulNfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Firmware version already retrieved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 968
    return-void

    .line 971
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    if-eqz v1, :cond_1

    .line 972
    const-string v1, "CoverManager.GracefulNfcLedCoverController"

    const-string v2, "Led is on, try checking version later"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 974
    return-void

    .line 977
    :cond_1
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->semStartLedCoverMode()[B

    move-result-object v0

    .line 979
    .local v0, "coverStartData":[B
    const-string v1, "CoverManager.GracefulNfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Version check start result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    invoke-direct {p0, v0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->isValidCoverStartData([B)Z

    move-result v1

    if-nez v1, :cond_3

    .line 982
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->semStopLedCoverMode()Z

    .line 984
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v5}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 985
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, v4}, Landroid/nfc/NfcAdapter;->semSetWirelessChargeEnabled(Z)Z

    .line 987
    :cond_2
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 988
    return-void

    .line 992
    :cond_3
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->transceiveVersionCheck()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 993
    const-string v1, "CoverManager.GracefulNfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Firmware version retrieved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "led_cover_firmware_version"

    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 996
    :cond_4
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->semStopLedCoverMode()Z

    .line 998
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v5}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 999
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, v4}, Landroid/nfc/NfcAdapter;->semSetWirelessChargeEnabled(Z)Z

    .line 1002
    :cond_5
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 963
    return-void
.end method

.method private handleEventResponse(II)V
    .locals 5
    .param p1, "eventType"    # I
    .param p2, "eventAction"    # I

    .prologue
    .line 878
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

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

    .line 880
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 881
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

    const-string v3, "Event touch: accept"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 883
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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

    check-cast v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 884
    .local v0, "info":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v2, v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v2, :cond_0

    .line 885
    invoke-virtual {v0}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTouchAccept()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 882
    .end local v0    # "info":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "info$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v3

    .line 901
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    :goto_1
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 877
    return-void

    .line 889
    :cond_2
    const/4 v2, 0x2

    if-ne p2, v2, :cond_4

    .line 890
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

    const-string v3, "Event touch: reject"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 892
    :try_start_1
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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

    check-cast v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 893
    .restart local v0    # "info":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v2, v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v2, :cond_3

    .line 894
    invoke-virtual {v0}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTouchReject()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 891
    .end local v0    # "info":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 899
    :cond_4
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

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
    .locals 6
    .param p1, "command"    # I
    .param p2, "data"    # [B
    .param p3, "returnValue"    # [B

    .prologue
    const/4 v5, 0x0

    .line 627
    if-eqz p3, :cond_0

    const/16 v2, 0x12

    if-eq p1, v2, :cond_0

    array-length v2, p3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 628
    aget-byte v2, p3, v5

    sparse-switch v2, :sswitch_data_0

    .line 665
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transceive error - unknown error value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, p3, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_0
    :goto_0
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

    const-string v3, "Sent done intent, fail transceive"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->stopLedCover()V

    .line 674
    iput-boolean v5, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    .line 675
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 676
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 623
    return-void

    .line 639
    :sswitch_0
    iget v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    const/16 v3, 0xd

    if-ge v2, v3, :cond_1

    .line 640
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Repeat command "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 641
    iget v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 640
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iput-boolean v5, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    .line 648
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->semStopLedCoverMode()Z

    move-result v1

    .line 650
    .local v1, "stopCoverResult":Z
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 653
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v0, Landroid/os/Message;->what:I

    .line 654
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 655
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 656
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 657
    iget v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 658
    return-void

    .line 660
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "stopCoverResult":Z
    :cond_1
    iput v5, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 661
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

    const-string v3, "Could not transceive command to cover so turn off led cover"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 628
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
.end method

.method private handleLcdOffDisabledByCover(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 383
    const/4 v0, 0x4

    .line 385
    .local v0, "event":I
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 386
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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

    check-cast v1, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 387
    .local v1, "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v1, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 388
    invoke-virtual {v1, v0, p1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 385
    .end local v1    # "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 382
    return-void
.end method

.method private handlePollEventTouch(I)V
    .locals 12
    .param p1, "event"    # I

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 761
    iget-boolean v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    if-nez v4, :cond_0

    .line 763
    const-string v4, "CoverManager.GracefulNfcLedCoverController"

    const-string v5, "Stop polling touch events"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v4}, Lcom/android/server/cover/GracefulNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 766
    return-void

    .line 769
    :cond_0
    sget v4, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    if-lez v4, :cond_1

    .line 770
    iget v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->testCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->testCount:I

    .line 774
    :cond_1
    new-array v4, v8, [B

    fill-array-data v4, :array_0

    const/16 v5, 0x11

    invoke-direct {p0, v5, v4}, Lcom/android/server/cover/GracefulNfcLedCoverController;->buildNfcCoverLedData(I[B)[B

    move-result-object v2

    .line 775
    .local v2, "pollData":[B
    if-nez v2, :cond_2

    .line 776
    const-string v4, "CoverManager.GracefulNfcLedCoverController"

    const-string v5, "Invalid data"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    return-void

    .line 779
    :cond_2
    const/4 v3, 0x0

    .line 781
    .local v3, "returnData":[B
    :try_start_0
    sget v4, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    if-nez v4, :cond_3

    .line 782
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->resetWcControlTimer()V

    .line 783
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4, v2}, Landroid/nfc/NfcAdapter;->semTransceiveDataWithLedCover([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 790
    .end local v3    # "returnData":[B
    :cond_3
    :goto_0
    sget v4, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    if-lez v4, :cond_4

    iget v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->testCount:I

    const/16 v5, 0x13

    if-le v4, v5, :cond_4

    .line 791
    const/4 v4, 0x6

    new-array v3, v4, [B

    .line 792
    .local v3, "returnData":[B
    const/4 v4, 0x6

    aput-byte v4, v3, v7

    .line 793
    const/16 v4, 0x11

    aput-byte v4, v3, v10

    .line 794
    aput-byte v7, v3, v8

    .line 795
    sget v4, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    if-ne v4, v8, :cond_5

    .line 796
    aput-byte v10, v3, v9

    .line 803
    :goto_1
    const/4 v4, 0x4

    aput-byte v11, v3, v4

    .line 804
    const/4 v4, 0x5

    aput-byte v11, v3, v4

    .line 808
    .end local v3    # "returnData":[B
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/server/cover/GracefulNfcLedCoverController;->isFinishedTouchReply([B)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 810
    const-string v5, "CoverManager.GracefulNfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TouchEvent from led cover: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 811
    aget-byte v4, v3, v9

    if-ne v4, v10, :cond_7

    const-string v4, "accept"

    .line 810
    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v4}, Lcom/android/server/cover/GracefulNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 814
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 815
    .local v1, "msg":Landroid/os/Message;
    iput v9, v1, Landroid/os/Message;->what:I

    .line 817
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 819
    aget-byte v4, v3, v9

    iput v4, v1, Landroid/os/Message;->arg2:I

    .line 820
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v4, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 821
    iput-boolean v7, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    .line 822
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v4}, Lcom/android/server/cover/GracefulNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 759
    :goto_3
    return-void

    .line 785
    .end local v1    # "msg":Landroid/os/Message;
    .local v3, "returnData":[B
    :catch_0
    move-exception v0

    .line 786
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "CoverManager.GracefulNfcLedCoverController"

    const-string v5, "Error sending data to NFC"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 797
    .end local v0    # "e":Ljava/lang/Exception;
    .local v3, "returnData":[B
    :cond_5
    sget v4, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    if-ne v4, v10, :cond_6

    .line 798
    aput-byte v8, v3, v9

    goto :goto_1

    .line 800
    :cond_6
    const-string v4, "CoverManager.GracefulNfcLedCoverController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown test value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reject by default"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    aput-byte v8, v3, v9

    goto/16 :goto_1

    .line 811
    .end local v3    # "returnData":[B
    :cond_7
    const-string v4, "reject"

    goto :goto_2

    .line 825
    :cond_8
    const-string v4, "CoverManager.GracefulNfcLedCoverController"

    const-string v5, "No touch event from LED cover, keep listening"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 827
    .restart local v1    # "msg":Landroid/os/Message;
    iput v8, v1, Landroid/os/Message;->what:I

    .line 828
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 829
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v1, v6, v7}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    nop

    .line 774
    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private handleRemoveLedNotification(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 371
    const/4 v0, 0x3

    .line 373
    .local v0, "event":I
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 374
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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

    check-cast v1, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 375
    .local v1, "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v1, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 376
    invoke-virtual {v1, v0, p1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 373
    .end local v1    # "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 370
    return-void
.end method

.method private handleSendDataToNfcLedCover(I[B)V
    .locals 12
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    .line 453
    iget-object v9, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mCallTimerLock:Ljava/lang/Object;

    monitor-enter v9

    .line 454
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.NFC_LED_COVER_RETURN_VALUE"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 456
    .local v5, "resultIntent":Landroid/content/Intent;
    const-string v8, "CoverManager.GracefulNfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleSendDataToLedCover : command : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const-string v8, "CoverManager.GracefulNfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Firmware version: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->buildNfcCoverLedData(I[B)[B

    move-result-object v2

    .line 462
    .local v2, "genData":[B
    if-nez v2, :cond_0

    .line 463
    const-string v8, "CoverManager.GracefulNfcLedCoverController"

    const-string v10, "Invalid data"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    .line 464
    return-void

    .line 467
    :cond_0
    const/16 v8, 0x12

    if-ne p1, v8, :cond_1

    :try_start_1
    iget-boolean v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    if-eqz v8, :cond_2

    .line 475
    :cond_1
    const-string v8, "CoverManager.GracefulNfcLedCoverController"

    const-string v10, "Ensuring NFC LED Cover started"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/4 v0, 0x0

    .line 479
    .local v0, "coverStarted":Z
    invoke-direct {p0, v5}, Lcom/android/server/cover/GracefulNfcLedCoverController;->tryStartLedCover(Landroid/content/Intent;)Z

    move-result v0

    .line 480
    .local v0, "coverStarted":Z
    const-string v8, "command_data"

    invoke-virtual {v5, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 481
    const-string v8, "start_success"

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 483
    if-nez v0, :cond_4

    .line 484
    iget v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    const/16 v10, 0xd

    if-ge v8, v10, :cond_3

    .line 485
    const-string v8, "CoverManager.GracefulNfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Repeat command after LED_COVER_RETRY_DELAY: 500 count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 486
    iget v11, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 485
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 488
    .local v4, "msg":Landroid/os/Message;
    const/4 v8, 0x4

    iput v8, v4, Landroid/os/Message;->what:I

    .line 489
    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 490
    iput-object p2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 491
    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v10, 0x1f4

    invoke-virtual {v8, v4, v10, v11}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 492
    iget v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 498
    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v8}, Landroid/nfc/NfcAdapter;->semStopLedCoverMode()Z

    move-result v7

    .line 500
    .local v7, "stopCoverResult":Z
    const-string v8, "CoverManager.GracefulNfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Stop result: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    .end local v4    # "msg":Landroid/os/Message;
    .end local v7    # "stopCoverResult":Z
    :goto_0
    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v5, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v9

    .line 510
    return-void

    .line 469
    .end local v0    # "coverStarted":Z
    :cond_2
    :try_start_2
    const-string v8, "CoverManager.GracefulNfcLedCoverController"

    const-string v10, "NfcLedCover not started, Start wireless charger"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/nfc/NfcAdapter;->semSetWirelessChargeEnabled(Z)Z

    .line 472
    const-string v8, "CoverManager.GracefulNfcLedCoverController"

    const-string v10, "Led cover already off"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v9

    .line 473
    return-void

    .line 503
    .restart local v0    # "coverStarted":Z
    :cond_3
    :try_start_3
    const-string v8, "CoverManager.GracefulNfcLedCoverController"

    const-string v10, "Could not start NFC LED Cover"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 506
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->stopLedCover()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 453
    .end local v0    # "coverStarted":Z
    .end local v2    # "genData":[B
    .end local v5    # "resultIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 512
    .restart local v0    # "coverStarted":Z
    .restart local v2    # "genData":[B
    .restart local v5    # "resultIntent":Landroid/content/Intent;
    :cond_4
    const/4 v8, 0x0

    :try_start_4
    iput v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 515
    const/4 v6, 0x0

    .line 517
    .local v6, "returnValue":[B
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->resetWcControlTimer()V

    .line 518
    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v8, v2}, Landroid/nfc/NfcAdapter;->semTransceiveDataWithLedCover([B)[B

    move-result-object v6

    .line 519
    .local v6, "returnValue":[B
    if-eqz v6, :cond_5

    .line 520
    const-string v8, "CoverManager.GracefulNfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Response data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v6}, Lcom/android/server/cover/GracefulNfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 525
    .end local v6    # "returnValue":[B
    :cond_5
    :goto_1
    :try_start_6
    const-string v8, "transceive_result"

    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 527
    invoke-direct {p0, v2, v6}, Lcom/android/server/cover/GracefulNfcLedCoverController;->isValidResponse([B[B)Z

    move-result v8

    if-nez v8, :cond_7

    .line 528
    const-string v8, "CoverManager.GracefulNfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error parsing response for command "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 529
    const-string v11, ": "

    .line 528
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 529
    invoke-virtual {p0, v6}, Lcom/android/server/cover/GracefulNfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v11

    .line 528
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-direct {p0, p1, p2, v6}, Lcom/android/server/cover/GracefulNfcLedCoverController;->handleInvalidCommand(I[B[B)V

    .line 531
    const-string v8, "transceive_success"

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 532
    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v5, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 533
    sget v8, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v8, :cond_6

    monitor-exit v9

    .line 534
    return-void

    .line 522
    :catch_0
    move-exception v1

    .line 523
    .local v1, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v8, "CoverManager.GracefulNfcLedCoverController"

    const-string v10, "Error in trancieve command"

    invoke-static {v8, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 536
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    const-string v8, "CoverManager.GracefulNfcLedCoverController"

    const-string v10, "TEST mode enabled, ignore NFC Led Cover response"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :goto_2
    const-string v8, "CoverManager.GracefulNfcLedCoverController"

    const-string v10, "Done, sucess"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 549
    sparse-switch p1, :sswitch_data_0

    .line 592
    :goto_3
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    .line 593
    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 594
    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v8}, Lcom/android/server/cover/GracefulNfcLedCoverController;->releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_4
    monitor-exit v9

    .line 448
    return-void

    .line 539
    :cond_7
    :try_start_8
    const-string v8, "transceive_success"

    const/4 v10, 0x1

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 540
    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v5, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 554
    :sswitch_0
    sget v8, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    if-lez v8, :cond_8

    .line 555
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->testCount:I

    .line 559
    :cond_8
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 560
    .restart local v4    # "msg":Landroid/os/Message;
    const/4 v8, 0x2

    iput v8, v4, Landroid/os/Message;->what:I

    .line 561
    invoke-direct {p0, p1, v2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->getListenerTypeForCommand(I[B)I

    move-result v3

    .line 562
    .local v3, "listenerType":I
    if-ltz v3, :cond_a

    .line 563
    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v8}, Lcom/android/server/cover/GracefulNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 564
    iput v3, v4, Landroid/os/Message;->arg1:I

    .line 567
    iget-boolean v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    if-eqz v8, :cond_9

    .line 568
    const-string v8, "CoverManager.GracefulNfcLedCoverController"

    const-string v10, "Already polling for touch events"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 573
    :goto_5
    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v4, v10, v11}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4

    .line 571
    :cond_9
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mPollingTouchEvents:Z

    goto :goto_5

    .line 578
    :cond_a
    const/16 v8, 0x70

    if-ne p1, v8, :cond_b

    if-eqz v2, :cond_b

    array-length v8, v2

    const/16 v10, 0x8

    if-le v8, v10, :cond_b

    .line 579
    const/16 v8, 0x8

    aget-byte v8, v2, v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_b

    .line 580
    const-string v8, "CoverManager.GracefulNfcLedCoverController"

    const-string v10, "Factory Mode Full LED off was sent, so turn off LedCover"

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    .end local v3    # "listenerType":I
    .end local v4    # "msg":Landroid/os/Message;
    :sswitch_1
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->stopLedCover()V

    goto :goto_3

    .line 582
    .restart local v3    # "listenerType":I
    .restart local v4    # "msg":Landroid/os/Message;
    :cond_b
    const-string v8, "CoverManager.GracefulNfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Wrong listener type requested for command:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 583
    const-string v11, "; return"

    .line 582
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit v9

    .line 584
    return-void

    .line 549
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_0
        0x12 -> :sswitch_1
        0x70 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleSendPowerKeyToCover()V
    .locals 0

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->notifyPowerButtonPressListeners()V

    .line 401
    return-void
.end method

.method private isFinishedTouchReply([B)Z
    .locals 5
    .param p1, "returnData"    # [B

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 872
    if-eqz p1, :cond_2

    array-length v2, p1

    const/4 v3, 0x6

    if-lt v2, v3, :cond_2

    .line 873
    aget-byte v2, p1, v0

    const/16 v3, 0x11

    if-ne v2, v3, :cond_2

    .line 874
    aget-byte v2, p1, v4

    if-eq v2, v0, :cond_0

    aget-byte v2, p1, v4

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 872
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 874
    goto :goto_0

    :cond_2
    move v0, v1

    .line 872
    goto :goto_0
.end method

.method private isValidCoverStartData([B)Z
    .locals 3
    .param p1, "coverStartData"    # [B

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 610
    if-eqz p1, :cond_0

    array-length v2, p1

    if-le v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isValidResponse([B[B)Z
    .locals 4
    .param p1, "data"    # [B
    .param p2, "response"    # [B

    .prologue
    const/4 v3, 0x0

    .line 843
    if-nez p2, :cond_0

    .line 844
    return v3

    .line 847
    :cond_0
    array-length v1, p2

    array-length v2, p1

    add-int/lit8 v2, v2, -0x5

    if-ge v1, v2, :cond_1

    .line 851
    return v3

    .line 855
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x5

    if-ge v0, v1, :cond_3

    .line 856
    aget-byte v1, p2, v0

    add-int/lit8 v2, v0, 0x5

    aget-byte v2, p1, v2

    if-eq v1, v2, :cond_2

    .line 857
    return v3

    .line 855
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 860
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method private notifyPowerButtonPressListeners()V
    .locals 6

    .prologue
    .line 948
    const/4 v0, 0x1

    .line 950
    .local v0, "event":I
    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 951
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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

    check-cast v1, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 952
    .local v1, "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v1, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 953
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 950
    .end local v1    # "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 947
    return-void
.end method

.method private resetWcControlTimer()V
    .locals 6

    .prologue
    .line 1077
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1078
    .local v0, "currTime":J
    iget-wide v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLastWcControlResetTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1079
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/nfc/NfcAdapter;->semSetWirelessChargeEnabled(Z)Z

    .line 1080
    iput-wide v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLastWcControlResetTime:J

    .line 1076
    :cond_0
    return-void
.end method

.method private stopLedCover()V
    .locals 5

    .prologue
    .line 923
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->semStopLedCoverMode()Z

    move-result v0

    .line 925
    .local v0, "stopCoverResult":Z
    const-string v1, "CoverManager.GracefulNfcLedCoverController"

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

    .line 927
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    .line 929
    const-string v1, "CoverManager.GracefulNfcLedCoverController"

    const-string v2, "LED_OFF, Start wireless charger"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/nfc/NfcAdapter;->semSetWirelessChargeEnabled(Z)Z

    .line 935
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 936
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 937
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v2, 0x1f4

    const/16 v4, 0xa

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 921
    :cond_0
    return-void
.end method

.method private transceiveVersionCheck()Z
    .locals 10

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1012
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    sget-object v5, Lcom/android/server/cover/GracefulNfcLedCoverController;->VERSION_CHECK_COMMAND:[B

    invoke-virtual {v2, v5}, Landroid/nfc/NfcAdapter;->semTransceiveDataWithLedCover([B)[B

    move-result-object v0

    .line 1013
    .local v0, "response":[B
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Verison check response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    if-eqz v0, :cond_2

    array-length v2, v0

    sget-object v5, Lcom/android/server/cover/GracefulNfcLedCoverController;->VERSION_CHECK_COMMAND:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x5

    if-lt v2, v5, :cond_2

    .line 1016
    aget-byte v2, v0, v4

    sget-object v5, Lcom/android/server/cover/GracefulNfcLedCoverController;->VERSION_CHECK_COMMAND:[B

    aget-byte v5, v5, v8

    if-ne v2, v5, :cond_2

    .line 1017
    aget-byte v2, v0, v3

    sget-object v5, Lcom/android/server/cover/GracefulNfcLedCoverController;->VERSION_CHECK_COMMAND:[B

    aget-byte v5, v5, v9

    if-ne v2, v5, :cond_2

    .line 1018
    aget-byte v2, v0, v7

    sget-object v5, Lcom/android/server/cover/GracefulNfcLedCoverController;->VERSION_CHECK_COMMAND:[B

    const/4 v6, 0x7

    aget-byte v5, v5, v6

    if-ne v2, v5, :cond_2

    .line 1019
    aget-byte v2, v0, v8

    sget-object v5, Lcom/android/server/cover/GracefulNfcLedCoverController;->VERSION_CHECK_COMMAND:[B

    const/16 v6, 0xa

    aget-byte v5, v5, v6

    if-ne v2, v5, :cond_2

    .line 1020
    aget-byte v2, v0, v9

    sget-object v5, Lcom/android/server/cover/GracefulNfcLedCoverController;->VERSION_CHECK_COMMAND:[B

    const/16 v6, 0xb

    aget-byte v5, v5, v6

    if-ne v2, v5, :cond_1

    move v2, v3

    :goto_0
    move v1, v2

    .line 1021
    .local v1, "validResponse":Z
    :goto_1
    if-eqz v1, :cond_0

    .line 1022
    const-string v2, "%02X %02X"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x3

    aget-byte v6, v0, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x4

    aget-byte v4, v0, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mFirmwareVersion:Ljava/lang/String;

    .line 1025
    :cond_0
    return v1

    .end local v1    # "validResponse":Z
    :cond_1
    move v2, v4

    .line 1020
    goto :goto_0

    :cond_2
    move v1, v4

    .line 1015
    goto :goto_1
.end method

.method private tryStartLedCover(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "resultIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 416
    const-string v1, "CoverManager.GracefulNfcLedCoverController"

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to start NFC LED Cover mIsLedOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 418
    iget-boolean v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 417
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 416
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-boolean v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    if-nez v1, :cond_2

    .line 421
    iget v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    if-nez v1, :cond_0

    .line 423
    const-string v1, "CoverManager.GracefulNfcLedCoverController"

    const-string v2, "Disable Wireless Charger"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLastWcControlResetTime:J

    .line 426
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, v4}, Landroid/nfc/NfcAdapter;->semSetWirelessChargeEnabled(Z)Z

    .line 428
    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->semStartLedCoverMode()[B

    move-result-object v0

    .line 430
    .local v0, "coverStartData":[B
    const-string v1, "CoverManager.GracefulNfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const-string v1, "start_result"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 433
    invoke-direct {p0, v0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->isValidCoverStartData([B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 434
    const-string v1, "CoverManager.GracefulNfcLedCoverController"

    const-string v2, "Started NFC LED Cover"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iput v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 436
    iput-boolean v5, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedOn:Z

    .line 445
    .end local v0    # "coverStartData":[B
    :goto_0
    return v5

    .line 438
    .restart local v0    # "coverStartData":[B
    :cond_1
    const-string v1, "CoverManager.GracefulNfcLedCoverController"

    const-string v2, "Failed to start NFC LED Cover"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return v4

    .line 442
    .end local v0    # "coverStartData":[B
    :cond_2
    const-string v1, "CoverManager.GracefulNfcLedCoverController"

    const-string v2, "NFC LED Cover already started"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addLedNotification(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 323
    const-string v1, "CoverManager.GracefulNfcLedCoverController"

    const-string v2, "addLedNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 325
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 326
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 322
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1159
    const-string v2, " Current NfcLedCoverController state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1160
    const-string v2, "  mIsLEDCoverAttached="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1161
    iget-boolean v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedCoverAttached:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1162
    const-string v2, "  TEST="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1163
    sget v2, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1164
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1166
    const-string v2, " Current NFC Callback state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1168
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1169
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Live callbacks ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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

    .line 1170
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

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

    check-cast v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 1171
    .local v0, "info":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    if-eqz v0, :cond_0

    .line 1172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (pid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1173
    const-string v4, " type="

    .line 1172
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1173
    iget v4, v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    .line 1172
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1173
    const-string v4, ")"

    .line 1172
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1168
    .end local v0    # "info":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1176
    .restart local v1    # "info$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 1158
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
    .line 271
    const-string v1, "CoverManager.GracefulNfcLedCoverController"

    .line 272
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

    .line 273
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 272
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 273
    const-string v3, ", uid : "

    .line 272
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 273
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 272
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 274
    const-string v3, ", command : "

    .line 272
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 271
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    if-ltz p1, :cond_0

    const/4 v1, 0x5

    if-le p1, v1, :cond_1

    .line 278
    :cond_0
    const-string v1, "CoverManager.GracefulNfcLedCoverController"

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

    .line 279
    return-void

    .line 282
    :cond_1
    iget-object v8, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 283
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "listener$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 284
    .local v0, "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    if-eqz v0, :cond_2

    .line 285
    iget-object v1, v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 286
    const-string v1, "CoverManager.GracefulNfcLedCoverController"

    const-string v2, "sendDataToNfcLedCover : duplicated listener handle"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    .line 287
    return-void

    .line 292
    .end local v0    # "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    :cond_3
    const/4 v0, 0x0

    .line 293
    .local v0, "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    :try_start_1
    new-instance v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .end local v0    # "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 294
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v6, p1

    .line 293
    invoke-direct/range {v0 .. v6}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;-><init>(Lcom/android/server/cover/GracefulNfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    .line 295
    .local v0, "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 296
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v8

    .line 269
    return-void

    .line 282
    .end local v0    # "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
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
    .line 330
    const-string v1, "CoverManager.GracefulNfcLedCoverController"

    const-string v2, "removeLedNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 332
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 333
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 329
    return-void
.end method

.method sendDataToNfcLedCover(I[B)V
    .locals 4
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    .line 238
    iget-boolean v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedCoverAttached:Z

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v1

    if-nez v1, :cond_2

    .line 245
    const-string v1, "CoverManager.GracefulNfcLedCoverController"

    const-string v2, "sendDataToLedCover : Nfc Service not available"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void

    .line 240
    :cond_1
    const-string v1, "CoverManager.GracefulNfcLedCoverController"

    const-string v2, "sendDataToLedCover : Not attached LED Cover"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-void

    .line 251
    :cond_2
    const-string v1, "CoverManager.GracefulNfcLedCoverController"

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

    .line 254
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 256
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 257
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 258
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 260
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 264
    invoke-direct {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->clearRetryCountDelayedMsg()V

    .line 265
    iget-object v1, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 236
    return-void
.end method

.method public sendPowerKeyToCover()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendEmptyMessage(I)Z

    .line 394
    return-void
.end method

.method public sendSystemEvent(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, -0x1

    .line 337
    const-string v5, "event_type"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 338
    .local v0, "event":I
    packed-switch v0, :pswitch_data_0

    .line 336
    :goto_0
    return-void

    .line 340
    :pswitch_0
    const-string v5, "lcd_touch_listener_type"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 341
    .local v4, "touchListenerType":I
    const-string v5, "lcd_touch_listener_respone"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 342
    .local v3, "response":I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 343
    .local v1, "msg":Landroid/os/Message;
    const/4 v5, 0x3

    iput v5, v1, Landroid/os/Message;->what:I

    .line 345
    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 347
    iput v3, v1, Landroid/os/Message;->arg2:I

    .line 348
    iget-object v5, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v5, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 351
    .end local v1    # "msg":Landroid/os/Message;
    .end local v3    # "response":I
    .end local v4    # "touchListenerType":I
    :pswitch_1
    iget-object v5, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 352
    .local v2, "msgLedOffDisabled":Landroid/os/Message;
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 353
    iget-object v5, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v5, v2}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 338
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

    .line 302
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

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

    .line 303
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 302
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 303
    const-string v4, ", uid : "

    .line 302
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 303
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 302
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v3, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 307
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;

    .line 308
    .local v0, "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    if-eqz v0, :cond_0

    .line 309
    iget-object v2, v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 310
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 312
    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    const/4 v2, 0x1

    monitor-exit v3

    return v2

    .end local v0    # "listener":Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedTouchListenerInfo;
    :cond_1
    monitor-exit v3

    .line 318
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

    const-string v3, "UnregisterNfcTouchListener: listener does not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return v5

    .line 306
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

    .line 186
    if-eqz p1, :cond_1

    if-ne p2, v5, :cond_1

    const/4 v0, 0x1

    .line 187
    .local v0, "isCoverAttached":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedCoverAttached:Z

    if-eq v2, v0, :cond_0

    .line 188
    iput-boolean v0, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedCoverAttached:Z

    .line 189
    iget-boolean v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mIsLedCoverAttached:Z

    if-nez v2, :cond_3

    .line 194
    const-string v2, "CoverManager.GracefulNfcLedCoverController"

    const-string v4, "NfcLedCover detached, start clearing all flags, messages, wakelocks"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 196
    .local v1, "msg":Landroid/os/Message;
    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :goto_1
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 197
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 207
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "nfc_led_cover_test"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/server/cover/GracefulNfcLedCoverController;->TEST:I

    .line 185
    return-void

    .line 186
    .end local v0    # "isCoverAttached":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isCoverAttached":Z
    goto :goto_0

    .restart local v1    # "msg":Landroid/os/Message;
    :cond_2
    move v2, v3

    .line 196
    goto :goto_1

    .line 198
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/cover/GracefulNfcLedCoverController;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mLedVersionCheckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v2}, Lcom/android/server/cover/GracefulNfcLedCoverController;->acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V

    .line 202
    iget-object v2, p0, Lcom/android/server/cover/GracefulNfcLedCoverController;->mHandler:Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Lcom/android/server/cover/GracefulNfcLedCoverController$NfcLedCoverControllerHandler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method
