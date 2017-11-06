.class public Lcom/samsung/android/app/music/support/sdl/android/widget/RemoteViewsSdlCompat;
.super Ljava/lang/Object;
.source "RemoteViewsSdlCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOuterShadowTextEffect(Landroid/widget/RemoteViews;IFFFIF)V
    .locals 0
    .param p0, "remoteView"    # Landroid/widget/RemoteViews;
    .param p1, "viewId"    # I
    .param p2, "angle"    # F
    .param p3, "offset"    # F
    .param p4, "softness"    # F
    .param p5, "color"    # I
    .param p6, "blendingOpacity"    # F

    .prologue
    .line 24
    .line 25
    invoke-virtual/range {p0 .. p6}, Landroid/widget/RemoteViews;->addOuterShadowTextEffect(IFFFIF)V

    .line 26
    return-void
.end method

.method public static addStrokeTextEffect(Landroid/widget/RemoteViews;IFIF)V
    .locals 0
    .param p0, "remoteView"    # Landroid/widget/RemoteViews;
    .param p1, "viewId"    # I
    .param p2, "size"    # F
    .param p3, "color"    # I
    .param p4, "blendingOpacity"    # F

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews;->addStrokeTextEffect(IFIF)V

    .line 20
    return-void
.end method

.method public static setOnLongClickPendingIntent(Landroid/widget/RemoteViews;Landroid/os/IBinder;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 0
    .param p0, "views"    # Landroid/widget/RemoteViews;
    .param p1, "key"    # Landroid/os/IBinder;
    .param p2, "viewId"    # I
    .param p3, "downPendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "upPendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 14
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews;->setOnLongClickPendingIntent(Landroid/os/IBinder;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 15
    return-void
.end method

.method public static setViewFingerHovered(Landroid/widget/RemoteViews;IZ)V
    .locals 0
    .param p0, "views"    # Landroid/widget/RemoteViews;
    .param p1, "viewId"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/widget/RemoteViews;->setViewFingerHovered(IZ)V

    .line 10
    return-void
.end method
