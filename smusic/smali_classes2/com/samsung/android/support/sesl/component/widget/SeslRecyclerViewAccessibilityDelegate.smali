.class public Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "SeslRecyclerViewAccessibilityDelegate.java"


# instance fields
.field final mItemDelegate:Landroid/view/View$AccessibilityDelegate;

.field final mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 83
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewAccessibilityDelegate$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewAccessibilityDelegate$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewAccessibilityDelegate;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewAccessibilityDelegate;->mItemDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 34
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 35
    return-void
.end method


# virtual methods
.method public getItemDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewAccessibilityDelegate;->mItemDelegate:Landroid/view/View$AccessibilityDelegate;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 65
    const-class v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 66
    instance-of v1, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, p1

    .line 67
    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 68
    .local v0, "rv":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 72
    .end local v0    # "rv":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 56
    const-class v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 60
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x1

    .line 50
    :goto_0
    return v0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 50
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method shouldIgnore()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->hasPendingAdapterUpdates()Z

    move-result v0

    return v0
.end method
