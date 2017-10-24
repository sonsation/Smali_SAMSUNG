.class public abstract Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;
.super Landroid/widget/LinearLayout;
.source "ClearCoverBaseClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$1;,
        Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;
    }
.end annotation


# instance fields
.field private final MSG_CLOCK_UPDATE:I

.field protected final TAG:Ljava/lang/String;

.field private mClockHandler:Landroid/os/Handler;

.field protected mDatePattern:Ljava/lang/CharSequence;

.field protected mIs24HTime:Z

.field protected mTTSDatePattern:Ljava/lang/CharSequence;

.field protected mThemeFontPath:Ljava/lang/String;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mClockHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;Ljava/lang/String;)V
    .locals 0
    .param p1, "fontPath"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->onThemeFontChanged(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mIs24HTime:Z

    .line 26
    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    .line 27
    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    .line 28
    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mThemeFontPath:Ljava/lang/String;

    .line 31
    const/16 v0, 0x12c2

    iput v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->MSG_CLOCK_UPDATE:I

    .line 32
    new-instance v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$1;-><init>(Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mClockHandler:Landroid/os/Handler;

    .line 43
    new-instance v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget$2;-><init>(Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 111
    return-void
.end method

.method private onThemeFontChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontPath"    # Ljava/lang/String;

    .prologue
    .line 146
    sget-boolean v0, Lcom/sec/android/cover/CoverRune;->FEATURE_SUPPORT_ELASTIC_PLUGIN:Z

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/android/cover/CoverUtils;->setClockFontPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 148
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mThemeFontPath:Ljava/lang/String;

    .line 145
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract getTTSMessage()Ljava/lang/CharSequence;
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 127
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->is24HourModeEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mIs24HTime:Z

    .line 130
    sget-boolean v0, Lcom/sec/android/cover/CoverRune;->FEATURE_SUPPORT_ELASTIC_PLUGIN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mThemeFontPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->getClockFontPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mThemeFontPath:Ljava/lang/String;

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->onTimeChanged()V

    .line 134
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onAttachedToWindow "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 125
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 141
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDetachedFromWindow "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 139
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 155
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->getTTSMessage()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 153
    return-void
.end method

.method protected abstract onTimeChanged()V
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWindowFocusChanged :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->onTimeChanged()V

    .line 121
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 116
    return-void
.end method

.method protected abstract refreshClock()V
.end method
