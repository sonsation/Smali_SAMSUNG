.class Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$MarshmallowViewCompatImpl;
.super Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$BaseViewCompatImpl;
.source "SeslViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MarshmallowViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$BaseViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getScrollIndicators(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 420
    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompatMarshmallow;->getScrollIndicators(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public offsetLeftAndRight(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # I

    .prologue
    .line 426
    invoke-static {p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompatMarshmallow;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 427
    return-void
.end method

.method public offsetTopAndBottom(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # I

    .prologue
    .line 431
    invoke-static {p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompatMarshmallow;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 432
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "indicators"    # I

    .prologue
    .line 410
    invoke-static {p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompatMarshmallow;->setScrollIndicators(Landroid/view/View;I)V

    .line 411
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;II)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "indicators"    # I
    .param p3, "mask"    # I

    .prologue
    .line 415
    invoke-static {p1, p2, p3}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompatMarshmallow;->setScrollIndicators(Landroid/view/View;II)V

    .line 416
    return-void
.end method
