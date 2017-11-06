.class public Lcom/samsung/android/app/music/support/android/widget/AbsSeekBarCompat;
.super Ljava/lang/Object;
.source "AbsSeekBarCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getThumbCentralX(Landroid/widget/AbsSeekBar;)I
    .locals 2
    .param p0, "seekBar"    # Landroid/widget/AbsSeekBar;

    .prologue
    .line 43
    sget-boolean v1, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v1, :cond_1

    .line 44
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->semGetThumbBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 45
    .local v0, "rect":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 50
    .end local v0    # "rect":Landroid/graphics/Rect;
    :goto_0
    return v1

    .line 48
    .restart local v0    # "rect":Landroid/graphics/Rect;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 50
    .end local v0    # "rect":Landroid/graphics/Rect;
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/widget/AbsSeekBarSdlCompat;->getThumbCentralX(Landroid/widget/AbsSeekBar;)I

    move-result v1

    goto :goto_0
.end method

.method public static getThumbCentralY(Landroid/widget/AbsSeekBar;)I
    .locals 2
    .param p0, "seekBar"    # Landroid/widget/AbsSeekBar;

    .prologue
    .line 54
    sget-boolean v1, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v1, :cond_1

    .line 55
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->semGetThumbBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 56
    .local v0, "rect":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 61
    .end local v0    # "rect":Landroid/graphics/Rect;
    :goto_0
    return v1

    .line 59
    .restart local v0    # "rect":Landroid/graphics/Rect;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 61
    .end local v0    # "rect":Landroid/graphics/Rect;
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/widget/AbsSeekBarSdlCompat;->getThumbCentralY(Landroid/widget/AbsSeekBar;)I

    move-result v1

    goto :goto_0
.end method

.method public static getThumbHeight(Landroid/widget/AbsSeekBar;)I
    .locals 2
    .param p0, "seekBar"    # Landroid/widget/AbsSeekBar;

    .prologue
    .line 65
    sget-boolean v1, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->semGetThumbBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 67
    .local v0, "rect":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 72
    .end local v0    # "rect":Landroid/graphics/Rect;
    :goto_0
    return v1

    .line 70
    .restart local v0    # "rect":Landroid/graphics/Rect;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 72
    .end local v0    # "rect":Landroid/graphics/Rect;
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/widget/AbsSeekBarSdlCompat;->getThumbHeight(Landroid/widget/AbsSeekBar;)I

    move-result v1

    goto :goto_0
.end method

.method public static isFluidEnabled(Landroid/widget/AbsSeekBar;)Z
    .locals 1
    .param p0, "seekBar"    # Landroid/widget/AbsSeekBar;

    .prologue
    .line 19
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->semIsFluidEnabled()Z

    move-result v0

    .line 22
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/widget/AbsSeekBarSdlCompat;->isFluidEnabled(Landroid/widget/AbsSeekBar;)Z

    move-result v0

    goto :goto_0
.end method

.method public static setFluidEnabled(Landroid/widget/AbsSeekBar;Z)V
    .locals 1
    .param p0, "seekBar"    # Landroid/widget/AbsSeekBar;
    .param p1, "enabled"    # Z

    .prologue
    .line 11
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->semSetFluidEnabled(Z)V

    .line 16
    :goto_0
    return-void

    .line 14
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/android/widget/AbsSeekBarSdlCompat;->setFluidEnabled(Landroid/widget/AbsSeekBar;Z)V

    goto :goto_0
.end method

.method public static setMode(Landroid/widget/AbsSeekBar;)V
    .locals 1
    .param p0, "seekBar"    # Landroid/widget/AbsSeekBar;

    .prologue
    .line 27
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 28
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->semSetMode(I)V

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/widget/AbsSeekBarSdlCompat;->setMode(Landroid/widget/AbsSeekBar;)V

    goto :goto_0
.end method

.method public static setOverlapPointForDualColor(Landroid/widget/AbsSeekBar;I)V
    .locals 1
    .param p0, "seekBar"    # Landroid/widget/AbsSeekBar;
    .param p1, "value"    # I

    .prologue
    .line 35
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->semSetOverlapPointForDualColor(I)V

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/android/widget/AbsSeekBarSdlCompat;->setOverlapPointForDualColor(Landroid/widget/AbsSeekBar;I)V

    goto :goto_0
.end method
