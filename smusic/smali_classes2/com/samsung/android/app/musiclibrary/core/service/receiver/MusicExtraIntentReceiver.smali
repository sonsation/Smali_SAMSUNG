.class public final Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicExtraIntentReceiver;
.super Ljava/lang/Object;
.source "MusicExtraIntentReceiver.java"

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
    .line 21
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.SCREEN_ON"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.intent.action.SCREEN_OFF"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.samsung.cover.REQUEST_REMOTEVIEWS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.samsung.android.app.music.core.state.FAVORITE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.samsung.android.app.music.core.state.PLAYED_INFO_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/app/music/support/samsung/emergencymode/EmergencyConstantsCompat;->EMERGENCY_STATE_CHANGED:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicExtraIntentReceiver;->ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V
    .locals 0
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicExtraIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    .line 35
    return-void
.end method


# virtual methods
.method public getSupportedActions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicExtraIntentReceiver;->ACTIONS:[Ljava/lang/String;

    return-object v0
.end method

.method public onIntentReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "action":Ljava/lang/String;
    const-string v2, "SV"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MusicExtraIntentReceiver action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicExtraIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v2, v0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 49
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicExtraIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v2, v0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 50
    :cond_2
    const-string v2, "com.samsung.cover.REQUEST_REMOTEVIEWS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 51
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicExtraIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v2, v0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 52
    :cond_3
    const-string v2, "com.samsung.android.app.music.core.state.FAVORITE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 53
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicExtraIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    const-string v3, "com.samsung.android.app.music.core.state.FAVORITE_CHANGED"

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 54
    invoke-interface {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 56
    :cond_4
    const-string v2, "com.samsung.android.app.music.core.state.PLAYED_INFO_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 57
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicExtraIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    const-string v3, "com.samsung.android.app.music.core.state.PLAYED_INFO_CHANGED"

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 58
    invoke-interface {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 60
    :cond_5
    sget-object v2, Lcom/samsung/android/app/music/support/samsung/emergencymode/EmergencyConstantsCompat;->EMERGENCY_STATE_CHANGED:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    const-string/jumbo v2, "reason"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 62
    .local v1, "reason":I
    sget v2, Lcom/samsung/android/app/music/support/samsung/emergencymode/EmergencyConstantsCompat;->MODE_ENABLED:I

    if-eq v1, v2, :cond_6

    sget v2, Lcom/samsung/android/app/music/support/samsung/emergencymode/EmergencyConstantsCompat;->MODE_ENABLING:I

    if-ne v1, v2, :cond_0

    .line 64
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicExtraIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v2, v0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 65
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicExtraIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    const-string v2, "SMUSIC-SV"

    const-string v3, "The emergency mode is entering. The play back is terminated. And notify MusicInfo."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicExtraIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->stop()V

    goto :goto_0
.end method
