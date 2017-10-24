.class public Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnHeadsetListener:Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver;->TAG:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver;->mOnHeadsetListener:Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;

    .line 38
    return-void
.end method

.method private updateBtHeadSetConnectionInfo(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 94
    const-string/jumbo v1, "android.bluetooth.profile.extra.STATE"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 96
    .local v0, "state":I
    sget-object v1, Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateBTHeadSetConnectionInfo() state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    packed-switch v0, :pswitch_data_0

    .line 93
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 100
    :pswitch_1
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver;->mOnHeadsetListener:Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver;->mOnHeadsetListener:Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;

    invoke-interface {v1}, Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;->onHeadsetConnected()V

    goto :goto_0

    .line 105
    :pswitch_2
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver;->mOnHeadsetListener:Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver;->mOnHeadsetListener:Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;

    invoke-interface {v1}, Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;->onHeadsetDisconnected()V

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    return-void

    .line 64
    :cond_0
    sget-object v1, Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string/jumbo v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    invoke-virtual {p0, p2}, Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver;->updateHeadSetConnectionInfo(Landroid/content/Intent;)V

    .line 58
    :cond_1
    :goto_0
    return-void

    .line 68
    :cond_2
    const-string/jumbo v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    invoke-direct {p0, p2}, Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver;->updateBtHeadSetConnectionInfo(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public registerReceiver()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 45
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    const-string/jumbo v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 43
    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterReceiver()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 51
    return-void
.end method

.method public updateHeadSetConnectionInfo(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 74
    const-string/jumbo v1, "state"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 76
    .local v0, "state":I
    sget-object v1, Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateHeadSetDeviceInfo() state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    packed-switch v0, :pswitch_data_0

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 80
    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver;->mOnHeadsetListener:Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver;->mOnHeadsetListener:Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;

    invoke-interface {v1}, Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;->onHeadsetConnected()V

    goto :goto_0

    .line 85
    :pswitch_1
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver;->mOnHeadsetListener:Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver;->mOnHeadsetListener:Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;

    invoke-interface {v1}, Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;->onHeadsetDisconnected()V

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
