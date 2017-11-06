.class final Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$1;
.super Ljava/lang/Object;
.source "SeekBarSdlCompat.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat;->setOnSeekBarHoverListener(Landroid/widget/SeekBar;Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$OnSeekBarHoverListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$OnSeekBarHoverListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$OnSeekBarHoverListener;)V
    .locals 0

    .prologue
    .line 9
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$1;->val$listener:Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$OnSeekBarHoverListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHoverChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "hoverLevel"    # I
    .param p3, "fromuser"    # Z

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$1;->val$listener:Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$OnSeekBarHoverListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$OnSeekBarHoverListener;->onHoverChanged(Landroid/widget/SeekBar;IZ)V

    .line 23
    return-void
.end method

.method public onStartTrackingHover(Landroid/widget/SeekBar;I)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "hoverLevel"    # I

    .prologue
    .line 12
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$1;->val$listener:Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$OnSeekBarHoverListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$OnSeekBarHoverListener;->onStartTrackingHover(Landroid/widget/SeekBar;I)V

    .line 13
    return-void
.end method

.method public onStopTrackingHover(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$1;->val$listener:Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$OnSeekBarHoverListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$OnSeekBarHoverListener;->onStopTrackingHover(Landroid/widget/SeekBar;)V

    .line 18
    return-void
.end method
