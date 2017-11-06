.class final Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ChildAccessibilityDelegate;
.super Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$AccessibilityDelegate;
.source "SeslDrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ChildAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    .prologue
    .line 2364
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$ChildAccessibilityDelegate;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$AccessibilityDelegate;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;)V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 2368
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2370
    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->includeChildForAccessibility(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2374
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2376
    :cond_0
    return-void
.end method
