.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$ListItemAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "SeslAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListItemAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 3070
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 3073
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3075
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 3076
    .local v0, "position":I
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v1, p1, v0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3077
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 9
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3081
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3141
    :goto_0
    return v5

    .line 3085
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v7, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    .line 3086
    .local v4, "position":I
    if-eq v4, v8, :cond_1

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v7, :cond_2

    :cond_1
    move v5, v6

    .line 3088
    goto :goto_0

    .line 3091
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lt v4, v7, :cond_3

    move v5, v6

    .line 3098
    goto :goto_0

    .line 3102
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 3103
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v7, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;

    if-eqz v7, :cond_5

    .line 3104
    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;

    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v2, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->isEnabled:Z

    .line 3109
    .local v2, "isItemEnabled":Z
    :goto_1
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    if-nez v2, :cond_6

    :cond_4
    move v5, v6

    .line 3111
    goto :goto_0

    .line 3106
    .end local v2    # "isItemEnabled":Z
    .restart local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "isItemEnabled":Z
    goto :goto_1

    .line 3114
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    sparse-switch p2, :sswitch_data_0

    move v5, v6

    .line 3141
    goto :goto_0

    .line 3116
    :sswitch_0
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getSelectedItemPosition()I

    move-result v7

    if-ne v7, v4, :cond_7

    .line 3117
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v6, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setSelection(I)V

    goto :goto_0

    :cond_7
    move v5, v6

    .line 3120
    goto :goto_0

    .line 3122
    :sswitch_1
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getSelectedItemPosition()I

    move-result v7

    if-eq v7, v4, :cond_8

    .line 3123
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v6, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setSelection(I)V

    goto :goto_0

    :cond_8
    move v5, v6

    .line 3126
    goto :goto_0

    .line 3128
    :sswitch_2
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 3129
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v5, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 3130
    .local v0, "id":J
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v5, p1, v4, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v5

    goto :goto_0

    .end local v0    # "id":J
    :cond_9
    move v5, v6

    .line 3132
    goto :goto_0

    .line 3134
    :sswitch_3
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isLongClickable()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 3135
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v5, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 3136
    .restart local v0    # "id":J
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$ListItemAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v5, p1, v4, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v5

    goto/16 :goto_0

    .end local v0    # "id":J
    :cond_a
    move v5, v6

    .line 3138
    goto/16 :goto_0

    .line 3114
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method
