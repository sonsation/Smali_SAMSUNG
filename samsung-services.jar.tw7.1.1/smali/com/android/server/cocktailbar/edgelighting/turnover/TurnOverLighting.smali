.class public Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;
.super Landroid/os/Handler;
.source "TurnOverLighting.java"

# interfaces
.implements Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;,
        Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateIdle;,
        Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateNotification;,
        Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateRinging;,
        Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;
    }
.end annotation


# static fields
.field private static final MSG_EXPIRE_SCREEN_CHECKER:I = 0x1

.field public static final SCREEN_DOWN:I = 0x1

.field public static final SCREEN_UNKNOWN:I = 0x0

.field public static final SCREEN_UP:I = 0x2

.field private static final STATE_MODE_CALL:I = 0x2

.field private static final STATE_MODE_IDLE:I = 0x0

.field private static final STATE_MODE_NOTIFICATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TurnOverLighting"

.field private static final TIMEOUT:I = 0x2710


# instance fields
.field private mCurrentStateMode:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;

.field private mListener:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;

.field private mScreenChecker:Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;

.field private mScreenState:I


# direct methods
.method static synthetic -get0(Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;)Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mListener:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;)Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mScreenChecker:Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 32
    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateIdle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateIdle;-><init>(Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateIdle;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mScreenState:I

    .line 37
    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;

    invoke-direct {v0, p1}, Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mScreenChecker:Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;

    .line 36
    return-void
.end method

.method private stopTurnOverLightingDelayed()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 75
    invoke-virtual {p0, v2}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0, v2}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->removeMessages(I)V

    .line 78
    :cond_0
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->sendEmptyMessageDelayed(IJ)Z

    .line 74
    return-void
.end method

.method private stopTurnOverLightingInternal()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    iput v2, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mScreenState:I

    .line 83
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;

    invoke-interface {v0}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;->getMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 81
    :goto_0
    return-void

    .line 86
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mScreenChecker:Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/turnover/ScreenChecker;->cancel()V

    .line 87
    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateIdle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateIdle;-><init>(Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateIdle;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;

    .line 88
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mListener:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;

    invoke-interface {v0, v2}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;->onIdle(Z)V

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getScreenState()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mScreenState:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 108
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->stopTurnOverLightingInternal()V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onChanged(Z)V
    .locals 3
    .param p1, "screenDown"    # Z

    .prologue
    .line 97
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 98
    .local v0, "newScreenState":I
    :goto_0
    iget v1, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mScreenState:I

    if-eq v1, v0, :cond_0

    .line 99
    iput v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mScreenState:I

    .line 100
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;

    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mScreenState:I

    invoke-interface {v1, v2}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;->onScreenChanged(I)V

    .line 96
    :cond_0
    return-void

    .line 97
    .end local v0    # "newScreenState":I
    :cond_1
    const/4 v0, 0x2

    .restart local v0    # "newScreenState":I
    goto :goto_0
.end method

.method public setTurnOverLightingListener(Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mListener:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;

    .line 40
    return-void
.end method

.method public startNotificationLighting()V
    .locals 4

    .prologue
    .line 45
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;

    invoke-interface {v1}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;->onNotification()Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;

    move-result-object v0

    .line 46
    .local v0, "nextState":Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;
    invoke-interface {v0}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;->getMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 53
    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;

    .line 56
    :goto_0
    :pswitch_0
    const-string v1, "TurnOverLighting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startNotificationLighting: mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;

    invoke-interface {v3}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;->getMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mScreenState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->stopTurnOverLightingDelayed()V

    .line 44
    return-void

    .line 48
    :pswitch_1
    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startRingingLighting()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;

    invoke-interface {v0}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;->onRinging()Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->mCurrentStateMode:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;

    .line 62
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->stopTurnOverLightingDelayed()V

    .line 60
    return-void
.end method

.method public stopTurnOverLighting()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->removeMessages(I)V

    .line 67
    invoke-direct {p0}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->stopTurnOverLightingInternal()V

    .line 65
    return-void
.end method
