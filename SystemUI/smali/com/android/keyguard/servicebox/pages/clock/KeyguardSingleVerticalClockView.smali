.class public Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardSingleVerticalClockView.java"

# interfaces
.implements Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;


# instance fields
.field private mCacheKey:Ljava/lang/String;

.field private mDateShamsiView:Lcom/android/keyguard/KeyguardTextView;

.field private mDateView:Lcom/android/keyguard/KeyguardTextClock;

.field private mPCalUtil:Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;

.field private mTimeHourView:Lcom/android/keyguard/KeyguardTextClock;

.field private mTimeMinView:Lcom/android/keyguard/KeyguardTextClock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;

    invoke-direct {v0, p1}, Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mPCalUtil:Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public changeHourFormat()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public getClockCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public hangBackgroudImageOnTheClock()V
    .locals 4

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 153
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->theme_single_textclock_bg_image_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 154
    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->theme_textclock_bg_image:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 151
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 68
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 69
    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_vertical_hour_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeHourView:Lcom/android/keyguard/KeyguardTextClock;

    .line 70
    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_vertical_min_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeMinView:Lcom/android/keyguard/KeyguardTextClock;

    .line 71
    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_vertical_date_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    .line 73
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v0, :cond_0

    .line 74
    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_vertical_shamsi_date_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardTextView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mDateShamsiView:Lcom/android/keyguard/KeyguardTextView;

    .line 75
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mDateShamsiView:Lcom/android/keyguard/KeyguardTextView;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardTextView;->setVisibility(I)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeHourView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardTextClock;->setElegantTextHeight(Z)V

    .line 80
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeHourView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardTextClock;->setShowCurrentUserTime(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeMinView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardTextClock;->setElegantTextHeight(Z)V

    .line 82
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeMinView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardTextClock;->setShowCurrentUserTime(Z)V

    .line 84
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeHourView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/ViewStyleUtils;->setTextFontEffect(Landroid/widget/TextView;)V

    .line 85
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeMinView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/ViewStyleUtils;->setTextFontEffect(Landroid/widget/TextView;)V

    .line 88
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeHourView:Lcom/android/keyguard/KeyguardTextClock;

    const-string/jumbo v1, "clock2017L"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 90
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeMinView:Lcom/android/keyguard/KeyguardTextClock;

    const-string/jumbo v1, "clock2017L"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 67
    :cond_1
    return-void
.end method

.method public refreshTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "clock12"    # Ljava/lang/String;
    .param p2, "clock24"    # Ljava/lang/String;
    .param p3, "date"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 106
    const-string/jumbo v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "clock12Split":[Ljava/lang/String;
    const-string/jumbo v2, ":"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "clock24Split":[Ljava/lang/String;
    aget-object v2, v0, v5

    const-string/jumbo v3, "KK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    aget-object v2, v0, v5

    const-string/jumbo v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 112
    aget-object v2, v0, v5

    const-string/jumbo v3, "K"

    const-string/jumbo v4, "KK"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 122
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeHourView:Lcom/android/keyguard/KeyguardTextClock;

    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeHourView:Lcom/android/keyguard/KeyguardTextClock;

    aget-object v3, v1, v5

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeMinView:Lcom/android/keyguard/KeyguardTextClock;

    aget-object v3, v0, v6

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeMinView:Lcom/android/keyguard/KeyguardTextClock;

    aget-object v3, v1, v6

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v2, p3}, Lcom/android/keyguard/KeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v2, p3}, Lcom/android/keyguard/KeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 130
    sget-boolean v2, Lcom/android/keyguard/KeyguardRune;->SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v2, :cond_1

    .line 131
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mDateShamsiView:Lcom/android/keyguard/KeyguardTextView;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mPCalUtil:Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;

    invoke-virtual {v3}, Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;->getDateInPersianCalendar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardTextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_1
    return-void

    .line 113
    :cond_2
    aget-object v2, v0, v5

    const-string/jumbo v3, "kk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    aget-object v2, v0, v5

    const-string/jumbo v3, "k"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 114
    aget-object v2, v0, v5

    const-string/jumbo v3, "k"

    const-string/jumbo v4, "kk"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    goto :goto_0

    .line 115
    :cond_3
    aget-object v2, v0, v5

    const-string/jumbo v3, "HH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    aget-object v2, v0, v5

    const-string/jumbo v3, "H"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 116
    aget-object v2, v0, v5

    const-string/jumbo v3, "H"

    const-string/jumbo v4, "HH"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    goto :goto_0

    .line 117
    :cond_4
    aget-object v2, v0, v5

    const-string/jumbo v3, "hh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, v0, v5

    const-string/jumbo v3, "h"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    aget-object v2, v0, v5

    const-string/jumbo v3, "h"

    const-string/jumbo v4, "hh"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    goto/16 :goto_0
.end method

.method public setClockCacheKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mCacheKey:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setClockVisibility(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeHourView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeMinView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    .line 166
    return-void
.end method

.method public setCoverState(Z)V
    .locals 1
    .param p1, "isCovered"    # Z

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeHourView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextClock;->updateFontSizeInKeyguardBoundary()V

    .line 183
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeMinView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextClock;->updateFontSizeInKeyguardBoundary()V

    .line 184
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextClock;->updateFontSizeInKeyguardBoundary()V

    .line 181
    return-void
.end method

.method public setDateVisibility(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    .line 176
    return-void
.end method

.method public updateChildViewsLook()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeHourView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    .line 141
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeMinView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    .line 142
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    .line 143
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeHourView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/ViewStyleUtils;->setTextFontEffect(Landroid/widget/TextView;)V

    .line 144
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeMinView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/ViewStyleUtils;->setTextFontEffect(Landroid/widget/TextView;)V

    .line 139
    return-void
.end method
