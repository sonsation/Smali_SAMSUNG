.class public Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;
.super Ljava/lang/Object;
.source "SeslViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$Api24ViewCompatImpl;,
        Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$MarshmallowViewCompatImpl;,
        Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$BaseViewCompatImpl;,
        Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatImpl;,
        Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ScrollIndicators;,
        Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$FocusRelativeDirection;,
        Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$FocusRealDirection;,
        Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$FocusDirection;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatImpl;

.field public static final SCROLL_INDICATOR_BOTTOM:I = 0x2

.field public static final SCROLL_INDICATOR_END:I = 0x20

.field public static final SCROLL_INDICATOR_LEFT:I = 0x4

.field public static final SCROLL_INDICATOR_RIGHT:I = 0x8

.field public static final SCROLL_INDICATOR_START:I = 0x10

.field public static final SCROLL_INDICATOR_TOP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SeslViewCompat"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 471
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 472
    .local v0, "version":I
    invoke-static {}, Lcom/samsung/android/support/sesl/core/os/SeslBuildCompat;->isAtLeastN()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    new-instance v1, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$Api24ViewCompatImpl;

    invoke-direct {v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$Api24ViewCompatImpl;-><init>()V

    sput-object v1, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatImpl;

    .line 479
    :goto_0
    return-void

    .line 474
    :cond_0
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 475
    new-instance v1, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$MarshmallowViewCompatImpl;

    invoke-direct {v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$MarshmallowViewCompatImpl;-><init>()V

    sput-object v1, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatImpl;

    goto :goto_0

    .line 477
    :cond_1
    new-instance v1, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$BaseViewCompatImpl;

    invoke-direct {v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$BaseViewCompatImpl;-><init>()V

    sput-object v1, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatImpl;

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animate(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 500
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatImpl;->animate(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v0

    return-object v0
.end method

.method public static cancelDragAndDrop(Landroid/view/View;)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 643
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatImpl;->cancelDragAndDrop(Landroid/view/View;)V

    .line 644
    return-void
.end method

.method public static dispatchFinishTemporaryDetach(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 539
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatImpl;->dispatchFinishTemporaryDetach(Landroid/view/View;)V

    .line 540
    return-void
.end method

.method public static dispatchStartTemporaryDetach(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 532
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatImpl;->dispatchStartTemporaryDetach(Landroid/view/View;)V

    .line 533
    return-void
.end method

.method public static getScrollIndicators(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 620
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatImpl;->getScrollIndicators(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static hasAccessibilityDelegate(Landroid/view/View;)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 488
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatImpl;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static offsetLeftAndRight(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "offset"    # I

    .prologue
    .line 557
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatImpl;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 558
    return-void
.end method

.method public static offsetTopAndBottom(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "offset"    # I

    .prologue
    .line 548
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatImpl;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 549
    return-void
.end method

.method public static setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 511
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatImpl;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 512
    return-void
.end method

.method public static setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 524
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatImpl;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    .line 525
    return-void
.end method

.method public static setPointerIcon(Landroid/view/View;Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "pointerIcon"    # Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat;

    .prologue
    .line 628
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatImpl;->setPointerIcon(Landroid/view/View;Lcom/samsung/android/support/sesl/core/view/SeslPointerIconCompat;)V

    .line 629
    return-void
.end method

.method public static setScrollIndicators(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "indicators"    # I

    .prologue
    .line 572
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatImpl;->setScrollIndicators(Landroid/view/View;I)V

    .line 573
    return-void
.end method

.method public static setScrollIndicators(Landroid/view/View;II)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "indicators"    # I
    .param p2, "mask"    # I

    .prologue
    .line 604
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatImpl;->setScrollIndicators(Landroid/view/View;II)V

    .line 605
    return-void
.end method

.method public static startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    .locals 6
    .param p0, "v"    # Landroid/view/View;
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;
    .param p3, "localState"    # Ljava/lang/Object;
    .param p4, "flags"    # I

    .prologue
    .line 636
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatImpl;->startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public static updateDragShadow(Landroid/view/View;Landroid/view/View$DragShadowBuilder;)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;

    .prologue
    .line 650
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat$ViewCompatImpl;->updateDragShadow(Landroid/view/View;Landroid/view/View$DragShadowBuilder;)V

    .line 651
    return-void
.end method
