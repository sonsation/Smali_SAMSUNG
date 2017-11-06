.class Lcom/samsung/android/support/sesl/core/view/SeslViewRootImplReflector$BaseViewRootImplReflectorImpl;
.super Ljava/lang/Object;
.source "SeslViewRootImplReflector.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/view/SeslViewRootImplReflector$ViewRootImplReflectorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/view/SeslViewRootImplReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseViewRootImplReflectorImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/core/view/SeslViewRootImplReflector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/core/view/SeslViewRootImplReflector$1;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewRootImplReflector$BaseViewRootImplReflectorImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessibilityFocusedHost(Ljava/lang/Object;)Landroid/view/View;
    .locals 6
    .param p1, "viewRootImpl"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 27
    const-string v2, "android.view.ViewRootImpl"

    const-string v3, "getAccessibilityFocusedHost"

    new-array v4, v5, [Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 28
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 29
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 30
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 31
    check-cast v1, Landroid/view/View;

    .line 34
    .end local v1    # "object":Ljava/lang/Object;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAccessibilityFocusedVirtualView(Ljava/lang/Object;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6
    .param p1, "viewRootImpl"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 39
    const-string v2, "android.view.ViewRootImpl"

    const-string v3, "getAccessibilityFocusedVirtualView"

    new-array v4, v5, [Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 40
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 41
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 42
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v2, :cond_0

    .line 43
    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 46
    .end local v1    # "object":Ljava/lang/Object;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSkipPanScrollAnimation(Ljava/lang/Object;ZZ)V
    .locals 8
    .param p1, "viewRootImpl"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bSkipEnter"    # Z
    .param p3, "bSkipExit"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 51
    const-string v1, "android.view.ViewRootImpl"

    const-string/jumbo v2, "setSkipPanScrollAnimation"

    new-array v3, v7, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 52
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 53
    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_0
    return-void
.end method
