.class public interface abstract Lcom/samsung/android/app/music/common/player/IAlbumArt;
.super Ljava/lang/Object;
.source "IAlbumArt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/player/IAlbumArt$AlbumArtConverter;
    }
.end annotation


# virtual methods
.method public abstract getAlbumView()Landroid/view/View;
.end method

.method public abstract setAlbumArtConverter(Lcom/samsung/android/app/music/common/player/IAlbumArt$AlbumArtConverter;)V
.end method

.method public abstract setAlbumClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setDefaultAlbumResource(I)V
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
.end method
