.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$ListItemAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "SeslAbsHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListItemAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 2912
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 2915
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2917
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 2918
    .local v0, "position":I
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v1, p1, v0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2919
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 8
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2923
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2967
    :goto_0
    return v4

    .line 2927
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v6, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 2928
    .local v1, "position":I
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 2930
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eq v1, v7, :cond_1

    if-nez v0, :cond_2

    :cond_1
    move v4, v5

    .line 2932
    goto :goto_0

    .line 2935
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    move v4, v5

    .line 2937
    goto :goto_0

    .line 2940
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v6, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    .line 2942
    .local v2, "id":J
    sparse-switch p2, :sswitch_data_0

    move v4, v5

    .line 2967
    goto :goto_0

    .line 2944
    :sswitch_0
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getSelectedItemPosition()I

    move-result v6

    if-ne v6, v1, :cond_5

    .line 2945
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v5, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setSelection(I)V

    goto :goto_0

    :cond_5
    move v4, v5

    .line 2948
    goto :goto_0

    .line 2950
    :sswitch_1
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getSelectedItemPosition()I

    move-result v6

    if-eq v6, v1, :cond_6

    .line 2951
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v5, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setSelection(I)V

    goto :goto_0

    :cond_6
    move v4, v5

    .line 2954
    goto :goto_0

    .line 2956
    :sswitch_2
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2957
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v4, p1, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v4

    goto :goto_0

    :cond_7
    move v4, v5

    .line 2959
    goto :goto_0

    .line 2961
    :sswitch_3
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isLongClickable()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2962
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$ListItemAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v4, p1, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v4

    goto :goto_0

    :cond_8
    move v4, v5

    .line 2964
    goto :goto_0

    .line 2942
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method
