.class public Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;
.super Landroid/os/Handler;
.source "ServiceBoxPageResetTimer.java"


# static fields
.field public static final ENABLE_RESET_TIMER:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final RESET_BLOCK_INTERVAL:J

.field private final TIMER_DELAY:J

.field private mContext:Landroid/content/Context;

.field private mIsBouncerShowing:Z

.field private mIsCoverShowing:Z

.field private mIsKeyguardOccluded:Z

.field private mIsKeyguardShowing:Z

.field private mIsNotificaionPanelExpanded:Z

.field private mIsScreenTurnedOn:Z

.field private mIsServiceBoxShowing:Z

.field private mLastResetTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->TAG:Ljava/lang/String;

    .line 30
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    sput-boolean v0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->ENABLE_RESET_TIMER:Z

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 31
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->TIMER_DELAY:J

    .line 32
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->RESET_BLOCK_INTERVAL:J

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->mLastResetTime:J

    .line 37
    iput-boolean v3, p0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->mIsKeyguardShowing:Z

    .line 38
    iput-boolean v3, p0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->mIsScreenTurnedOn:Z

    .line 39
    iput-boolean v2, p0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->mIsServiceBoxShowing:Z

    .line 40
    iput-boolean v2, p0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->mIsBouncerShowing:Z

    .line 41
    iput-boolean v2, p0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->mIsCoverShowing:Z

    .line 42
    iput-boolean v2, p0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->mIsKeyguardOccluded:Z

    .line 43
    iput-boolean v2, p0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->mIsNotificaionPanelExpanded:Z

    .line 48
    iput-object p1, p0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method

.method private cancelTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 144
    sget-object v0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "cancelTimer()"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p0, v2}, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0, v2}, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->removeMessages(I)V

    .line 143
    :cond_0
    return-void
.end method

.method private startTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 136
    sget-object v0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startTimer()"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0, v2}, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0, v2}, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->removeMessages(I)V

    .line 140
    :cond_0
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->sendEmptyMessageDelayed(IJ)Z

    .line 135
    return-void
.end method

.method private updateTimer()V
    .locals 3

    .prologue
    .line 100
    sget-boolean v0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->ENABLE_RESET_TIMER:Z

    if-nez v0, :cond_0

    .line 101
    sget-object v0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTimer() F="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->ENABLE_RESET_TIMER:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void

    .line 105
    :cond_0
    sget-object v0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->mIsKeyguardShowing:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->mIsScreenTurnedOn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->mIsServiceBoxShowing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->mIsBouncerShowing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->mIsCoverShowing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->mIsKeyguardOccluded:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->mIsNotificaionPanelExpanded:Z

    if-eqz v0, :cond_2

    .line 108
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->cancelTimer()V

    .line 109
    return-void

    .line 112
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->startTimer()V

    .line 99
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 53
    sget-object v0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "reset page"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    const-string/jumbo v1, "servicebox_clock"

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/SettingsHelper;->setServiceBoxSharePageName(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public resetTimer()V
    .locals 6

    .prologue
    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 125
    .local v0, "lastResetTime":J
    iget-wide v2, p0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->mLastResetTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 126
    return-void

    .line 128
    :cond_0
    sget-object v2, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetTimer() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iput-wide v0, p0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->mLastResetTime:J

    .line 132
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->updateTimer()V

    .line 122
    return-void
.end method

.method public setBouncerShowing(Z)V
    .locals 0
    .param p1, "isBouncerShowing"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->mIsBouncerShowing:Z

    .line 78
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->updateTimer()V

    .line 75
    return-void
.end method

.method public setCoverShowing(Z)V
    .locals 0
    .param p1, "isCoverShowing"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->mIsCoverShowing:Z

    .line 84
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->updateTimer()V

    .line 81
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 0
    .param p1, "isKeyguardShowing"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->mIsKeyguardShowing:Z

    .line 60
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->updateTimer()V

    .line 57
    return-void
.end method

.method public setScreenTurnedOn(Z)V
    .locals 0
    .param p1, "isScreenTurnedOn"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->mIsScreenTurnedOn:Z

    .line 66
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->updateTimer()V

    .line 63
    return-void
.end method

.method public setServiceBoxShowing(Z)V
    .locals 0
    .param p1, "isServiceBoxShowing"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->mIsServiceBoxShowing:Z

    .line 72
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->updateTimer()V

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ServiceBoxPageResetTimer + [F="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->ENABLE_RESET_TIMER:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->mIsKeyguardShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", st="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->mIsScreenTurnedOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->mIsServiceBoxShowing:Z

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    const-string/jumbo v1, ", b="

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->mIsBouncerShowing:Z

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    const-string/jumbo v1, ", c="

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->mIsCoverShowing:Z

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    const-string/jumbo v1, ", ko="

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->mIsKeyguardOccluded:Z

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    const-string/jumbo v1, ", n="

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/utils/ServiceBoxPageResetTimer;->mIsNotificaionPanelExpanded:Z

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    const-string/jumbo v1, "]"

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
