.class public Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/MySoundSdlCompat;
.super Ljava/lang/Object;
.source "MySoundSdlCompat.java"


# instance fields
.field private final mMySound:Landroid/media/audiofx/MySound;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "priority"    # I
    .param p2, "audioSessionId"    # I

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Landroid/media/audiofx/MySound;

    invoke-direct {v0, p1, p2}, Landroid/media/audiofx/MySound;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/MySoundSdlCompat;->mMySound:Landroid/media/audiofx/MySound;

    .line 10
    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/MySoundSdlCompat;->mMySound:Landroid/media/audiofx/MySound;

    invoke-virtual {v0}, Landroid/media/audiofx/MySound;->release()V

    .line 22
    return-void
.end method

.method public setEnabled(Z)I
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/MySoundSdlCompat;->mMySound:Landroid/media/audiofx/MySound;

    invoke-virtual {v0, p1}, Landroid/media/audiofx/MySound;->setEnabled(Z)I

    move-result v0

    return v0
.end method

.method public setGain([I[I)V
    .locals 1
    .param p1, "leftGain"    # [I
    .param p2, "rightGain"    # [I

    .prologue
    .line 13
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/MySoundSdlCompat;->mMySound:Landroid/media/audiofx/MySound;

    invoke-virtual {v0, p1, p2}, Landroid/media/audiofx/MySound;->setGain([I[I)V

    .line 14
    return-void
.end method
