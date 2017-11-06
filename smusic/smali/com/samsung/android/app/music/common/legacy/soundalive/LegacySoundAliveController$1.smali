.class Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController$1;
.super Ljava/lang/Object;
.source "LegacySoundAliveController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController$1;->this$0:Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrmRequest(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 69
    return-void
.end method

.method public onError(IILandroid/os/Bundle;)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "extra"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 73
    return-void
.end method

.method public onExtraDataChanged(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 77
    return-void
.end method

.method public onPlayerStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0
    .param p1, "state"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 57
    return-void
.end method

.method public onPrepared(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V
    .locals 1
    .param p1, "player"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController$1;->this$0:Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->loadSoundAlive()V

    .line 53
    return-void
.end method

.method public onServerDied()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public onTrackEnded(Z)V
    .locals 0
    .param p1, "isGaplessPlaying"    # Z

    .prologue
    .line 61
    return-void
.end method
