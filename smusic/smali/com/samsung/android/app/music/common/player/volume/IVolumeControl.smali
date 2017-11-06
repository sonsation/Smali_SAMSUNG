.class public interface abstract Lcom/samsung/android/app/music/common/player/volume/IVolumeControl;
.super Ljava/lang/Object;
.source "IVolumeControl.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnVolumeControlChangedListener;,
        Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnPanelVisibilityChangedListener;
    }
.end annotation


# virtual methods
.method public abstract adjustVolume(ZI)Z
.end method

.method public abstract ensurePanel()V
.end method

.method public abstract hidePanel()V
.end method

.method public abstract isShowingPanel()Z
.end method

.method public abstract setContentDescription(Landroid/view/View;)V
.end method

.method public abstract showPanel()V
.end method

.method public abstract toggleMute()V
.end method

.method public abstract updateIcon()V
.end method

.method public abstract updatePanel()V
.end method
