.class Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;
.super Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;
.source "SeslDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

.field views:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)V
    .locals 1

    .prologue
    .line 1366
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;-><init>()V

    .line 1364
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    .line 1367
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 3
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyItem : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$2100(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;Ljava/lang/String;)V

    .line 1419
    check-cast p1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    .end local p1    # "pager":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->removeView(Landroid/view/View;)V

    .line 1420
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1421
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    const-string v1, "finishUpdate"

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$2100(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;Ljava/lang/String;)V

    .line 1441
    return-void
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 1376
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getMaxYear()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getMinYear()I

    move-result v2

    sub-int v0, v1, v2

    .line 1377
    .local v0, "diffYear":I
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .line 1378
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getMaxMonth()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getMinMonth()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v0, 0xc

    add-int/2addr v2, v3

    .line 1377
    invoke-static {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$802(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;I)I

    .line 1379
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$800(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)I

    move-result v1

    return v1
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 1371
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 15
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 1384
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$400(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;-><init>(Landroid/content/Context;)V

    .line 1385
    .local v1, "v":Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "instantiateItem : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$2100(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;Ljava/lang/String;)V

    .line 1386
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->setClickable(Z)V

    .line 1387
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-virtual {v1, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->setOnDayClickListener(Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$OnDayClickListener;)V

    .line 1388
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->setTextColor()V

    .line 1391
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$2200(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1392
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$800(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)I

    move-result v5

    add-int/lit8 v14, v5, -0x1

    .line 1393
    .local v14, "rtlIndex":I
    sub-int v5, v14, p2

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getMinMonth()I

    move-result v6

    add-int v13, v5, v6

    .line 1398
    .end local v14    # "rtlIndex":I
    .local v13, "currentMonth":I
    :goto_0
    div-int/lit8 v5, v13, 0xc

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getMinYear()I

    move-result v6

    add-int v4, v5, v6

    .line 1399
    .local v4, "year":I
    rem-int/lit8 v3, v13, 0xc

    .line 1400
    .local v3, "month":I
    const/4 v2, -0x1

    .line 1401
    .local v2, "selectedDay":I
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$1300(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v5, v4, :cond_0

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .line 1402
    invoke-static {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$1300(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v5, v3, :cond_0

    .line 1403
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$1300(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1405
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getFirstDayOfWeek()I

    move-result v5

    const/4 v6, 0x1

    const/16 v7, 0x1f

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$2300(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .line 1406
    invoke-static {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$2400(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$1500(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v11}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$1600(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v12}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$1400(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)I

    move-result v12

    .line 1405
    invoke-virtual/range {v1 .. v12}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;I)V

    .line 1407
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->getNumDays()I

    move-result v6

    invoke-static {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$2502(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;I)I

    .line 1408
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$2700(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$2602(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;I)I

    .line 1409
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->getWeekStart()I

    move-result v6

    invoke-static {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$2802(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;I)I

    .line 1410
    check-cast p1, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    .end local p1    # "pager":Landroid/view/View;
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->addView(Landroid/view/View;I)V

    .line 1411
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    move/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1413
    return-object v1

    .line 1395
    .end local v2    # "selectedDay":I
    .end local v3    # "month":I
    .end local v4    # "year":I
    .end local v13    # "currentMonth":I
    .restart local p1    # "pager":Landroid/view/View;
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getMinMonth()I

    move-result v5

    add-int v13, p2, v5

    .restart local v13    # "currentMonth":I
    goto/16 :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1425
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1430
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    const-string/jumbo v1, "startUpdate"

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$2100(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;Ljava/lang/String;)V

    .line 1436
    return-void
.end method
