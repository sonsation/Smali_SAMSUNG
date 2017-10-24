.class public Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;
.super Landroid/widget/LinearLayout;
.source "TodayDateView.java"


# instance fields
.field private mDayView:Landroid/widget/TextView;

.field private mWeekDayView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    return-void
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 57
    sget v0, Lcom/android/keyguard/R$id;->servicebox_today_clock_day:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->mDayView:Landroid/widget/TextView;

    .line 58
    sget v0, Lcom/android/keyguard/R$id;->servicebox_today_clock_week_day:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->mWeekDayView:Landroid/widget/TextView;

    .line 56
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 52
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->initViews()V

    .line 53
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->updateDay()V

    .line 50
    return-void
.end method

.method public updateDay()V
    .locals 6

    .prologue
    .line 62
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 64
    .local v2, "now":J
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->mDayView:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 65
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "d"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "dayFormatter":Ljava/text/SimpleDateFormat;
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->mDayView:Landroid/widget/TextView;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .end local v0    # "dayFormatter":Ljava/text/SimpleDateFormat;
    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->mWeekDayView:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 69
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "EEEE"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 70
    .local v1, "weekDayFormatter":Ljava/text/SimpleDateFormat;
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->mWeekDayView:Landroid/widget/TextView;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .end local v1    # "weekDayFormatter":Ljava/text/SimpleDateFormat;
    :cond_1
    return-void
.end method
