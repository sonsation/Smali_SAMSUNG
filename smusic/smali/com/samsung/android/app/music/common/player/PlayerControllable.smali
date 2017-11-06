.class public interface abstract Lcom/samsung/android/app/music/common/player/PlayerControllable;
.super Ljava/lang/Object;
.source "PlayerControllable.java"


# virtual methods
.method public abstract isLaunchableDetails()Z
.end method

.method public abstract isShowingLyrics()Z
.end method

.method public abstract isShowingQueue()Z
.end method

.method public abstract launchChangePlayer(Z)V
.end method

.method public abstract launchDetails(Landroid/os/Bundle;)V
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract launchDmsDlnaDetailsDialog()V
.end method

.method public abstract showLyrics()Z
.end method

.method public abstract toggleQueue()V
.end method

.method public abstract updateFavorite(Z)Z
.end method
