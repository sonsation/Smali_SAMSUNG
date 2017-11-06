.class public Lcom/samsung/android/app/music/support/android/widget/RemoteViewsCompat;
.super Ljava/lang/Object;
.source "RemoteViewsCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOuterShadowTextEffect(Landroid/widget/RemoteViews;IFFFIF)V
    .locals 1
    .param p0, "remoteView"    # Landroid/widget/RemoteViews;
    .param p1, "viewId"    # I
    .param p2, "angle"    # F
    .param p3, "offset"    # F
    .param p4, "softness"    # F
    .param p5, "color"    # I
    .param p6, "blendingOpacity"    # F

    .prologue
    .line 44
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual/range {p0 .. p6}, Landroid/widget/RemoteViews;->semAddOuterShadowTextEffect(IFFFIF)V

    .line 52
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-static/range {p0 .. p6}, Lcom/samsung/android/app/music/support/sdl/android/widget/RemoteViewsSdlCompat;->addOuterShadowTextEffect(Landroid/widget/RemoteViews;IFFFIF)V

    goto :goto_0
.end method

.method public static addStrokeTextEffect(Landroid/widget/RemoteViews;IFIF)V
    .locals 1
    .param p0, "remoteView"    # Landroid/widget/RemoteViews;
    .param p1, "viewId"    # I
    .param p2, "size"    # F
    .param p3, "color"    # I
    .param p4, "blendingOpacity"    # F

    .prologue
    .line 34
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews;->semAddStrokeTextEffect(IFIF)V

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/support/sdl/android/widget/RemoteViewsSdlCompat;->addStrokeTextEffect(Landroid/widget/RemoteViews;IFIF)V

    goto :goto_0
.end method

.method public static setOnLongClickPendingIntent(Landroid/widget/RemoteViews;Landroid/os/IBinder;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 1
    .param p0, "remoteView"    # Landroid/widget/RemoteViews;
    .param p1, "key"    # Landroid/os/IBinder;
    .param p2, "viewId"    # I
    .param p3, "downPendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "upPendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 22
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0, p2, p3}, Landroid/widget/RemoteViews;->semSetOnLongClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 24
    invoke-virtual {p0, p2, p4}, Landroid/widget/RemoteViews;->semSetOnTouchPendingIntent(ILandroid/app/PendingIntent;)V

    .line 30
    :goto_0
    return-void

    .line 27
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/support/sdl/android/widget/RemoteViewsSdlCompat;->setOnLongClickPendingIntent(Landroid/widget/RemoteViews;Landroid/os/IBinder;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static setViewFingerHovered(Landroid/widget/RemoteViews;IZ)V
    .locals 1
    .param p0, "remoteView"    # Landroid/widget/RemoteViews;
    .param p1, "viewId"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 12
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 18
    :goto_0
    return-void

    .line 16
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/android/widget/RemoteViewsSdlCompat;->setViewFingerHovered(Landroid/widget/RemoteViews;IZ)V

    goto :goto_0
.end method
