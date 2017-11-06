.class Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection$InvocationHooker;
.super Ljava/lang/Object;
.source "AbstractProxyReflection.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InvocationHooker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection$InvocationHooker;->this$0:Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 24
    const-string v0, "hashCode"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection$InvocationHooker;->this$0:Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection;->getHashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v0, "equals"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    const-string v0, "AbstractProxyReflection"

    const-string v1, "Equals method "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection$InvocationHooker;->this$0:Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection;->invokeInternal(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
