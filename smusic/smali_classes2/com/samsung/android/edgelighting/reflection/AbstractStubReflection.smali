.class public abstract Lcom/samsung/android/edgelighting/reflection/AbstractStubReflection;
.super Ljava/lang/Object;
.source "AbstractStubReflection.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAsInterface:Ljava/lang/reflect/Method;

.field protected mBaseClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/samsung/android/edgelighting/reflection/AbstractStubReflection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/edgelighting/reflection/AbstractStubReflection;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/reflection/AbstractStubReflection;->loadReflection()V

    .line 19
    return-void
.end method

.method private loadReflection()V
    .locals 6

    .prologue
    .line 22
    sget-object v3, Lcom/samsung/android/edgelighting/reflection/AbstractStubReflection;->TAG:Ljava/lang/String;

    const-string v4, "Load reflections"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v3, p0, Lcom/samsung/android/edgelighting/reflection/AbstractStubReflection;->mBaseClass:Ljava/lang/Class;

    if-nez v3, :cond_0

    .line 27
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/reflection/AbstractStubReflection;->getBaseClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/edgelighting/reflection/AbstractStubReflection;->mBaseClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/edgelighting/reflection/AbstractStubReflection;->mBaseClass:Ljava/lang/Class;

    if-nez v3, :cond_2

    .line 34
    sget-object v3, Lcom/samsung/android/edgelighting/reflection/AbstractStubReflection;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There\'s no "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/reflection/AbstractStubReflection;->getBaseClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_1
    :goto_1
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "cnfEx":Ljava/lang/ClassNotFoundException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/samsung/android/edgelighting/reflection/AbstractStubReflection;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Unable to instantiate class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    .end local v0    # "cnfEx":Ljava/lang/ClassNotFoundException;
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/edgelighting/reflection/AbstractStubReflection;->mAsInterface:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    .line 40
    const/4 v3, 0x1

    :try_start_1
    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/IBinder;

    aput-object v4, v2, v3

    .line 44
    .local v2, "paramTypes":[Ljava/lang/Class;
    iget-object v3, p0, Lcom/samsung/android/edgelighting/reflection/AbstractStubReflection;->mBaseClass:Ljava/lang/Class;

    const-string v4, "asInterface"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/edgelighting/reflection/AbstractStubReflection;->mAsInterface:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 45
    .end local v2    # "paramTypes":[Ljava/lang/Class;
    :catch_1
    move-exception v1

    .line 46
    .local v1, "nsmEx":Ljava/lang/NoSuchMethodException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/samsung/android/edgelighting/reflection/AbstractStubReflection;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " No method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public asInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 7
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    const/4 v3, 0x0

    .line 52
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/samsung/android/edgelighting/reflection/AbstractStubReflection;->mAsInterface:Ljava/lang/reflect/Method;

    if-nez v4, :cond_1

    .line 53
    :cond_0
    sget-object v4, Lcom/samsung/android/edgelighting/reflection/AbstractStubReflection;->TAG:Ljava/lang/String;

    const-string v5, "Cannot invoke asInterface"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_0
    return-object v3

    .line 58
    :cond_1
    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    .line 61
    .local v2, "params":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/samsung/android/edgelighting/reflection/AbstractStubReflection;->mAsInterface:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 62
    .end local v2    # "params":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 63
    .local v0, "illAccEx":Ljava/lang/IllegalAccessException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/android/edgelighting/reflection/AbstractStubReflection;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " IllegalAccessException encountered invoking asInterface "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    .end local v0    # "illAccEx":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 65
    .local v1, "invokeTargetEx":Ljava/lang/reflect/InvocationTargetException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/samsung/android/edgelighting/reflection/AbstractStubReflection;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " InvocationTargetException encountered invoking asInterface "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract getBaseClassName()Ljava/lang/String;
.end method
