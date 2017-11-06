.class Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceRecyclerViewAccessibilityDelegate$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "SeslPreferenceRecyclerViewAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceRecyclerViewAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceRecyclerViewAccessibilityDelegate;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceRecyclerViewAccessibilityDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceRecyclerViewAccessibilityDelegate;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceRecyclerViewAccessibilityDelegate$1;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceRecyclerViewAccessibilityDelegate;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 54
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceRecyclerViewAccessibilityDelegate$1;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceRecyclerViewAccessibilityDelegate;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceRecyclerViewAccessibilityDelegate;->mDefaultItemDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v2, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 55
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceRecyclerViewAccessibilityDelegate$1;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceRecyclerViewAccessibilityDelegate;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceRecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 57
    .local v1, "position":I
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceRecyclerViewAccessibilityDelegate$1;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceRecyclerViewAccessibilityDelegate;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceRecyclerViewAccessibilityDelegate;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v0

    .line 69
    .local v0, "adapter":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceRecyclerViewAccessibilityDelegate$1;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceRecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceRecyclerViewAccessibilityDelegate;->mDefaultItemDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
