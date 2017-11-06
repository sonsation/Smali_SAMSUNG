.class Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView$AccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "SeslNestedScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityDelegate"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1888
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1945
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    move-object v0, p1

    .line 1946
    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;

    .line 1947
    .local v0, "nsvHost":Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;
    const-class v3, Landroid/widget/ScrollView;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1948
    move-object v1, p2

    .line 1949
    .local v1, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    .line 1950
    .local v2, "scrollable":Z
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 1951
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityRecord;->setScrollX(I)V

    .line 1952
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    .line 1953
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollX(I)V

    .line 1954
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    .line 1955
    return-void

    .line 1949
    .end local v2    # "scrollable":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1926
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    move-object v0, p1

    .line 1927
    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;

    .line 1928
    .local v0, "nsvHost":Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;
    const-class v2, Landroid/widget/ScrollView;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1929
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1930
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v1

    .line 1931
    .local v1, "scrollRange":I
    if-lez v1, :cond_1

    .line 1932
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1933
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v2

    if-lez v2, :cond_0

    .line 1934
    const/16 v2, 0x2000

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1936
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v2

    if-ge v2, v1, :cond_1

    .line 1937
    const/16 v2, 0x1000

    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1941
    .end local v1    # "scrollRange":I
    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 7
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1891
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1921
    :goto_0
    return v3

    :cond_0
    move-object v0, p1

    .line 1894
    check-cast v0, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;

    .line 1895
    .local v0, "nsvHost":Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    move v3, v4

    .line 1896
    goto :goto_0

    .line 1898
    :cond_1
    sparse-switch p2, :sswitch_data_0

    move v3, v4

    .line 1921
    goto :goto_0

    .line 1900
    :sswitch_0
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 1901
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingTop()I

    move-result v6

    sub-int v2, v5, v6

    .line 1902
    .local v2, "viewportHeight":I
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v5

    add-int/2addr v5, v2

    .line 1903
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollRange()I

    move-result v6

    .line 1902
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1904
    .local v1, "targetScrollY":I
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v5

    if-eq v1, v5, :cond_2

    .line 1905
    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_2
    move v3, v4

    .line 1909
    goto :goto_0

    .line 1911
    .end local v1    # "targetScrollY":I
    .end local v2    # "viewportHeight":I
    :sswitch_1
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 1912
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getPaddingTop()I

    move-result v6

    sub-int v2, v5, v6

    .line 1913
    .restart local v2    # "viewportHeight":I
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1914
    .restart local v1    # "targetScrollY":I
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->getScrollY()I

    move-result v5

    if-eq v1, v5, :cond_3

    .line 1915
    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslNestedScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_3
    move v3, v4

    .line 1919
    goto :goto_0

    .line 1898
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method
