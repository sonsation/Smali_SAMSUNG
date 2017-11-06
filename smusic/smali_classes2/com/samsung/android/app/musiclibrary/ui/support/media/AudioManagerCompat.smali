.class public Lcom/samsung/android/app/musiclibrary/ui/support/media/AudioManagerCompat;
.super Ljava/lang/Object;
.source "AudioManagerCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toggleMute(Landroid/media/AudioManager;I)V
    .locals 4
    .param p0, "audioManager"    # Landroid/media/AudioManager;
    .param p1, "volume"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x0

    .line 16
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 17
    const/16 v1, 0x65

    .line 18
    invoke-virtual {p0, v3, v1, v0}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 23
    :goto_0
    return-void

    .line 21
    :cond_0
    if-lez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v3, v0}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    goto :goto_0
.end method
