.class public abstract Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection;
.super Ljava/lang/Object;
.source "AbstractProxyReflection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection$InvocationHooker;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "AbstractProxyReflection"


# instance fields
.field protected mBaseClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected mClassName:Ljava/lang/String;

.field protected mProxyInstance:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 36
    new-array v0, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "className"    # Ljava/lang/String;
    .param p3, "constructorArgValues"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "constructorArgTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v3, p0, Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection;->mClassName:Ljava/lang/String;

    .line 18
    iput-object v3, p0, Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection;->mBaseClass:Ljava/lang/Class;

    .line 19
    iput-object v3, p0, Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection;->mProxyInstance:Ljava/lang/Object;

    .line 40
    iput-object p1, p0, Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection;->mClassName:Ljava/lang/String;

    .line 43
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection;->mClassName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection;->mBaseClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection;->mBaseClass:Ljava/lang/Class;

    if-nez v3, :cond_0

    .line 49
    const-string v3, "AbstractProxyReflection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There\'s no "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection;->mClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_1
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "cnfEx":Ljava/lang/ClassNotFoundException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AbstractProxyReflection Unable to instantiate class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    .end local v0    # "cnfEx":Ljava/lang/ClassNotFoundException;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection;->mBaseClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection;->mBaseClass:Ljava/lang/Class;

    aput-object v6, v4, v5

    new-instance v5, Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection$InvocationHooker;

    invoke-direct {v5, p0}, Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection$InvocationHooker;-><init>(Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection;)V

    invoke-static {v3, v4, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection;->mProxyInstance:Ljava/lang/Object;

    .line 58
    const-string v3, "AbstractProxyReflection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create proxy instance for interface : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection;->mClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 59
    :catch_1
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection;->mBaseClass:Ljava/lang/Class;

    invoke-static {v3}, Lcom/google/dexmaker/stock/ProxyBuilder;->forClass(Ljava/lang/Class;)Lcom/google/dexmaker/stock/ProxyBuilder;

    move-result-object v3

    .line 63
    invoke-virtual {v3, p2}, Lcom/google/dexmaker/stock/ProxyBuilder;->constructorArgTypes([Ljava/lang/Class;)Lcom/google/dexmaker/stock/ProxyBuilder;

    move-result-object v3

    .line 64
    invoke-virtual {v3, p3}, Lcom/google/dexmaker/stock/ProxyBuilder;->constructorArgValues([Ljava/lang/Object;)Lcom/google/dexmaker/stock/ProxyBuilder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection$InvocationHooker;

    invoke-direct {v4, p0}, Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection$InvocationHooker;-><init>(Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection;)V

    .line 65
    invoke-virtual {v3, v4}, Lcom/google/dexmaker/stock/ProxyBuilder;->handler(Ljava/lang/reflect/InvocationHandler;)Lcom/google/dexmaker/stock/ProxyBuilder;

    move-result-object v3

    .line 66
    invoke-virtual {v3}, Lcom/google/dexmaker/stock/ProxyBuilder;->build()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection;->mProxyInstance:Ljava/lang/Object;

    .line 67
    const-string v3, "AbstractProxyReflection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create proxy instance for concrete class : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection;->mClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 68
    :catch_2
    move-exception v2

    .line 69
    .local v2, "ioe":Ljava/io/IOException;
    const-string v3, "AbstractProxyReflection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Occur IOException during build proxy instance : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method


# virtual methods
.method public getClassType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection;->mBaseClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getHashCode()I
    .locals 3

    .prologue
    .line 94
    const-string v0, "AbstractProxyReflection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create reflection hash code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection;->mProxyInstance:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getProxyInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/android/edgelighting/reflection/AbstractProxyReflection;->mProxyInstance:Ljava/lang/Object;

    return-object v0
.end method

.method public invokeInternal(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 85
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/dexmaker/stock/ProxyBuilder;->callSuper(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 90
    :goto_0
    return-object v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    const/4 v1, 0x0

    goto :goto_0
.end method
