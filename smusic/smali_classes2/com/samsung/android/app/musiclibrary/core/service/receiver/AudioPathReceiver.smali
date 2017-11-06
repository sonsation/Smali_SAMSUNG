.class public final Lcom/samsung/android/app/musiclibrary/core/service/receiver/AudioPathReceiver;
.super Ljava/lang/Object;
.source "AudioPathReceiver.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/receiver/IntentReceiverObserver;


# static fields
.field private static final ACTIONS:[Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV"

.field private static final TAG:Ljava/lang/String; = "SV"


# instance fields
.field private final mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.media.action.HDMI_AUDIO_PLUG"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/library/SecIntent;->WIFIDISPLAY_SESSION_STATE:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/library/SecIntent;->WIFIDISPLAY_SOURCE_STATE:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "android.intent.action.HEADSET_PLUG"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/AudioPathReceiver;->ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V
    .locals 0
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/AudioPathReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    .line 55
    return-void
.end method

.method private isWifiDisplayIntent(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 117
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/SecIntent;->WIFIDISPLAY_SOURCE_STATE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/SecIntent;->WIFIDISPLAY_SESSION_STATE:Ljava/lang/String;

    .line 118
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needToNotify(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 112
    const-string v0, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/AudioPathReceiver;->isWifiDisplayIntent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SideSyncManager;->isSideSyncConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getSupportedActions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/AudioPathReceiver;->ACTIONS:[Ljava/lang/String;

    return-object v0
.end method

.method public onIntentReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "action":Ljava/lang/String;
    const-string v9, "SV"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AudioPathReceiver action : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/AudioPathReceiver;->isWifiDisplayIntent(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 69
    const-string/jumbo v9, "state"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v5, :cond_1

    .line 70
    .local v5, "isConnected":Z
    :goto_0
    const-string v9, "by_user"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 71
    .local v1, "byUser":Z
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/AudioPathReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v8, v5, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->setWfdState(ZZ)V

    .line 97
    .end local v1    # "byUser":Z
    .end local v5    # "isConnected":Z
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/AudioPathReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v8, p2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->audioPathChanged(Landroid/content/Intent;)V

    .line 104
    return-void

    :cond_1
    move v5, v8

    .line 69
    goto :goto_0

    .line 72
    :cond_2
    const-string v9, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 75
    const-string/jumbo v9, "state"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v5, :cond_3

    move v3, v5

    .line 76
    .local v3, "connected":Z
    :goto_2
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/AudioPathReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v8, v3}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->setHdmiConnected(Z)V

    goto :goto_1

    .end local v3    # "connected":Z
    :cond_3
    move v3, v8

    .line 75
    goto :goto_2

    .line 83
    :cond_4
    const-string v9, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 84
    const-string v9, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 85
    .local v7, "state":I
    const-string v9, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 86
    .local v6, "prevState":I
    const-string v8, "SMUSIC-SV"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BT ACTION_SINK_STATE_CHANGED "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/AudioPathReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    const-string v9, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 88
    invoke-interface {v8, v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 90
    .end local v6    # "prevState":I
    .end local v7    # "state":I
    :cond_5
    const-string v9, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 91
    const-string/jumbo v9, "state"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 92
    .local v2, "connect":I
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 93
    .local v4, "extras":Landroid/os/Bundle;
    if-ne v2, v5, :cond_6

    :goto_3
    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 94
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/AudioPathReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    const-string v9, "android.intent.action.HEADSET_PLUG"

    invoke-interface {v8, v9, v4}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_6
    move v5, v8

    .line 93
    goto :goto_3
.end method
