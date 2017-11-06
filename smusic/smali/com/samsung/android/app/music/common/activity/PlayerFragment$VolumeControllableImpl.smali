.class Lcom/samsung/android/app/music/common/activity/PlayerFragment$VolumeControllableImpl;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/PlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VolumeControllableImpl"
.end annotation


# instance fields
.field private final mVolumeControllable:Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;)V
    .locals 0
    .param p1, "volumeControllable"    # Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;

    .prologue
    .line 1356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1357
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$VolumeControllableImpl;->mVolumeControllable:Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;

    .line 1358
    return-void
.end method


# virtual methods
.method public getDexVolumeController()Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;
    .locals 1

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$VolumeControllableImpl;->mVolumeControllable:Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;->getDexVolumeController()Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;

    move-result-object v0

    return-object v0
.end method

.method public hideVolumePanel()V
    .locals 1

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$VolumeControllableImpl;->mVolumeControllable:Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;->hideVolumePanel()V

    .line 1368
    return-void
.end method

.method public updateVolumeUi()V
    .locals 1

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$VolumeControllableImpl;->mVolumeControllable:Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/player/volume/VolumeControllable;->updateVolumeUi()V

    .line 1363
    return-void
.end method
