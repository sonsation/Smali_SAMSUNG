.class public interface abstract Lcom/samsung/android/app/music/common/player/fullplayer/option/IOptionGroup;
.super Ljava/lang/Object;
.source "IOptionGroup.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;


# virtual methods
.method public abstract inflateView(Landroid/view/View;)V
.end method

.method public abstract onGetTintInfo(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)V
.end method

.method public abstract release()V
.end method

.method public abstract setFocusable(Z)V
.end method

.method public abstract toggleFavorite(Z)Z
.end method
