.class Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$Api24ViewCompatImpl;
.super Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$MarshmallowViewCompatImpl;
.source "SeslViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24ViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 435
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$MarshmallowViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelDragAndDrop(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 460
    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompatApi24;->cancelDragAndDrop(Landroid/view/View;)V

    .line 461
    return-void
.end method

.method public dispatchFinishTemporaryDetach(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 443
    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompatApi24;->dispatchFinishTemporaryDetach(Landroid/view/View;)V

    .line 444
    return-void
.end method

.method public dispatchStartTemporaryDetach(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 438
    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompatApi24;->dispatchStartTemporaryDetach(Landroid/view/View;)V

    .line 439
    return-void
.end method

.method public setPointerIcon(Landroid/view/View;Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pointerIconCompat"    # Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat;

    .prologue
    .line 448
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat;->getPointerIcon()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompatApi24;->setPointerIcon(Landroid/view/View;Ljava/lang/Object;)V

    .line 449
    return-void
.end method

.method public startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Landroid/content/ClipData;
    .param p3, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;
    .param p4, "localState"    # Ljava/lang/Object;
    .param p5, "flags"    # I

    .prologue
    .line 454
    invoke-static {p1, p2, p3, p4, p5}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompatApi24;->startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public updateDragShadow(Landroid/view/View;Landroid/view/View$DragShadowBuilder;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;

    .prologue
    .line 465
    invoke-static {p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompatApi24;->updateDragShadow(Landroid/view/View;Landroid/view/View$DragShadowBuilder;)V

    .line 466
    return-void
.end method
