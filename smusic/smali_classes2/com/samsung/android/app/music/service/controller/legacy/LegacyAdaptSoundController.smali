.class public final Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;
.super Ljava/lang/Object;
.source "LegacyAdaptSoundController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController$onErrorListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdaptSound:Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;

.field private final mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

.field private final mBackgroundChangeListener:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mErrorListener:Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController$onErrorListener;

.field private mIsAdaptSoundOn:Z

.field private mIsInitialMeta:Z

.field private final mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

.field private mWarnAdaptSound:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/SmartVolumeUpdater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->TAG:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController$onErrorListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "player"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;
    .param p3, "listener"    # Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController$onErrorListener;

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mIsAdaptSoundOn:Z

    .line 48
    iput-boolean v1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mWarnAdaptSound:Z

    .line 50
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mIsInitialMeta:Z

    .line 66
    new-instance v1, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController$1;-><init>(Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mBackgroundChangeListener:Landroid/content/BroadcastReceiver;

    .line 54
    iput-object p1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    .line 56
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    .line 57
    iput-object p3, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mErrorListener:Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController$onErrorListener;

    .line 59
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->isAdaptSoundOn(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mIsAdaptSoundOn:Z

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 62
    .local v0, "f":Landroid/content/IntentFilter;
    const-string v1, "com.sec.hearingadjust.checkmusic"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mBackgroundChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    return-void
.end method

.method private ensureAdaptSound(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getAudioSessionId()I

    move-result v1

    .line 128
    .local v1, "id":I
    iget-object v2, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mAdaptSound:Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;

    if-nez v2, :cond_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 129
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;-><init>(Landroid/content/Context;II)V

    iput-object v2, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mAdaptSound:Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;

    .line 130
    sget-object v2, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->TAG:Ljava/lang/String;

    const-string v3, "Adapt sound created"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v1    # "id":I
    :cond_0
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ensureAdaptSound() mIsAdaptSoundOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mIsAdaptSoundOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " exception msg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 138
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetAdaptSound()V
    .locals 4

    .prologue
    .line 104
    iget-object v1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mAdaptSound:Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mAdaptSound:Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->release()V

    .line 110
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mAdaptSound:Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;

    .line 113
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->ensureAdaptSound(Landroid/content/Context;)V

    .line 114
    iget-boolean v1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mIsAdaptSoundOn:Z

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->setAdaptSound(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetAdaptSound() mIsAdaptSoundOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mIsAdaptSoundOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception msg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 121
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setAdaptSound(ZZ)V
    .locals 4
    .param p1, "isOn"    # Z
    .param p2, "showToast"    # Z

    .prologue
    .line 79
    sget-object v1, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAdaptSound "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " show toast ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    if-eqz p1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->ensureAdaptSound(Landroid/content/Context;)V

    .line 83
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mIsAdaptSoundOn:Z

    .line 85
    iget-object v1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mAdaptSound:Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;

    if-nez v1, :cond_2

    .line 87
    if-nez p1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->setAdaptSoundOn(Landroid/content/Context;Z)V

    .line 101
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isHeadsetOrBT()Z

    move-result v0

    .line 94
    .local v0, "connected":Z
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->updateAdaptSound(Z)V

    .line 95
    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->warningAdaptSound()V

    .line 100
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->setAdaptSoundOn(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private updateAdaptSound(Z)V
    .locals 5
    .param p1, "connected"    # Z

    .prologue
    const/4 v4, 0x0

    .line 143
    iput-boolean v4, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mWarnAdaptSound:Z

    .line 144
    iget-object v1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mAdaptSound:Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;

    if-nez v1, :cond_0

    .line 168
    :goto_0
    return-void

    .line 149
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mIsAdaptSoundOn:Z

    if-eqz v1, :cond_2

    .line 150
    if-eqz p1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mAdaptSound:Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->activate(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_1
    sget-object v1, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAdaptSound mWarnAdaptSound "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mWarnAdaptSound:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Connected ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mWarnAdaptSound:Z

    .line 155
    iget-object v1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mAdaptSound:Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->activate(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAdaptSound() mIsAdaptSoundOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mIsAdaptSoundOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception msg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 163
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iput-boolean v4, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mIsAdaptSoundOn:Z

    goto :goto_1

    .line 158
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mAdaptSound:Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->activate(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private updateByConnection(Z)V
    .locals 2
    .param p1, "isConnected"    # Z

    .prologue
    .line 231
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mContext:Landroid/content/Context;

    .line 232
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isHeadsetOrBT()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 233
    .local v0, "checkConnected":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->updateAdaptSound(Z)V

    .line 234
    if-nez v0, :cond_1

    .line 235
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->warningAdaptSound()V

    .line 237
    :cond_1
    return-void

    .line 232
    .end local v0    # "checkConnected":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private warningAdaptSound()V
    .locals 3

    .prologue
    .line 172
    sget-object v0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "warningAdaptSound() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mWarnAdaptSound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mWarnAdaptSound:Z

    if-eqz v0, :cond_0

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mWarnAdaptSound:Z

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mErrorListener:Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController$onErrorListener;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mErrorListener:Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController$onErrorListener;

    const v1, 0x7f0a01c2

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController$onErrorListener;->onError(I)V

    .line 182
    :cond_0
    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 205
    const-string v4, "com.sec.hearingadjust.checkmusic"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 210
    iget-object v4, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->isAdaptSoundOn(Landroid/content/Context;)Z

    move-result v2

    .line 211
    .local v2, "isOn":Z
    invoke-direct {p0, v2, v0}, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->setAdaptSound(ZZ)V

    .line 212
    if-eqz v2, :cond_0

    .line 215
    iget-object v4, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mContext:Landroid/content/Context;

    const-string v5, "ADSD"

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 228
    .end local v2    # "isOn":Z
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    const-string v4, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 218
    const-string v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 219
    .local v3, "state":I
    if-nez v3, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 221
    .local v0, "connected":Z
    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->updateByConnection(Z)V

    goto :goto_0

    .line 222
    .end local v0    # "connected":Z
    .end local v3    # "state":I
    :cond_4
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 223
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->updateByConnection(Z)V

    goto :goto_0

    .line 224
    :cond_5
    const-string v4, "com.samsung.android.app.music.core.state.SET_ADAPT_SOUND"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 225
    const-string v4, "com.samsung.android.app.music.core.state.SET_ADAPT_SOUND"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 226
    .local v1, "enabled":Z
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->setAdaptSound(ZZ)V

    goto :goto_0
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 1
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mIsInitialMeta:Z

    .line 187
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mIsInitialMeta:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->resetAdaptSound()V

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mIsInitialMeta:Z

    .line 195
    :cond_0
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mBackgroundChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mAdaptSound:Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mAdaptSound:Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->release()V

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/controller/legacy/LegacyAdaptSoundController;->mAdaptSound:Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;

    .line 246
    :cond_0
    return-void
.end method
