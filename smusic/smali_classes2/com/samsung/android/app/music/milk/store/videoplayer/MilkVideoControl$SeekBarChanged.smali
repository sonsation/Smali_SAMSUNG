.class public Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;
.super Ljava/lang/Object;
.source "MilkVideoControl.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SeekBarChanged"
.end annotation


# instance fields
.field private mSeekToTime:I

.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;


# direct methods
.method protected constructor <init>(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;->this$0:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

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
    .line 351
    if-nez p3, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iput p2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;->mSeekToTime:I

    .line 356
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;->this$0:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->access$200(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;->this$0:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->access$300(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;->mSeekToTime:I

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
    .line 363
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;->this$0:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->access$402(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;Z)Z

    .line 364
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;->this$0:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->access$500(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;->this$0:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->access$600(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;->onSeekStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;->this$0:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->access$700(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->onSeekStarted()Z

    .line 367
    :cond_1
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;->this$0:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->access$402(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;Z)Z

    .line 372
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;->this$0:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->access$800(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;->this$0:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->access$900(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;->mSeekToTime:I

    invoke-interface {v0, v1}, Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;->onSeekEnded(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;->this$0:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->access$1000(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;->mSeekToTime:I

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->onSeekEnded(I)Z

    .line 375
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "321"

    const-string v2, "4384"

    .line 376
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return-void
.end method
