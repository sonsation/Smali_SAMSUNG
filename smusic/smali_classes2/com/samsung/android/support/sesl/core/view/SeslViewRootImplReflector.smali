.class public Lcom/samsung/android/support/sesl/core/view/SeslViewRootImplReflector;
.super Ljava/lang/Object;
.source "SeslViewRootImplReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/view/SeslViewRootImplReflector$BaseViewRootImplReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/view/SeslViewRootImplReflector$ViewRootImplReflectorImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewRootImplReflector$ViewRootImplReflectorImpl;

.field private static final mClassName:Ljava/lang/String; = "android.view.ViewRootImpl"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/SeslViewRootImplReflector$BaseViewRootImplReflectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewRootImplReflector$BaseViewRootImplReflectorImpl;-><init>(Lcom/samsung/android/support/sesl/core/view/SeslViewRootImplReflector$1;)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewRootImplReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewRootImplReflector$ViewRootImplReflectorImpl;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccessibilityFocusedHost(Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .param p0, "viewRootImpl"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 70
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewRootImplReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewRootImplReflector$ViewRootImplReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewRootImplReflector$ViewRootImplReflectorImpl;->getAccessibilityFocusedHost(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static getAccessibilityFocusedVirtualView(Ljava/lang/Object;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p0, "viewRootImpl"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 80
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewRootImplReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewRootImplReflector$ViewRootImplReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewRootImplReflector$ViewRootImplReflectorImpl;->getAccessibilityFocusedVirtualView(Ljava/lang/Object;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static setSkipPanScrollAnimation(Ljava/lang/Object;ZZ)V
    .locals 1
    .param p0, "viewRootImpl"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "bSkipEnter"    # Z
    .param p2, "bSkipExit"    # Z

    .prologue
    .line 91
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/SeslViewRootImplReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/SeslViewRootImplReflector$ViewRootImplReflectorImpl;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslViewRootImplReflector$ViewRootImplReflectorImpl;->setSkipPanScrollAnimation(Ljava/lang/Object;ZZ)V

    .line 92
    return-void
.end method
