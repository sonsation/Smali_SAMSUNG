.class public Lcom/samsung/android/app/music/support/sdl/android/widget/AbsSeekBarSdlCompat;
.super Ljava/lang/Object;
.source "AbsSeekBarSdlCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getThumbCentralX(Landroid/widget/AbsSeekBar;)I
    .locals 2
    .param p0, "seekBar"    # Landroid/widget/AbsSeekBar;

    .prologue
    .line 36
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x835

    if-lt v0, v1, :cond_0

    .line 37
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbCentralX()I

    move-result v0

    .line 39
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getThumbCentralY(Landroid/widget/AbsSeekBar;)I
    .locals 2
    .param p0, "seekBar"    # Landroid/widget/AbsSeekBar;

    .prologue
    .line 43
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x835

    if-lt v0, v1, :cond_0

    .line 44
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbCentralY()I

    move-result v0

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getThumbHeight(Landroid/widget/AbsSeekBar;)I
    .locals 2
    .param p0, "seekBar"    # Landroid/widget/AbsSeekBar;

    .prologue
    .line 50
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x835

    if-lt v0, v1, :cond_0

    .line 51
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbHeight()I

    move-result v0

    .line 53
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFluidEnabled(Landroid/widget/AbsSeekBar;)Z
    .locals 2
    .param p0, "seekBar"    # Landroid/widget/AbsSeekBar;

    .prologue
    .line 16
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x8fd

    if-lt v0, v1, :cond_0

    .line 17
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isFluidEnabled()Z

    move-result v0

    .line 19
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setFluidEnabled(Landroid/widget/AbsSeekBar;Z)V
    .locals 2
    .param p0, "seekBar"    # Landroid/widget/AbsSeekBar;
    .param p1, "enabled"    # Z

    .prologue
    .line 10
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x8fd

    if-lt v0, v1, :cond_0

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->setFluidEnabled(Z)V

    .line 13
    :cond_0
    return-void
.end method

.method public static setMode(Landroid/widget/AbsSeekBar;)V
    .locals 2
    .param p0, "seekBar"    # Landroid/widget/AbsSeekBar;

    .prologue
    .line 24
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x835

    if-lt v0, v1, :cond_0

    .line 25
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setMode(I)V

    .line 27
    :cond_0
    return-void
.end method

.method public static setOverlapPointForDualColor(Landroid/widget/AbsSeekBar;I)V
    .locals 2
    .param p0, "seekBar"    # Landroid/widget/AbsSeekBar;
    .param p1, "value"    # I

    .prologue
    .line 30
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x835

    if-lt v0, v1, :cond_0

    .line 31
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->setOverlapPointForDualColor(I)V

    .line 33
    :cond_0
    return-void
.end method
