.class public Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoReflector;
.super Ljava/lang/Object;
.source "SeslAccessibilityNodeInfoReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoReflector$BaseAccessibilityNodeInfoReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoReflector$AccessibilityNodeInfoReflectorImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoReflector$AccessibilityNodeInfoReflectorImpl;

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
    .line 11
    const-class v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoReflector;->mClass:Ljava/lang/Class;

    .line 49
    new-instance v0, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoReflector$BaseAccessibilityNodeInfoReflectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoReflector$BaseAccessibilityNodeInfoReflectorImpl;-><init>(Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoReflector$1;)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoReflector$AccessibilityNodeInfoReflectorImpl;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getSourceNodeId(Landroid/view/accessibility/AccessibilityNodeInfo;)J
    .locals 2
    .param p0, "nodeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 59
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoReflector$AccessibilityNodeInfoReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoReflector$AccessibilityNodeInfoReflectorImpl;->getSourceNodeId(Landroid/view/accessibility/AccessibilityNodeInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getVirtualDescendantId(J)I
    .locals 2
    .param p0, "accessibilityNodeId"    # J

    .prologue
    .line 69
    sget-object v0, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoReflector;->IMPL:Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoReflector$AccessibilityNodeInfoReflectorImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoReflector$AccessibilityNodeInfoReflectorImpl;->getVirtualDescendantId(J)I

    move-result v0

    return v0
.end method
