.class public final Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicCommandReceiver;
.super Ljava/lang/Object;
.source "MusicCommandReceiver.java"

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
    .line 29
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.music.musicservicecommand"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->ACTION_AUDIO_BECOMING_NOISY_SEC:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.samsung.android.app.music.core.action.PLAYBACK_FORWARD"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.samsung.android.app.music.core.action.PLAYBACK_REWIND"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.samsung.android.app.music.core.action.MUSIC_AUTO_OFF"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.samsung.android.app.music.ui.dex.action.EXIT_MUSIC"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.sec.android.sidesync.source.SIDESYNC_CONNECTED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicCommandReceiver;->ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V
    .locals 0
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    .line 46
    return-void
.end method


# virtual methods
.method public getSupportedActions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicCommandReceiver;->ACTIONS:[Ljava/lang/String;

    return-object v0
.end method

.method public onIntentReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;

    .prologue
    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.android.music.musicservicecommand"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    const-string v2, "command"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "cmd":Ljava/lang/String;
    const-string v2, "SMUSIC-SV"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " goggle legacy command action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " command : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-static {v2, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/ExtraCommandUtils;->handleExtraCommand(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Landroid/content/Intent;Ljava/lang/String;)V

    .line 73
    .end local v1    # "cmd":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->ACTION_AUDIO_BECOMING_NOISY_SEC:Ljava/lang/String;

    .line 62
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 63
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->becomingNoisy()V

    goto :goto_0

    .line 64
    :cond_3
    const-string v2, "com.samsung.android.app.music.core.action.PLAYBACK_FORWARD"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 65
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->forward()V

    goto :goto_0

    .line 66
    :cond_4
    const-string v2, "com.samsung.android.app.music.core.action.PLAYBACK_REWIND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 67
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->rewind()V

    goto :goto_0

    .line 68
    :cond_5
    const-string v2, "com.samsung.android.app.music.core.action.MUSIC_AUTO_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 69
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->autoOff()V

    goto :goto_0

    .line 70
    :cond_6
    const-string v2, "com.samsung.android.app.music.ui.dex.action.EXIT_MUSIC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicCommandReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->exit()V

    goto :goto_0
.end method
