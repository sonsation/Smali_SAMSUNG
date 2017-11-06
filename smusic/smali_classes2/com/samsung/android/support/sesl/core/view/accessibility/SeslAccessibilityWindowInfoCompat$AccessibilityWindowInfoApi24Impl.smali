.class Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityWindowInfoCompat$AccessibilityWindowInfoApi24Impl;
.super Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityWindowInfoCompat$AccessibilityWindowInfoStubImpl;
.source "SeslAccessibilityWindowInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityWindowInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessibilityWindowInfoApi24Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityWindowInfoCompat$AccessibilityWindowInfoStubImpl;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public getAnchor(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    .prologue
    .line 62
    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityWindowInfoCompatApi24;->getAnchor(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTitle(Landroid/view/accessibility/AccessibilityWindowInfo;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityWindowInfo;

    .prologue
    .line 57
    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityWindowInfoCompatApi24;->getTitle(Landroid/view/accessibility/AccessibilityWindowInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
