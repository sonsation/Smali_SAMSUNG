.class Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "SemHorizontalAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListItemAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SemHorizontalAbsListView;


# direct methods
.method constructor <init>(Landroid/widget/SemHorizontalAbsListView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SemHorizontalAbsListView;

    .prologue
    .line 3213
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p1, "host"    # Landroid/view/View;

    .prologue
    .line 3220
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_0

    .line 3221
    const/4 v0, 0x0

    return-object v0

    .line 3223
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View$AccessibilityDelegate;->createAccessibilityNodeInfo(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 3228
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3230
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 3231
    .local v0, "position":I
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v1, p1, v0, p2}, Landroid/widget/SemHorizontalAbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3227
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 8
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3236
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3237
    return v6

    .line 3240
    :cond_0
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v4, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 3241
    .local v1, "position":I
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 3243
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eq v1, v7, :cond_1

    if-nez v0, :cond_2

    .line 3245
    :cond_1
    return v5

    .line 3248
    :cond_2
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3253
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v4, v1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v2

    .line 3255
    .local v2, "id":J
    sparse-switch p2, :sswitch_data_0

    .line 3280
    return v5

    .line 3250
    .end local v2    # "id":J
    :cond_3
    return v5

    .line 3257
    .restart local v2    # "id":J
    :sswitch_0
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v4

    if-ne v4, v1, :cond_4

    .line 3258
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v4, v7}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 3259
    return v6

    .line 3261
    :cond_4
    return v5

    .line 3263
    :sswitch_1
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v4}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v4

    if-eq v4, v1, :cond_5

    .line 3264
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v4, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 3265
    return v6

    .line 3267
    :cond_5
    return v5

    .line 3269
    :sswitch_2
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v4}, Landroid/view/View;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3270
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v4, p1, v1, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v4

    return v4

    .line 3272
    :cond_6
    return v5

    .line 3274
    :sswitch_3
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v4}, Landroid/view/View;->isLongClickable()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3275
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v4, p1, v1, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v4

    return v4

    .line 3277
    :cond_7
    return v5

    .line 3255
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method
