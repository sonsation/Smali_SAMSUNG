.class Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoReflector$BaseAccessibilityNodeInfoReflectorImpl;
.super Ljava/lang/Object;
.source "SeslAccessibilityNodeInfoReflector.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoReflector$AccessibilityNodeInfoReflectorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseAccessibilityNodeInfoReflectorImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoReflector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoReflector$1;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoReflector$BaseAccessibilityNodeInfoReflectorImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getSourceNodeId(Landroid/view/accessibility/AccessibilityNodeInfo;)J
    .locals 6
    .param p1, "nodeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 24
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoReflector;->access$000()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getSourceNodeId"

    new-array v4, v5, [Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 25
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 26
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 27
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_0

    .line 28
    check-cast v1, Ljava/lang/Long;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 31
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getVirtualDescendantId(J)I
    .locals 9
    .param p1, "accessibilityNodeId"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 36
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/accessibility/SeslAccessibilityNodeInfoReflector;->access$000()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getVirtualDescendantId"

    new-array v5, v7, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 37
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 38
    const/4 v3, 0x0

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v0, v4}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 39
    .local v1, "object":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 40
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 43
    :cond_0
    return v2
.end method
