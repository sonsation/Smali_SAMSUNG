.class public Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile$SeekBarChanged;
.super Ljava/lang/Object;
.source "VideoControlsMobile.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SeekBarChanged"
.end annotation


# instance fields
.field private seekToTime:I

.field final synthetic this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;


# direct methods
.method protected constructor <init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile$SeekBarChanged;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 220
    if-nez p3, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iput p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile$SeekBarChanged;->seekToTime:I

    .line 225
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile$SeekBarChanged;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->currentTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile$SeekBarChanged;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->currentTime:Landroid/widget/TextView;

    iget v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile$SeekBarChanged;->seekToTime:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/devbrackets/android/exomedia/util/TimeFormatUtil;->formatMs(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile$SeekBarChanged;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->userInteracting:Z

    .line 233
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile$SeekBarChanged;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->seekListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile$SeekBarChanged;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->seekListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;->onSeekStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile$SeekBarChanged;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->internalListener:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->onSeekStarted()Z

    .line 236
    :cond_1
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile$SeekBarChanged;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->userInteracting:Z

    .line 241
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile$SeekBarChanged;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->seekListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile$SeekBarChanged;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->seekListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;

    iget v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile$SeekBarChanged;->seekToTime:I

    invoke-interface {v0, v1}, Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;->onSeekEnded(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile$SeekBarChanged;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->internalListener:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    iget v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile$SeekBarChanged;->seekToTime:I

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->onSeekEnded(I)Z

    .line 244
    :cond_1
    return-void
.end method
