.class Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;
.super Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;
.source "SeslSimpleMonthView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonthViewTouchHelper"
.end annotation


# instance fields
.field private final mTempCalendar:Ljava/util/Calendar;

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;Landroid/view/View;)V
    .locals 1
    .param p2, "host"    # Landroid/view/View;

    .prologue
    .line 691
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;

    .line 692
    invoke-direct {p0, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 688
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 689
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    .line 693
    return-void
.end method

.method private getItemBounds(ILandroid/graphics/Rect;)V
    .locals 11
    .param p1, "day"    # I
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 763
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;

    invoke-static {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->access$400(Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;)I

    move-result v4

    .line 764
    .local v4, "offsetX":I
    const/high16 v9, -0x40800000    # -1.0f

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;

    .line 765
    invoke-static {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->access$500(Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v9, v10

    float-to-int v5, v9

    .line 766
    .local v5, "offsetY":I
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;

    invoke-static {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->access$600(Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;)I

    move-result v0

    .line 767
    .local v0, "cellHeight":I
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;

    invoke-static {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->access$700(Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;

    invoke-static {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->access$800(Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;)I

    move-result v10

    div-int v1, v9, v10

    .line 768
    .local v1, "cellWidth":I
    add-int/lit8 v9, p1, -0x1

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;

    invoke-static {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->access$900(Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;)I

    move-result v10

    add-int v3, v9, v10

    .line 769
    .local v3, "index":I
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;

    invoke-static {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->access$800(Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;)I

    move-result v9

    div-int v6, v3, v9

    .line 770
    .local v6, "row":I
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;

    invoke-static {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->access$800(Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;)I

    move-result v9

    rem-int v2, v3, v9

    .line 771
    .local v2, "column":I
    mul-int v9, v2, v1

    add-int v7, v4, v9

    .line 772
    .local v7, "x":I
    mul-int v9, v6, v0

    add-int v8, v5, v9

    .line 774
    .local v8, "y":I
    add-int v9, v7, v1

    add-int v10, v8, v0

    invoke-virtual {p2, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 775
    return-void
.end method

.method private getItemDescription(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "day"    # I

    .prologue
    .line 786
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->access$1000(Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->access$1100(Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;)I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/Calendar;->set(III)V

    .line 787
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->access$500(Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/16 v1, 0x16

    invoke-static {v0, v2, v3, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearFocusedVirtualView()V
    .locals 4

    .prologue
    .line 696
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;->getFocusedVirtualView()I

    move-result v0

    .line 697
    .local v0, "focusedVirtualView":I
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 698
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 703
    :cond_0
    return-void
.end method

.method protected getVirtualViewAt(FF)I
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 707
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;

    invoke-static {v1, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;FF)I

    move-result v0

    .line 708
    .local v0, "day":I
    if-ltz v0, :cond_0

    .line 711
    .end local v0    # "day":I
    :goto_0
    return v0

    .restart local v0    # "day":I
    :cond_0
    const/high16 v0, -0x80000000

    goto :goto_0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 716
    .local p1, "virtualViewIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    .local v0, "day":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 717
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 719
    :cond_0
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 746
    packed-switch p2, :pswitch_data_0

    .line 753
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 748
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;

    invoke-static {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->access$300(Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;I)V

    .line 749
    const/4 v0, 0x1

    goto :goto_0

    .line 746
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 723
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 724
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "virtualViewId"    # I
    .param p2, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v1, 0x1

    .line 728
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;->getItemBounds(ILandroid/graphics/Rect;)V

    .line 730
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 731
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 732
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 734
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->access$200(Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 735
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 736
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 737
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 738
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 741
    :cond_0
    return-void
.end method
