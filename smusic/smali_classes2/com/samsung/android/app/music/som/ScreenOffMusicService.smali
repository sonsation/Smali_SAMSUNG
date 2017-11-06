.class public Lcom/samsung/android/app/music/som/ScreenOffMusicService;
.super Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;
.source "ScreenOffMusicService.java"


# static fields
.field private static final NOTIFY_ACTION:Ljava/lang/String; = "com.sec.android.app.music.intent.action.NOTIFY_SCREEN_OFF_MUSIC"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBrandNameStringResId()I
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_REPLACE_SEC_BRAND_AS_GALAXY:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a0483

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0a046d

    goto :goto_0
.end method

.method protected getControlButtonsLayoutResId()I
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f040076

    return v0
.end method

.method protected getDefaultPlayerController()Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/samsung/android/app/music/common/ServicePlayerController;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/ServicePlayerController;-><init>()V

    .line 48
    .local v0, "controller":Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;
    invoke-static {}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->getScreenOffPlayerLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->setPlayerLogger(Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V

    .line 49
    return-object v0
.end method

.method protected getNotifyAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "com.sec.android.app.music.intent.action.NOTIFY_SCREEN_OFF_MUSIC"

    return-object v0
.end method

.method public onCloseClick()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->onCloseClick()V

    .line 72
    invoke-static {}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->sendScreenOffCloseEvent()V

    .line 73
    return-void
.end method

.method protected onCreateActivityMediaChangeCenter()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter",
            "<+",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/som/ScreenOffMusicService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/app/music/service/PlayerService;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 54
    const-string v2, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    const-string v2, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 56
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 57
    .local v1, "queueType":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/app/music/som/ScreenOffMusicService;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/som/ScreenOffMusicService;->changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 59
    new-instance v0, Lcom/samsung/android/app/music/common/RadioPlayerController;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/RadioPlayerController;-><init>()V

    .line 60
    .local v0, "controller":Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;
    invoke-static {}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->getScreenOffPlayerLogger()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->setPlayerLogger(Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/som/ScreenOffMusicService;->setController(Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V

    .line 67
    .end local v0    # "controller":Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;
    .end local v1    # "queueType":I
    :cond_0
    :goto_0
    return-void

    .line 63
    .restart local v1    # "queueType":I
    :cond_1
    invoke-virtual {p0, p0}, Lcom/samsung/android/app/music/som/ScreenOffMusicService;->changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/app/music/som/ScreenOffMusicService;->getDefaultPlayerController()Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/som/ScreenOffMusicService;->setController(Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V

    goto :goto_0
.end method
