.class Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPageChangeListener;
.super Ljava/lang/Object;
.source "SeslDatePicker.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)V
    .locals 0

    .prologue
    .line 1447
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;
    .param p2, "x1"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$1;

    .prologue
    .line 1447
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPageChangeListener;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 1450
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 1454
    return-void
.end method

.method public onPageSelected(I)V
    .locals 13
    .param p1, "position"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v12, 0x5

    .line 1458
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$2900(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1459
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v10, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$2902(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;Z)Z

    .line 1509
    :cond_0
    :goto_0
    return-void

    .line 1461
    :cond_1
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$3000(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1462
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v10, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$3002(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;Z)Z

    goto :goto_0

    .line 1466
    :cond_2
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v10, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$702(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;I)I

    .line 1468
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$2200(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1469
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$800(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)I

    move-result v10

    add-int/lit8 v6, v10, -0x1

    .line 1470
    .local v6, "rtlIndex":I
    sub-int v10, v6, p1

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-virtual {v11}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getMinMonth()I

    move-result v11

    add-int v0, v10, v11

    .line 1475
    .end local v6    # "rtlIndex":I
    .local v0, "currentMonth":I
    :goto_1
    div-int/lit8 v10, v0, 0xc

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-virtual {v11}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getMinYear()I

    move-result v11

    add-int v8, v10, v11

    .line 1476
    .local v8, "year":I
    rem-int/lit8 v3, v0, 0xc

    .line 1477
    .local v3, "month":I
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$1300(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1479
    .local v1, "day":I
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10, v2, v8}, Ljava/util/Calendar;->set(II)V

    .line 1480
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v10, v11, v3}, Ljava/util/Calendar;->set(II)V

    .line 1481
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10, v12, v2}, Ljava/util/Calendar;->set(II)V

    .line 1483
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v10

    if-le v1, v10, :cond_3

    .line 1484
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 1486
    :cond_3
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10, v12, v1}, Ljava/util/Calendar;->set(II)V

    .line 1488
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-eq v8, v10, :cond_7

    .line 1489
    .local v2, "isYearChanged":Z
    :goto_2
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$3100(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 1490
    .local v4, "msg":Landroid/os/Message;
    const/16 v9, 0x3e8

    iput v9, v4, Landroid/os/Message;->what:I

    .line 1491
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1492
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$3100(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1494
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$3100(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 1495
    .local v5, "msg1":Landroid/os/Message;
    const/16 v9, 0x3e9

    iput v9, v5, Landroid/os/Message;->what:I

    .line 1496
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$3100(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1499
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$3200(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;

    move-result-object v9

    iget-object v7, v9, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    .line 1500
    .local v7, "views":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;>;"
    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 1501
    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->clearAccessibilityFocus()V

    .line 1503
    :cond_4
    if-eqz p1, :cond_5

    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 1504
    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->clearAccessibilityFocus()V

    .line 1506
    :cond_5
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-static {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->access$800(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq p1, v9, :cond_0

    add-int/lit8 v9, p1, 0x1

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 1507
    add-int/lit8 v9, p1, 0x1

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->clearAccessibilityFocus()V

    goto/16 :goto_0

    .line 1472
    .end local v0    # "currentMonth":I
    .end local v1    # "day":I
    .end local v2    # "isYearChanged":Z
    .end local v3    # "month":I
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "msg1":Landroid/os/Message;
    .end local v7    # "views":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;>;"
    .end local v8    # "year":I
    :cond_6
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPageChangeListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-virtual {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getMinMonth()I

    move-result v10

    add-int v0, p1, v10

    .restart local v0    # "currentMonth":I
    goto/16 :goto_1

    .restart local v1    # "day":I
    .restart local v3    # "month":I
    .restart local v8    # "year":I
    :cond_7
    move v2, v9

    .line 1488
    goto/16 :goto_2
.end method
