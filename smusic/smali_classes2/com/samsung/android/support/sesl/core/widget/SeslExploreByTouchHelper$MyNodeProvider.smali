.class Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper$MyNodeProvider;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "SeslExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyNodeProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;)V
    .locals 0

    .prologue
    .line 1219
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper$MyNodeProvider;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 1220
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2
    .param p1, "virtualViewId"    # I

    .prologue
    .line 1226
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper$MyNodeProvider;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;

    .line 1227
    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 1228
    .local v0, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1
.end method

.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2
    .param p1, "focusType"    # I

    .prologue
    .line 1238
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper$MyNodeProvider;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;

    .line 1239
    invoke-static {v1}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->access$000(Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;)I

    move-result v0

    .line 1240
    .local v0, "focusedId":I
    :goto_0
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 1241
    const/4 v1, 0x0

    .line 1243
    :goto_1
    return-object v1

    .line 1239
    .end local v0    # "focusedId":I
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper$MyNodeProvider;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->access$100(Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;)I

    move-result v0

    goto :goto_0

    .line 1243
    .restart local v0    # "focusedId":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper$MyNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    goto :goto_1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper$MyNodeProvider;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/widget/SeslExploreByTouchHelper;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
