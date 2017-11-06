.class public Lcom/samsung/android/app/music/support/sdl/android/media/MediaRouterSdlCompat;
.super Ljava/lang/Object;
.source "MediaRouterSdlCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getA2dpRoute(Landroid/media/MediaRouter;)Landroid/media/MediaRouter$RouteInfo;
    .locals 1
    .param p0, "mediaRouter"    # Landroid/media/MediaRouter;

    .prologue
    .line 7
    invoke-virtual {p0}, Landroid/media/MediaRouter;->getA2dpRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    return-object v0
.end method
