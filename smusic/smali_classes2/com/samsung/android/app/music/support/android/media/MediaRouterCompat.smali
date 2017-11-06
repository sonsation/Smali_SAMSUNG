.class public Lcom/samsung/android/app/music/support/android/media/MediaRouterCompat;
.super Ljava/lang/Object;
.source "MediaRouterCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getA2dpRoute(Landroid/media/MediaRouter;)Landroid/media/MediaRouter$RouteInfo;
    .locals 9
    .param p0, "mediaRouter"    # Landroid/media/MediaRouter;

    .prologue
    .line 12
    sget-boolean v5, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v5, :cond_2

    .line 14
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "bluetooth_a2dp_audio_route_name"

    const-string/jumbo v7, "string"

    const-string v8, "android"

    .line 15
    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 16
    .local v1, "id":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 17
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v3

    .line 18
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 19
    invoke-virtual {p0, v0}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    .line 20
    .local v2, "ri":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 26
    .end local v0    # "i":I
    .end local v1    # "id":I
    .end local v2    # "ri":Landroid/media/MediaRouter$RouteInfo;
    .end local v3    # "size":I
    .end local v4    # "str":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 18
    .restart local v0    # "i":I
    .restart local v1    # "id":I
    .restart local v2    # "ri":Landroid/media/MediaRouter$RouteInfo;
    .restart local v3    # "size":I
    .restart local v4    # "str":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24
    .end local v2    # "ri":Landroid/media/MediaRouter$RouteInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 26
    .end local v0    # "i":I
    .end local v1    # "id":I
    .end local v3    # "size":I
    .end local v4    # "str":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/MediaRouterSdlCompat;->getA2dpRoute(Landroid/media/MediaRouter;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    goto :goto_1
.end method
