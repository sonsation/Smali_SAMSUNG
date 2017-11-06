.class public Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;
.super Landroid/view/View;
.source "SeslDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DayOfTheWeekView"
.end annotation


# instance fields
.field private mDayColorSet:[I

.field private mDayLabelCalendar:Ljava/util/Calendar;

.field private mDefaultWeekdayFeatureString:Ljava/lang/String;

.field private mMonthDayLabelPaint:Landroid/graphics/Paint;

.field private mNormalDayTextColor:I

.field private mSaturdayTextColor:I

.field private mSundayTextColor:I

.field private mWeekdayFeatureString:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;Landroid/content/Context;)V
    .locals 5
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1629
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .line 1630
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1624
    const/4 v2, 0x7

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->mDayColorSet:[I

    .line 1627
    const-string v2, "XXXXXXX"

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->mDefaultWeekdayFeatureString:Ljava/lang/String;

    .line 1632
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->mDayLabelCalendar:Ljava/util/Calendar;

    .line 1634
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1635
    .local v1, "res":Landroid/content/res/Resources;
    sget v2, Lcom/samsung/android/support/sesl/R$dimen;->sesl_date_picker_month_day_label_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1637
    .local v0, "monthDayLabelTextSize":I
    sget v2, Lcom/samsung/android/support/sesl/R$color;->sesl_date_picker_normal_text_color_light:I

    invoke-static {v1, v2, v3}, Lcom/samsung/android/support/sesl/core/content/res/SeslResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->mNormalDayTextColor:I

    .line 1639
    sget v2, Lcom/samsung/android/support/sesl/R$color;->sesl_date_picker_sunday_text_color_light:I

    invoke-static {v1, v2, v3}, Lcom/samsung/android/support/sesl/core/content/res/SeslResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->mSundayTextColor:I

    .line 1641
    sget v2, Lcom/samsung/android/support/sesl/R$color;->sesl_date_picker_saturday_text_color_light:I

    invoke-static {v1, v2, v3}, Lcom/samsung/android/support/sesl/core/content/res/SeslResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->mSaturdayTextColor:I

    .line 1644
    const-string v2, "CscFeature_Calendar_SetColorOfDays"

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->mDefaultWeekdayFeatureString:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->mWeekdayFeatureString:Ljava/lang/String;

    .line 1647
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    .line 1648
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1649
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->mNormalDayTextColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1650
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1651
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    const-string/jumbo v3, "sans-serif"

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1652
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1653
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1654
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1655
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1659
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1662
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$2500(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)I

    move-result v9

    if-nez v9, :cond_1

    .line 1703
    :cond_0
    return-void

    .line 1666
    :cond_1
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$2700(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)I

    move-result v10

    invoke-static {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$2602(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;I)I

    .line 1667
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$2600(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    div-int/lit8 v8, v9, 0x3

    .line 1668
    .local v8, "y":I
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$3300(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$2500(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    div-int v2, v9, v10

    .line 1670
    .local v2, "dayWidthHalf":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$2500(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)I

    move-result v9

    if-ge v3, v9, :cond_2

    .line 1671
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->mWeekdayFeatureString:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1672
    .local v5, "parsedColor":C
    add-int/lit8 v9, v3, 0x2

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$2500(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)I

    move-result v10

    rem-int v4, v9, v10

    .line 1673
    .local v4, "index":I
    sparse-switch v5, :sswitch_data_0

    .line 1681
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->mDayColorSet:[I

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->mNormalDayTextColor:I

    aput v10, v9, v4

    .line 1670
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1675
    :sswitch_0
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->mDayColorSet:[I

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->mSundayTextColor:I

    aput v10, v9, v4

    goto :goto_1

    .line 1678
    :sswitch_1
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->mDayColorSet:[I

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->mSaturdayTextColor:I

    aput v10, v9, v4

    goto :goto_1

    .line 1686
    .end local v4    # "index":I
    .end local v5    # "parsedColor":C
    :cond_2
    const/4 v3, 0x0

    :goto_2
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$2500(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 1687
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$2800(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)I

    move-result v9

    add-int/2addr v9, v3

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$2500(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)I

    move-result v10

    rem-int v0, v9, v10

    .line 1688
    .local v0, "calendarDay":I
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->mDayLabelCalendar:Ljava/util/Calendar;

    const/4 v10, 0x7

    invoke-virtual {v9, v10, v0}, Ljava/util/Calendar;->set(II)V

    .line 1690
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$3400(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Ljava/text/SimpleDateFormat;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->mDayLabelCalendar:Ljava/util/Calendar;

    .line 1691
    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    .line 1690
    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 1691
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 1693
    .local v1, "dayLabel":Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$2200(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1694
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$2500(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    .line 1695
    .local v6, "rtlIndex":I
    sub-int v9, v6, v3

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x1

    mul-int/2addr v9, v2

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$3500(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)I

    move-result v10

    add-int v7, v9, v10

    .line 1700
    .end local v6    # "rtlIndex":I
    .local v7, "x":I
    :goto_3
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->mDayColorSet:[I

    aget v10, v10, v0

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 1701
    int-to-float v9, v7

    int-to-float v10, v8

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1686
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1697
    .end local v7    # "x":I
    :cond_3
    mul-int/lit8 v9, v3, 0x2

    add-int/lit8 v9, v9, 0x1

    mul-int/2addr v9, v2

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$3500(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)I

    move-result v10

    add-int v7, v9, v10

    .restart local v7    # "x":I
    goto :goto_3

    .line 1673
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method
