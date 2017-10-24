.class public Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;
.super Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;
.source "ClearCoverSingleVerticalClockWidget.java"


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mClockView:Landroid/widget/LinearLayout;

.field private mIsCover2:Z

.field private mMonthandDay:Landroid/widget/TextView;

.field private mTimeHours:Landroid/widget/TextView;

.field private mTimeMinutes:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method private setThemeFontTypeFace(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "clockTypeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 136
    if-eqz p1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mTimeHours:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mTimeMinutes:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mMonthandDay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 135
    :cond_0
    return-void
.end method


# virtual methods
.method protected getTTSMessage()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 116
    const-string/jumbo v0, ""

    .line 117
    .local v0, "TTSMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    .line 118
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/sec/android/cover/CoverUtils;->getDateFormat(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    .line 120
    :cond_0
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 123
    .local v1, "dateText":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 124
    iget-boolean v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mIs24HTime:Z

    if-eqz v3, :cond_1

    .line 125
    const-string/jumbo v3, "kk:mm"

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
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

    .line 132
    return-object v0

    .line 127
    .end local v2    # "mTTSTime":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "h:mm"

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "mTTSTime":Ljava/lang/String;
    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 44
    sget v1, Lcom/sec/android/sviewcover/R$id;->clock_time_and_date:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mClockView:Landroid/widget/LinearLayout;

    .line 45
    sget v1, Lcom/sec/android/sviewcover/R$id;->digital_clock_time_hours:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mTimeHours:Landroid/widget/TextView;

    .line 46
    sget v1, Lcom/sec/android/sviewcover/R$id;->digital_clock_time_minutes:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mTimeMinutes:Landroid/widget/TextView;

    .line 47
    sget v1, Lcom/sec/android/sviewcover/R$id;->digital_month_day:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mMonthandDay:Landroid/widget/TextView;

    .line 49
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 50
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/sec/android/sviewcover/R$bool;->config_isSViewCover2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mIsCover2:Z

    .line 52
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mThemeFontPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mThemeFontPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->setThemeFontTypeFace(Landroid/graphics/Typeface;)V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->refreshClock()V

    .line 43
    return-void
.end method

.method protected onTimeChanged()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 67
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mCalendar:Ljava/util/Calendar;

    .line 68
    iget-object v5, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "initClock() : TimeZone ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v5, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 72
    const/4 v4, 0x0

    .line 73
    .local v4, "tmp":Ljava/lang/CharSequence;
    iget-boolean v5, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mIs24HTime:Z

    if-eqz v5, :cond_4

    .line 74
    const-string/jumbo v5, "kk"

    iget-object v6, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 83
    .local v4, "tmp":Ljava/lang/CharSequence;
    :goto_0
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "hours":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mIsCover2:Z

    if-eqz v5, :cond_0

    invoke-interface {v4, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x31

    if-ne v5, v6, :cond_0

    .line 87
    :try_start_0
    const-string/jumbo v5, "UTF-8"

    invoke-static {v0, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 94
    iget-object v5, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mTimeHours:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :cond_1
    const-string/jumbo v5, "mm"

    iget-object v6, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 99
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "minutes":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 101
    iget-object v5, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mTimeMinutes:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_2
    iget-object v5, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    if-nez v5, :cond_3

    .line 106
    iget-object v5, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Lcom/sec/android/cover/CoverUtils;->getDateFormat(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    .line 109
    :cond_3
    iget-object v5, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mMonthandDay:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v5, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mClockView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->getTTSMessage()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 66
    return-void

    .line 76
    .end local v0    # "hours":Ljava/lang/String;
    .end local v2    # "minutes":Ljava/lang/String;
    .local v4, "tmp":Ljava/lang/CharSequence;
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "locale":Ljava/lang/String;
    if-eqz v1, :cond_5

    const-string/jumbo v5, "ja_JP"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 78
    const-string/jumbo v5, "K"

    iget-object v6, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    .local v4, "tmp":Ljava/lang/CharSequence;
    goto :goto_0

    .line 80
    .local v4, "tmp":Ljava/lang/CharSequence;
    :cond_5
    const-string/jumbo v5, "h"

    iget-object v6, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->mCalendar:Ljava/util/Calendar;

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    .local v4, "tmp":Ljava/lang/CharSequence;
    goto :goto_0

    .line 88
    .end local v1    # "locale":Ljava/lang/String;
    .restart local v0    # "hours":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 89
    .local v3, "t":Ljava/lang/Throwable;
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method protected refreshClock()V
    .locals 4

    .prologue
    .line 61
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "locale":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverSingleVerticalClockWidget;->TAG:Ljava/lang/String;

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

    .line 60
    return-void
.end method
