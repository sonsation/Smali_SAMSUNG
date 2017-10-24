.class public Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardSingleClockView.java"

# interfaces
.implements Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;


# instance fields
.field private mCacheKey:Ljava/lang/String;

.field private mDateShamsiView:Lcom/android/keyguard/KeyguardTextView;

.field private mDateView:Lcom/android/keyguard/KeyguardTextClock;

.field private mPCalUtil:Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;

.field private mTimeView:Lcom/android/keyguard/KeyguardTextClock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;

    invoke-direct {v0, p1}, Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mPCalUtil:Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public changeHourFormat()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public getClockCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public hangBackgroudImageOnTheClock()V
    .locals 4

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 130
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->theme_single_textclock_bg_image_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 131
    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->theme_textclock_bg_image:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 128
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 68
    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_time_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeView:Lcom/android/keyguard/KeyguardTextClock;

    .line 69
    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_date_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    .line 71
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v0, :cond_0

    .line 72
    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_shamsi_date_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardTextView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mDateShamsiView:Lcom/android/keyguard/KeyguardTextView;

    .line 73
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mDateShamsiView:Lcom/android/keyguard/KeyguardTextView;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardTextView;->setVisibility(I)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardTextClock;->setElegantTextHeight(Z)V

    .line 78
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardTextClock;->setShowCurrentUserTime(Z)V

    .line 80
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/ViewStyleUtils;->setTextFontEffect(Landroid/widget/TextView;)V

    .line 83
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeView:Lcom/android/keyguard/KeyguardTextClock;

    const-string/jumbo v1, "clock2017L"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 85
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    const-string/jumbo v1, "sec-roboto-condensed"

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 86
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardTextClock;->setAllCaps(Z)V

    .line 66
    :cond_1
    return-void
.end method

.method public refreshTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "clock12"    # Ljava/lang/String;
    .param p2, "clock24"    # Ljava/lang/String;
    .param p3, "date"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, p3}, Lcom/android/keyguard/KeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, p3}, Lcom/android/keyguard/KeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 109
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mDateShamsiView:Lcom/android/keyguard/KeyguardTextView;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mPCalUtil:Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;->getDateInPersianCalendar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardTextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :cond_0
    return-void
.end method

.method public setClockCacheKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mCacheKey:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setClockVisibility(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    .line 143
    return-void
.end method

.method public setCoverState(Z)V
    .locals 1
    .param p1, "isCovered"    # Z

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextClock;->updateFontSizeInKeyguardBoundary()V

    .line 159
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextClock;->updateFontSizeInKeyguardBoundary()V

    .line 157
    return-void
.end method

.method public setDateVisibility(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    .line 152
    return-void
.end method

.method public updateChildViewsLook()V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeView:Lcom/android/keyguard/KeyguardTextClock;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    .line 120
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    .line 121
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/ViewStyleUtils;->setTextFontEffect(Landroid/widget/TextView;)V

    .line 118
    return-void
.end method
