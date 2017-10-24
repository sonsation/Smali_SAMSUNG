.class public Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;
.super Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;
.source "ClearCoverDualClockWidget.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAutoHomeTimeZoneId:Ljava/lang/String;

.field private mHomeCalendar:Ljava/util/Calendar;

.field private mHomeClockRoot:Landroid/widget/LinearLayout;

.field private mHomeMonthandDay:Landroid/widget/TextView;

.field private mHomeRegionText:Landroid/widget/TextView;

.field private mHomeTime:Landroid/widget/TextView;

.field private mIsCover2:Z

.field private mIsDualClock:Z

.field private mRoamingCalendar:Ljava/util/Calendar;

.field private mRoamingClockRoot:Landroid/widget/LinearLayout;

.field private mRoamingMonthandDay:Landroid/widget/TextView;

.field private mRoamingRegionText:Landroid/widget/TextView;

.field private mRoamingTime:Landroid/widget/TextView;

.field private mTime24HFormat:Ljava/lang/String;

.field private mTimeFormat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->TAG:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const-string/jumbo v0, "kk:mm"

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mTime24HFormat:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "h:mm"

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mIsDualClock:Z

    .line 52
    invoke-direct {p0, p1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->initClock(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method private getAutoHomeTimezone(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 245
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v2

    const-string/jumbo v3, "homecity_timezone"

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "autoHomeTimeZoneId":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 248
    :cond_0
    sget-object v2, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "set default timezone"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-static {}, Lcom/android/keyguard/KeyguardRune;->shouldBeAsiaSeoulAsDefaultHomecityTimezone()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 251
    const-string/jumbo v0, "Asia/Seoul"

    .line 257
    :goto_0
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v2

    const-string/jumbo v3, "homecity_timezone"

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    sget-object v2, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set homecity_timezone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_1
    sget-object v2, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAutoHomeTimezone() - autoHomeTimeZoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-object v0

    .line 253
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 254
    .local v1, "homeCalendar":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getHomeSingleTTSMessage()Ljava/lang/String;
    .locals 6

    .prologue
    .line 204
    const-string/jumbo v0, ""

    .line 206
    .local v0, "TTSMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    .line 207
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/sec/android/cover/CoverUtils;->getDateFormat(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    .line 209
    :cond_0
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 212
    .local v1, "dateText":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 213
    iget-boolean v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mIs24HTime:Z

    if-eqz v3, :cond_1

    .line 214
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mTime24HFormat:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "mTTSTime":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    return-object v0

    .line 216
    .end local v2    # "mTTSTime":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "mTTSTime":Ljava/lang/String;
    goto :goto_0
.end method

.method private getRoamingSingleTTSMessage()Ljava/lang/String;
    .locals 6

    .prologue
    .line 225
    const-string/jumbo v0, ""

    .line 227
    .local v0, "TTSMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    .line 228
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/sec/android/cover/CoverUtils;->getDateFormat(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    .line 230
    :cond_0
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mTTSDatePattern:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 233
    .local v1, "dateText":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 234
    iget-boolean v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mIs24HTime:Z

    if-eqz v3, :cond_1

    .line 235
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mTime24HFormat:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "mTTSTime":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    return-object v0

    .line 237
    .end local v2    # "mTTSTime":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "mTTSTime":Ljava/lang/String;
    goto :goto_0
.end method

.method private initClock(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->getAutoHomeTimezone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mIsDualClock:Z

    .line 55
    :cond_0
    return-void
.end method

.method private setThemeFontTypeFace(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "clockTypeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 103
    if-eqz p1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingMonthandDay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingRegionText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 108
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 109
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeMonthandDay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 110
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeRegionText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method protected getTTSMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->getRoamingSingleTTSMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 65
    invoke-super {p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverBaseClockWidget;->onFinishInflate()V

    .line 66
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/sec/android/sviewcover/R$bool;->config_isSViewCover2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mIsCover2:Z

    .line 69
    sget v1, Lcom/sec/android/sviewcover/R$id;->roaming_clock_root:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingClockRoot:Landroid/widget/LinearLayout;

    .line 70
    sget v1, Lcom/sec/android/sviewcover/R$id;->roaming_digital_clock_time:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    .line 71
    sget v1, Lcom/sec/android/sviewcover/R$id;->roaming_digital_month_day:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingMonthandDay:Landroid/widget/TextView;

    .line 72
    sget v1, Lcom/sec/android/sviewcover/R$id;->region_roaming:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingRegionText:Landroid/widget/TextView;

    .line 74
    sget v1, Lcom/sec/android/sviewcover/R$id;->home_clock_root:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeClockRoot:Landroid/widget/LinearLayout;

    .line 75
    sget v1, Lcom/sec/android/sviewcover/R$id;->home_digital_clock_time:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeTime:Landroid/widget/TextView;

    .line 76
    sget v1, Lcom/sec/android/sviewcover/R$id;->home_digital_month_day:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeMonthandDay:Landroid/widget/TextView;

    .line 77
    sget v1, Lcom/sec/android/sviewcover/R$id;->region_home:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeRegionText:Landroid/widget/TextView;

    .line 79
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mThemeFontPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mThemeFontPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->setThemeFontTypeFace(Landroid/graphics/Typeface;)V

    .line 84
    :cond_0
    sget-boolean v1, Lcom/sec/android/cover/CoverRune;->FEATURE_NO_ROAMING_TEXT_ON_DUAL_CLOCK:Z

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingRegionText:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->refreshClock()V

    .line 64
    return-void
.end method

.method protected onTimeChanged()V
    .locals 14

    .prologue
    const/16 v13, 0x31

    const/4 v12, 0x0

    .line 116
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    .line 117
    sget-object v8, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "initClock() : TimeZone ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 120
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, "locale":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 122
    const-string/jumbo v8, "ja_JP"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 123
    const-string/jumbo v8, "K:mm"

    iput-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    .line 129
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-direct {p0, v8}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->getAutoHomeTimezone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    .line 130
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 131
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mAutoHomeTimeZoneId:Ljava/lang/String;

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    .line 132
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 133
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mIsDualClock:Z

    .line 136
    :cond_1
    const/4 v7, 0x0

    .line 137
    .local v7, "tmp":Ljava/lang/CharSequence;
    iget-boolean v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mIs24HTime:Z

    if-eqz v8, :cond_b

    .line 138
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mTime24HFormat:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 142
    .local v7, "tmp":Ljava/lang/CharSequence;
    :goto_1
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 143
    .local v6, "times":Ljava/lang/String;
    const/4 v2, 0x0

    .line 144
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    if-eqz v8, :cond_2

    .line 145
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    :cond_2
    iget-boolean v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mIsCover2:Z

    if-eqz v8, :cond_3

    invoke-interface {v7, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v8, v13, :cond_3

    .line 149
    :try_start_0
    const-string/jumbo v8, "UTF-8"

    invoke-static {v6, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    if-eqz v8, :cond_5

    .line 156
    if-eqz v2, :cond_4

    .line 157
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    :cond_4
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingTime:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :cond_5
    iget-boolean v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mIsDualClock:Z

    if-eqz v8, :cond_7

    .line 162
    const/4 v5, 0x0

    .line 163
    .local v5, "temp":Ljava/lang/CharSequence;
    iget-boolean v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mIs24HTime:Z

    if-eqz v8, :cond_c

    .line 164
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mTime24HFormat:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 168
    .local v5, "temp":Ljava/lang/CharSequence;
    :goto_3
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "dualTimes":Ljava/lang/String;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 170
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 169
    invoke-direct {v1, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    .local v1, "layoutParam":Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mIsCover2:Z

    if-eqz v8, :cond_6

    invoke-interface {v5, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v8, v13, :cond_6

    .line 174
    :try_start_1
    const-string/jumbo v8, "UTF-8"

    invoke-static {v0, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    :cond_6
    :goto_4
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    .end local v0    # "dualTimes":Ljava/lang/String;
    .end local v1    # "layoutParam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "temp":Ljava/lang/CharSequence;
    :cond_7
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    if-nez v8, :cond_8

    .line 186
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mContext:Landroid/content/Context;

    invoke-static {v8, v12}, Lcom/sec/android/cover/CoverUtils;->getDateFormat(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    .line 188
    :cond_8
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingMonthandDay:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    iget-object v10, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingClockRoot:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->getRoamingSingleTTSMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 191
    iget-boolean v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mIsDualClock:Z

    if-eqz v8, :cond_9

    .line 192
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeMonthandDay:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mDatePattern:Ljava/lang/CharSequence;

    iget-object v10, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeClockRoot:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->getHomeSingleTTSMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 115
    :cond_9
    return-void

    .line 125
    .end local v6    # "times":Ljava/lang/String;
    .end local v7    # "tmp":Ljava/lang/CharSequence;
    :cond_a
    const-string/jumbo v8, "h:mm"

    iput-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    goto/16 :goto_0

    .line 140
    .local v7, "tmp":Ljava/lang/CharSequence;
    :cond_b
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v7

    .local v7, "tmp":Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 150
    .restart local v6    # "times":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 151
    .local v4, "t":Ljava/lang/Throwable;
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 152
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 166
    .end local v4    # "t":Ljava/lang/Throwable;
    .local v5, "temp":Ljava/lang/CharSequence;
    :cond_c
    iget-object v8, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mTimeFormat:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v5

    .local v5, "temp":Ljava/lang/CharSequence;
    goto/16 :goto_3

    .line 175
    .restart local v0    # "dualTimes":Ljava/lang/String;
    .restart local v1    # "layoutParam":Landroid/widget/LinearLayout$LayoutParams;
    :catch_1
    move-exception v4

    .line 176
    .restart local v4    # "t":Ljava/lang/Throwable;
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4
.end method

.method protected refreshClock()V
    .locals 4

    .prologue
    .line 93
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "locale":Ljava/lang/String;
    sget-object v1, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->TAG:Ljava/lang/String;

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

    .line 95
    if-eqz v0, :cond_0

    .line 96
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mRoamingRegionText:Landroid/widget/TextView;

    sget v2, Lcom/sec/android/sviewcover/R$string;->s_view_screen_roaming:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 97
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/clocks/ClearCoverDualClockWidget;->mHomeRegionText:Landroid/widget/TextView;

    sget v2, Lcom/sec/android/sviewcover/R$string;->s_view_screen_home:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 92
    :cond_0
    return-void
.end method
