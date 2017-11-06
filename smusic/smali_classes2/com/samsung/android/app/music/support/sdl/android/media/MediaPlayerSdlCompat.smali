.class public Lcom/samsung/android/app/music/support/sdl/android/media/MediaPlayerSdlCompat;
.super Ljava/lang/Object;
.source "MediaPlayerSdlCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setSoundAlive(Landroid/media/MediaPlayer;Landroid/os/Parcel;Landroid/os/Parcel;)I
    .locals 1
    .param p0, "mediaplayer"    # Landroid/media/MediaPlayer;
    .param p1, "request"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;

    .prologue
    .line 8
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaPlayer;->setSoundAlive(Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v0

    return v0
.end method
