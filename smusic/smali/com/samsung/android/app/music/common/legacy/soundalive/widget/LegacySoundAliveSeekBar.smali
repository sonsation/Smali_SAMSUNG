.class public Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;
.super Landroid/widget/SeekBar;
.source "LegacySoundAliveSeekBar.java"


# instance fields
.field private mBaseValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-static {p0}, Lcom/samsung/android/app/music/support/android/widget/AbsSeekBarCompat;->setMode(Landroid/widget/AbsSeekBar;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-static {p0}, Lcom/samsung/android/app/music/support/android/widget/AbsSeekBarCompat;->setMode(Landroid/widget/AbsSeekBar;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-static {p0}, Lcom/samsung/android/app/music/support/android/widget/AbsSeekBarCompat;->setMode(Landroid/widget/AbsSeekBar;)V

    .line 26
    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;->mBaseValue:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .prologue
    .line 42
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/widget/SeekBar;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBaseValue(I)V
    .locals 0
    .param p1, "base"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;->mBaseValue:I

    .line 32
    return-void
.end method
