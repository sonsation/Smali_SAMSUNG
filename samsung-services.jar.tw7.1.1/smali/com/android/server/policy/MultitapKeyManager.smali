.class public Lcom/android/server/policy/MultitapKeyManager;
.super Ljava/lang/Object;
.source "MultitapKeyManager.java"

# interfaces
.implements Lcom/android/server/policy/MultitapKeyPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/MultitapKeyManager$1;,
        Lcom/android/server/policy/MultitapKeyManager$2;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final SAFE_DEBUG:Z

.field private static final SEC_DOUBLE_TAP_TIMEOUT:I

.field private static final TAG:Ljava/lang/String; = "MultitapKeyManager"


# instance fields
.field mHandler:Landroid/os/Handler;

.field private mHomeConsumed:Z

.field private mHomeDoubleEventTime:J

.field private mHomeDoubleTapPending:Z

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mHomeFakeTripleTapPending:Z

.field private mHomeKeyLastEventTime:J

.field private mHomeTripleTapPending:Z

.field private final mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mLaunchHome:Z

.field mPWM:Lcom/android/server/policy/PhoneWindowManager;

.field private mPowerConsumed:Z

.field private mPowerDoubleTapPending:Z

.field private mPowerTripleEventTime:J

.field private mPowerTripleTapPending:Z

.field private mPowerTripleTapReady:Z

