.class final Lcom/samsung/android/app/music/support/android/widget/SeekBarCompat$2;
.super Ljava/lang/Object;
.source "SeekBarCompat.java"

# interfaces
.implements Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$OnSeekBarHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/support/android/widget/SeekBarCompat;->setOnSeekBarHoverListener(Landroid/widget/SeekBar;Lcom/samsung/android/app/music/support/android/widget/SeekBarCompat$OnSeekBarHoverListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/samsung/android/app/music/support/android/widget/SeekBarCompat$OnSeekBarHoverListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/support/android/widget/SeekBarCompat$OnSeekBarHoverListener;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/music/support/android/widget/SeekBarCompat$2;->val$listener:Lcom/samsung/android/app/music/support/android/widget/SeekBarCompat$OnSeekBarHoverListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHoverChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "hoverLevel"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/widget/SeekBarCompat$2;->val$listener:Lcom/samsung/android/app/music/support/android/widget/SeekBarCompat$OnSeekBarHoverListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/music/support/android/widget/SeekBarCompat$OnSeekBarHoverListener;->onHoverChanged(Landroid/widget/SeekBar;IZ)V

    .line 46
    return-void
.end method

.method public onStartTrackingHover(Landroid/widget/SeekBar;I)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "hoverLevel"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/widget/SeekBarCompat$2;->val$listener:Lcom/samsung/android/app/music/support/android/widget/SeekBarCompat$OnSeekBarHoverListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/support/android/widget/SeekBarCompat$OnSeekBarHoverListener;->onStartTrackingHover(Landroid/widget/SeekBar;I)V

    .line 35
    return-void
.end method

.method public onStopTrackingHover(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/widget/SeekBarCompat$2;->val$listener:Lcom/samsung/android/app/music/support/android/widget/SeekBarCompat$OnSeekBarHoverListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/support/android/widget/SeekBarCompat$OnSeekBarHoverListener;->onStopTrackingHover(Landroid/widget/SeekBar;)V

    .line 40
    return-void
.end method
