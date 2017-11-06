.class public Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverOnComputeInternalInsetsListenerReflection;
.super Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection;
.source "ViewTreeObserverOnComputeInternalInsetsListenerReflection.java"


# static fields
.field private static final ORIGINAL_CLASS_NAME:Ljava/lang/String; = "android.view.ViewTreeObserver$OnComputeInternalInsetsListener"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "android.view.ViewTreeObserver$OnComputeInternalInsetsListener"

    invoke-direct {p0, v0}, Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public invokeInternal(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 16
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "methodName":Ljava/lang/String;
    const-string v1, "onComputeInternalInsets"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    const/4 v1, 0x0

    aget-object v1, p3, v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverOnComputeInternalInsetsListenerReflection;->onComputeInternalInsets(Ljava/lang/Object;)V

    .line 22
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 20
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection;->invokeInternal(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public onComputeInternalInsets(Ljava/lang/Object;)V
    .locals 0
    .param p1, "inoutInfo"    # Ljava/lang/Object;

    .prologue
    .line 26
    return-void
.end method
