.class Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "ClearCoverBaseClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;->this$0:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged()V
    .locals 4

    .prologue
    const/16 v2, 0x12c2

    .line 61
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;->this$0:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->-get0(Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;->this$0:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->-get0(Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;->this$0:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->-get0(Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;->this$0:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->-get0(Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 66
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;->this$0:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->onTimeChanged()V

    .line 60
    return-void
.end method

.method public onContentChanged(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "time_12_24"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;->this$0:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;->this$0:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->-get1(Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->is24HourModeEnabled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mIs24HTime:Z

    .line 78
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;->this$0:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->onTimeChanged()V

    .line 81
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "content://settings/system/date_format"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;->this$0:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;

    iput-object v2, v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    .line 83
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;->this$0:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;

    iput-object v2, v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    .line 84
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;->this$0:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->onTimeChanged()V

    .line 87
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "homecity_timezone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;->this$0:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;

    iget-object v0, v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "HomeCityChangeObserver onChange()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;->this$0:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->-get1(Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "dualclock.homecity_timezone"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 75
    :cond_2
    return-void
.end method

.method public onDateFormatChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;->this$0:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;

    iput-object v1, v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    .line 56
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;->this$0:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;

    iput-object v1, v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    .line 57
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;->this$0:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->onTimeChanged()V

    .line 54
    return-void
.end method

.method public onHomeCityChanged()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;->this$0:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->onTimeChanged()V

    .line 100
    return-void
.end method

.method public onLocaleChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;->this$0:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;

    iput-object v1, v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    .line 95
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;->this$0:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;

    iput-object v1, v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    .line 96
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;->this$0:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->refreshClock()V

    .line 97
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;->this$0:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->onTimeChanged()V

    .line 93
    return-void
.end method

.method public onThemeFontChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontPath"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;->this$0:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;

    invoke-static {v0, p1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->-wrap0(Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public onTimeChanged()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;->this$0:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;->this$0:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->-get1(Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->is24HourModeEnabled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mIs24HTime:Z

    .line 51
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;->this$0:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->onTimeChanged()V

    .line 49
    return-void
.end method

.method public onUserSwitched(II)V
    .locals 2
    .param p1, "newUserId"    # I
    .param p2, "oldUserId"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;->this$0:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;

    iget-object v0, v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUserSwitched "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;->this$0:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;->this$0:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->-get1(Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->is24HourModeEnabled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mIs24HTime:Z

    .line 72
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;->this$0:Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->onTimeChanged()V

    .line 69
    return-void
.end method
