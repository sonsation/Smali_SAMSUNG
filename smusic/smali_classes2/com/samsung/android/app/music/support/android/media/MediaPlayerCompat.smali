.class public Lcom/samsung/android/app/music/support/android/media/MediaPlayerCompat;
.super Ljava/lang/Object;
.source "MediaPlayerCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setSoundAlive(Landroid/media/MediaPlayer;Landroid/os/Parcel;Landroid/os/Parcel;)I
    .locals 1
    .param p0, "mediaplayer"    # Landroid/media/MediaPlayer;
    .param p1, "request"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;

    .prologue
    .line 11
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaPlayer;->semSetSoundAlive(Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v0

    .line 14
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/android/media/MediaPlayerSdlCompat;->setSoundAlive(Landroid/media/MediaPlayer;Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v0

    goto :goto_0
.end method
