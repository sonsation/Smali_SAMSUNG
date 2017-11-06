.class Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompat$Api23PopupWindowImpl;
.super Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompat$BasePopupWindowImpl;
.source "SeslPopupWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23PopupWindowImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompat$BasePopupWindowImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getOverlapAnchor(Landroid/widget/PopupWindow;)Z
    .locals 1
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;

    .prologue
    .line 131
    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompatApi23;->getOverlapAnchor(Landroid/widget/PopupWindow;)Z

    move-result v0

    return v0
.end method

.method public getWindowLayoutType(Landroid/widget/PopupWindow;)I
    .locals 1
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;

    .prologue
    .line 141
    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompatApi23;->getWindowLayoutType(Landroid/widget/PopupWindow;)I

    move-result v0

    return v0
.end method

.method public setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
    .locals 0
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p2, "overlapAnchor"    # Z

    .prologue
    .line 126
    invoke-static {p1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompatApi23;->setOverlapAnchor(Landroid/widget/PopupWindow;Z)V

    .line 127
    return-void
.end method

.method public setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .locals 0
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p2, "layoutType"    # I

    .prologue
    .line 136
    invoke-static {p1, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslPopupWindowCompatApi23;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 137
    return-void
.end method
