.class public Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;
.super Ljava/lang/Object;
.source "SeslViewReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$SeslMeasureSpecReflector;,
        Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$Api24ViewReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$BaseViewReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

.field private static final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    const-class v0, Landroid/view/View;

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->mClass:Ljava/lang/Class;

    .line 545
    invoke-static {}, Lcom/samsung/android/support/sesl/core/os/SeslBuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$Api24ViewReflectorImpl;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$Api24ViewReflectorImpl;-><init>(Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$1;)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    .line 550
    :goto_0
    return-void

    .line 548
    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$BaseViewReflectorImpl;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$BaseViewReflectorImpl;-><init>(Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$1;)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static clearAccessibilityFocus(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 644
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;->clearAccessibilityFocus(Landroid/view/View;)V

    .line 645
    return-void
.end method

.method public static findEllipsizedTextView(Landroid/view/View;)Z
    .locals 1
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 831
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;->findEllipsizedTextView(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static findViewByAccessibilityIdTraversal(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "accessibilityId"    # I

    .prologue
    .line 706
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;->findViewByAccessibilityIdTraversal(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static getAccessibilityViewId(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 676
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;->getAccessibilityViewId(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getField_mPaddingLeft(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 587
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getField_mPaddingRight(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 601
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;->getField_mPaddingRight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static getField_mRenderNode(Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 881
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;->getField_mRenderNode(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getViewRootImpl(Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 742
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;->getViewRootImpl(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getWindowDisplayFrame(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "outRect"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 924
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;->getWindowDisplayFrame(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 925
    return-void
.end method

.method public static invalidateViewProperty(Landroid/view/View;ZZ)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "invalidateParent"    # Z
    .param p2, "forceRedraw"    # Z

    .prologue
    .line 903
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;->invalidateViewProperty(Landroid/view/View;ZZ)V

    .line 904
    return-void
.end method

.method public static isHighContrastTextEnabled(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 812
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;->isHighContrastTextEnabled(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isHoveringUIEnabled(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 802
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;->isHoveringUIEnabled(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isInScrollingContainer(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 635
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;->isInScrollingContainer(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isTemporarilyDetached(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 965
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;->isTemporarilyDetached(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static isVisibleToUser(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 716
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;->isVisibleToUser(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public static isVisibleToUser(Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "boundInView"    # Landroid/graphics/Rect;

    .prologue
    .line 732
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;->isVisibleToUser(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public static notifySubtreeAccessibilityStateChangedIfNeeded(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 695
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;->notifySubtreeAccessibilityStateChangedIfNeeded(Landroid/view/View;)V

    .line 696
    return-void
.end method

.method public static notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "changeType"    # I

    .prologue
    .line 686
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;->notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V

    .line 687
    return-void
.end method

.method public static performAccessibilityActionInternal(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 666
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;->performAccessibilityActionInternal(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static performButtonActionOnTouchDown(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 842
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;->performButtonActionOnTouchDown(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public static requestAccessibilityFocus(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 654
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;->requestAccessibilityFocus(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public static resetPaddingToInitialValues(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 917
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;->resetPaddingToInitialValues(Landroid/view/View;)V

    .line 918
    return-void
.end method

.method public static resolvePadding(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 910
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;->resolvePadding(Landroid/view/View;)V

    .line 911
    return-void
.end method

.method public static semGetExtraPaddingBottomForPreference(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 752
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;->semGetExtraPaddingBottomForPreference(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static semGetHoverPopup(Landroid/view/View;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "createIfNotExist"    # Z

    .prologue
    .line 821
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;->semGetHoverPopup(Landroid/view/View;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static semGetHoverPopupType(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 762
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;->semGetHoverPopupType(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static semSetDirectPenInputEnabled(Landroid/view/View;Z)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "enabled"    # Z

    .prologue
    .line 782
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;->semSetDirectPenInputEnabled(Landroid/view/View;Z)V

    .line 783
    return-void
.end method

.method public static semSetHoverPopupType(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "type"    # I

    .prologue
    .line 772
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;->semSetHoverPopupType(Landroid/view/View;I)V

    .line 773
    return-void
.end method

.method public static setField_mLeft(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # I

    .prologue
    .line 855
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;->setField_mLeft(Landroid/view/View;I)V

    .line 856
    return-void
.end method

.method public static setField_mPaddingLeft(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # I

    .prologue
    .line 561
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;->setField_mPaddingLeft(Landroid/view/View;I)V

    .line 562
    return-void
.end method

.method public static setField_mPaddingRight(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # I

    .prologue
    .line 573
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;->setField_mPaddingRight(Landroid/view/View;I)V

    .line 574
    return-void
.end method

.method public static setField_mRight(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # I

    .prologue
    .line 868
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;->setField_mRight(Landroid/view/View;I)V

    .line 869
    return-void
.end method

.method public static setField_mScrollX(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # I

    .prologue
    .line 613
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;->setField_mScrollX(Landroid/view/View;I)V

    .line 614
    return-void
.end method

.method public static setField_mScrollY(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "value"    # I

    .prologue
    .line 625
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;->setField_mScrollY(Landroid/view/View;I)V

    .line 626
    return-void
.end method

.method public static setFingerHovered(Landroid/view/View;Z)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "fingerHovered"    # Z

    .prologue
    .line 792
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector$ViewReflectorImpl;->setFingerHovered(Landroid/view/View;Z)V

    .line 793
    return-void
.end method
