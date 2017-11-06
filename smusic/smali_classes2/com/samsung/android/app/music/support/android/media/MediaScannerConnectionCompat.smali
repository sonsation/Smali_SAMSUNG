.class public Lcom/samsung/android/app/music/support/android/media/MediaScannerConnectionCompat;
.super Ljava/lang/Object;
.source "MediaScannerConnectionCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static scanDirectories(Landroid/content/Context;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "directories"    # [Ljava/lang/String;
    .param p2, "onScanCompletedListener"    # Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    .prologue
    .line 11
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 13
    invoke-static {p0, p1, p2}, Landroid/media/MediaScannerConnection;->semScanDirectories(Landroid/content/Context;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 17
    :cond_0
    return-void
.end method
