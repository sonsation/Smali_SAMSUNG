.class public interface abstract Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;
.super Ljava/lang/Object;
.source "SyncServiceArtworkLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ServiceArtworkLoader"
.end annotation


# virtual methods
.method public abstract getMaxRequestDuration(Landroid/net/Uri;)J
.end method

.method public abstract isDiskCached(Landroid/net/Uri;)Z
.end method

.method public abstract isMultiResolution(Landroid/net/Uri;)Z
.end method

.method public abstract isRemote(Landroid/net/Uri;)Z
.end method

.method public abstract loadArtwork(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract uriRegexp()Ljava/lang/String;
.end method