.field mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/MultitapKeyManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleTapPending:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/MultitapKeyManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/MultitapKeyManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeTripleTapPending:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/MultitapKeyManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mLaunchHome:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/MultitapKeyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleTapPending:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/policy/MultitapKeyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/policy/MultitapKeyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeTripleTapPending:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/policy/MultitapKeyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/MultitapKeyManager;->mLaunchHome:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/MultitapKeyManager;->SAFE_DEBUG:Z

    .line 76
    sget-boolean v0, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_IMMERSIVE_FORCE_TOUCH:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    :goto_0
    sput v0, Lcom/android/server/policy/MultitapKeyManager;->SEC_DOUBLE_TAP_TIMEOUT:I

    .line 52
    return-void

    .line 76
    :cond_0
    const/16 v0, 0xaa

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    .line 62
    iput-boolean v1, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleTapPending:Z

    .line 63
    iput-boolean v1, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeTripleTapPending:Z

    .line 64
    iput-boolean v1, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    .line 65
    iput-boolean v1, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeConsumed:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/server/policy/MultitapKeyManager;->mPowerDoubleTapPending:Z

    .line 67
    iput-boolean v1, p0, Lcom/android/server/policy/MultitapKeyManager;->mPowerTripleTapPending:Z

    .line 68
    iput-boolean v1, p0, Lcom/android/server/policy/MultitapKeyManager;->mPowerTripleTapReady:Z

    .line 69
    iput-boolean v1, p0, Lcom/android/server/policy/MultitapKeyManager;->mPowerConsumed:Z

    .line 70
    iput-wide v2, p0, Lcom/android/server/policy/MultitapKeyManager;->mPowerTripleEventTime:J

    .line 71
    iput-wide v2, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleEventTime:J

    .line 72
    iput-wide v2, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeKeyLastEventTime:J

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mLaunchHome:Z

    .line 244
    new-instance v0, Lcom/android/server/policy/MultitapKeyManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MultitapKeyManager$1;-><init>(Lcom/android/server/policy/MultitapKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 278
    new-instance v0, Lcom/android/server/policy/MultitapKeyManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MultitapKeyManager$2;-><init>(Lcom/android/server/policy/MultitapKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 52
    return-void
.end method

.method private handleTripleTapOnHome()V
    .locals 2

    .prologue
    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeConsumed:Z

    .line 261
    const-string v0, "MultitapKeyManager"

    const-string v1, "handleTripleTapOnHome()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isEasyOneHandEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->toggleEasyOneHand()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    return-void

    .line 264
    :cond_1
    return-void

    .line 271
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->sendBroadcastForAccessibility()V

    .line 258
    :goto_0
    return-void

    .line 274
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->callAccessibilityTalkbackMode()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchMultitapKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/MultitapKeyManager;->dispatchMultitapKeyEvent(Landroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public dispatchMultitapKeyEvent(Landroid/view/KeyEvent;Z)Z
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "force"    # Z

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 90
    .local v2, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    .line 91
    .local v3, "repeatCount":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v1, 0x1

    .line 92
    .local v1, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    .line 94
    .local v0, "canceled":Z
    packed-switch v2, :pswitch_data_0

    .line 175
    :cond_0
    :goto_1
    const/4 v4, 0x0

    return v4

    .line 91
    .end local v0    # "canceled":Z
    .end local v1    # "down":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "down":Z
    goto :goto_0

    .line 100
    .restart local v0    # "canceled":Z
    :pswitch_0
    if-nez v1, :cond_b

    .line 101
    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    if-eqz v4, :cond_6

    :cond_2
    const/4 v4, 0x0

    :goto_2
    iput-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mLaunchHome:Z

    .line 102
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeKeyLastEventTime:J

    .line 104
    iget-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeConsumed:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    if-eqz v4, :cond_7

    .line 109
    :cond_3
    iget-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeTripleTapPending:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    if-eqz v4, :cond_8

    .line 110
    :cond_4
    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 111
    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    sget v6, Lcom/android/server/policy/MultitapKeyManager;->SEC_DOUBLE_TAP_TIMEOUT:I

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 113
    sget-boolean v4, Lcom/android/server/policy/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "MultitapKeyManager"

    const-string v5, "Home tripletap timeout runnable posted!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_5
    const/4 v4, 0x1

    return v4

    .line 101
    :cond_6
    if-nez v0, :cond_2

    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v4, v2}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    .line 105
    :cond_7
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeConsumed:Z

    .line 106
    const/4 v4, 0x1

    return v4

    .line 116
    :cond_8
    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v4, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDoubleTapLaunchEnabled(Landroid/view/KeyEvent;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isTripleTapOnHomeEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 117
    :cond_9
    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 118
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleTapPending:Z

    .line 119
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeKeyLastEventTime:J

    .line 120
    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    sget v6, Lcom/android/server/policy/MultitapKeyManager;->SEC_DOUBLE_TAP_TIMEOUT:I

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    sget-boolean v4, Lcom/android/server/policy/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_a

    const-string v4, "MultitapKeyManager"

    const-string v5, "Home doubletap timeout runnable posted!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_a
    const/4 v4, 0x1

    return v4

    .line 127
    :cond_b
    if-nez v3, :cond_0

    .line 128
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeConsumed:Z

    .line 130
    sget-boolean v4, Lcom/android/server/policy/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_c

    const-string v4, "MultitapKeyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "event.getEventTime() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleEventTime:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_e

    .line 132
    sget-boolean v4, Lcom/android/server/policy/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_d

    const-string v4, "MultitapKeyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Home doubletap wakeup time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " first="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleEventTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_d
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleEventTime:J

    .line 134
    invoke-virtual {p0, v2}, Lcom/android/server/policy/MultitapKeyManager;->handleDoubleTapLaunch(I)V

    .line 135
    const/4 v4, 0x1

    return v4

    .line 137
    :cond_e
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleEventTime:J

    .line 140
    if-nez p2, :cond_f

    iget-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleTapPending:Z

    if-nez v4, :cond_11

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-eqz v4, :cond_11

    .line 141
    :cond_f
    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v4, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDoubleTapLaunchEnabled(Landroid/view/KeyEvent;)Z

    move-result v4

    .line 140
    if-eqz v4, :cond_11

    .line 142
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    sget v6, Lcom/android/server/policy/MultitapKeyManager;->SEC_DOUBLE_TAP_TIMEOUT:I

    mul-int/lit8 v6, v6, 0x2

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleEventTime:J

    .line 143
    sget-boolean v4, Lcom/android/server/policy/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_10

    const-string v4, "MultitapKeyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Home doubletap first event time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleEventTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_10
    const/4 v4, 0x1

    return v4

    .line 147
    :cond_11
    iget-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleTapPending:Z

    if-eqz v4, :cond_15

    .line 148
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeKeyLastEventTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x28

    cmp-long v4, v4, v6

    if-gtz v4, :cond_12

    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isTripleTapOnHomeEnabled()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 154
    :cond_12
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleTapPending:Z

    .line 155
    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 156
    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isTripleTapOnHomeEnabled()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 157
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeTripleTapPending:Z

    .line 162
    :goto_3
    const/4 v4, 0x1

    return v4

    .line 149
    :cond_13
    const-string v4, "MultitapKeyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Home doubletap drop for time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeKeyLastEventTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeKeyLastEventTime:J

    goto/16 :goto_1

    .line 159
    :cond_14
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    .line 160
    invoke-virtual {p0, v2}, Lcom/android/server/policy/MultitapKeyManager;->handleDoubleTapLaunch(I)V

    goto :goto_3

    .line 163
    :cond_15
    iget-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeTripleTapPending:Z

    if-eqz v4, :cond_16

    .line 164
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeTripleTapPending:Z

    .line 165
    iget-object v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    invoke-direct {p0}, Lcom/android/server/policy/MultitapKeyManager;->handleTripleTapOnHome()V

    .line 167
    const/4 v4, 0x1

    return v4

    .line 168
    :cond_16
    iget-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    if-eqz v4, :cond_0

    .line 169
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    goto/16 :goto_1

    .line 94
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public handleDoubleTapLaunch(I)V
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->sendDoubleClickBR(I)V

    .line 182
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const-string v0, "MultitapKeyManager"

    const-string v1, "doubletap block in ProKiosk mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    const-string v0, "MultitapKeyManager"

    const-string v1, "doubletap was blocked by lgu carrier status"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void

    .line 195
    :cond_1
    invoke-static {}, Lcom/android/server/policy/SamsungPolicyProperties;->isDomesticOtaStart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    const-string v0, "MultitapKeyManager"

    const-string v1, "doubletap was blocked by OTA status"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isEnableAccessControl(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    const-string v0, "MultitapKeyManager"

    const-string v1, "doubletap block in access control"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCurrentUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_4

    .line 208
    const-string v0, "MultitapKeyManager"

    const-string v1, "doubletap block in UserSetup not complete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void

    .line 212
    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSimLocked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 213
    const-string v0, "MultitapKeyManager"

    const-string v1, "doubletap block in SimLock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-void

    .line 217
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isCarrierLocked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 218
    const-string v0, "MultitapKeyManager"

    const-string v1, "doubletap block in CarrierLock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void

    .line 229
    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getCoverStateSwitch()Z

    move-result v0

    if-nez v0, :cond_7

    .line 230
    const-string v0, "MultitapKeyManager"

    const-string v1, "cover state is close"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void

    .line 235
    :cond_7
    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/SystemKeyManager;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 236
    const-string v0, "MultitapKeyManager"

    const-string v1, "doubletap block due to SystemKeyRequested"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void

    .line 240
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeConsumed:Z

    .line 241
    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->launchDoubleTapCommand(I)V

    .line 178
    return-void
.end method

.method public init(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/SamsungWindowManagerPolicy;)V
    .locals 0
    .param p1, "phoneWindowManager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "samsungWindowManagerPolicy"    # Lcom/android/server/policy/SamsungWindowManagerPolicy;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/server/policy/MultitapKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    .line 80
    check-cast p2, Lcom/android/server/policy/SamsungPhoneWindowManager;

    .end local p2    # "samsungWindowManagerPolicy":Lcom/android/server/policy/SamsungWindowManagerPolicy;
    iput-object p2, p0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    .line 78
    return-void
.end method

.method public isHomeConsumed()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeConsumed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/MultitapKeyManager;->mHomeTripleTapPending:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
