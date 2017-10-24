.class public Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;
.super Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;
.source "ClearCoverSingleClockWidget.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mClockRoot:Landroid/widget/RelativeLayout;

.field private mClockView:Landroid/widget/LinearLayout;

.field private mIsCover2:Z

.field private mMonthandDay:Landroid/widget/TextView;

.field private mTime:Landroid/widget/TextView;

.field private mTime24HFormat:Ljava/lang/String;

.field private mTimeFormat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const-string/jumbo v0, "h:mm"

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mTimeFormat:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "kk:mm"

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mTime24HFormat:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private setThemeFontTypeFace(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "clockTypeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 138
    if-eqz p1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mMonthandDay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 137
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic getTTSMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->getTTSMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTTSMessage()Ljava/lang/String;
    .locals 6

    .prologue
    .line 117
    const-string/jumbo v0, ""

    .line 118
    .local v0, "TTSMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    .line 119
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/sec/android/cover/CoverUtils;->getDateFormat(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    .line 121
    :cond_0
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 124
    .local v1, "dateText":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 125
    iget-boolean v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mIs24HTime:Z

    if-eqz v3, :cond_1

    .line 126
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mTime24HFormat:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "mTTSTime":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    return-object v0

    .line 128
    .end local v2    # "mTTSTime":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "mTTSTime":Ljava/lang/String;
    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 44
    invoke-super {p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->onFinishInflate()V

    .line 45
    sget-object v1, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onFinishInflate "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 47
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/sec/android/sviewcover/R$bool;->config_isSViewCover2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mIsCover2:Z

    .line 48
    sget v1, Lcom/sec/android/sviewcover/R$id;->clock_time_and_date:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mClockView:Landroid/widget/LinearLayout;

    .line 49
    sget v1, Lcom/sec/android/sviewcover/R$id;->clock_root:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mClockRoot:Landroid/widget/RelativeLayout;

    .line 50
    sget v1, Lcom/sec/android/sviewcover/R$id;->digital_clock_time:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mTime:Landroid/widget/TextView;

    .line 52
    sget v1, Lcom/sec/android/sviewcover/R$id;->digital_month_day:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mMonthandDay:Landroid/widget/TextView;

    .line 55
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mThemeFontPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mThemeFontPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->setThemeFontTypeFace(Landroid/graphics/Typeface;)V

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->refreshClock()V

    .line 43
    return-void
.end method

.method protected onTimeChanged()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 71
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mCalendar:Ljava/util/Calendar;

    .line 72
    sget-object v4, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "initClock() : TimeZone ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 75
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "locale":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 77
    const-string/jumbo v4, "ja_JP"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 78
    const-string/jumbo v4, "K:mm"

    iput-object v4, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mTimeFormat:Ljava/lang/String;

    .line 84
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 85
    .local v3, "tmp":Ljava/lang/CharSequence;
    iget-boolean v4, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mIs24HTime:Z

    if-eqz v4, :cond_5

    .line 86
    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mTime24HFormat:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 90
    .local v3, "tmp":Ljava/lang/CharSequence;
    :goto_1
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "times":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mIsCover2:Z

    if-eqz v4, :cond_1

    invoke-interface {v3, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_1

    .line 94
    :try_start_0
    const-string/jumbo v4, "UTF-8"

    invoke-static {v2, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 102
    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mTime:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_2
    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    if-nez v4, :cond_3

    .line 106
    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v4, v8}, Lcom/sec/android/cover/CoverUtils;->getDateFormat(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    .line 109
    :cond_3
    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mMonthandDay:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mClockView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->getTTSMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 70
    return-void

    .line 80
    .end local v2    # "times":Ljava/lang/String;
    .end local v3    # "tmp":Ljava/lang/CharSequence;
    :cond_4
    const-string/jumbo v4, "h:mm"

    iput-object v4, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mTimeFormat:Ljava/lang/String;

    goto :goto_0

    .line 88
    .local v3, "tmp":Ljava/lang/CharSequence;
    :cond_5
    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    .local v3, "tmp":Ljava/lang/CharSequence;
    goto :goto_1

    .line 95
    .restart local v2    # "times":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 96
    .local v1, "t":Ljava/lang/Throwable;
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method protected refreshClock()V
    .locals 4

    .prologue
    .line 64
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "locale":Ljava/lang/String;
    sget-object v1, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshClock() , locale = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleClockWidget;->mClockRoot:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 63
    return-void
.end method
