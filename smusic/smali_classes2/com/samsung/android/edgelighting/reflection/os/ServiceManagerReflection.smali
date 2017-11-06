.class public Lcom/samsung/android/edgelighting/reflection/os/ServiceManagerReflection;
.super Lcom/samsung/android/edgelighting/reflection/AbstractBaseReflection;
.source "ServiceManagerReflection.java"


# static fields
.field private static sInstance:Lcom/samsung/android/edgelighting/reflection/os/ServiceManagerReflection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/reflection/AbstractBaseReflection;-><init>()V

    return-void
.end method


# virtual methods
.method public checkService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 25
    new-array v0, v3, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v4

    .line 28
    .local v0, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v2, "checkService"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {p0, v2, v0, v3}, Lcom/samsung/android/edgelighting/reflection/os/ServiceManagerReflection;->invokeStaticMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 29
    .local v1, "result":Ljava/lang/Object;
    if-nez v1, :cond_0

    const/4 v1, 0x0

    .end local v1    # "result":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "result":Ljava/lang/Object;
    :cond_0
    check-cast v1, Landroid/os/IBinder;

    goto :goto_0
.end method

.method protected getBaseClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "android.os.ServiceManager"

    return-object v0
.end method

.method public getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 17
    new-array v0, v3, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v4

    .line 20
    .local v0, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v2, "getService"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {p0, v2, v0, v3}, Lcom/samsung/android/edgelighting/reflection/os/ServiceManagerReflection;->invokeStaticMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 21
    .local v1, "result":Ljava/lang/Object;
    if-nez v1, :cond_0

    const/4 v1, 0x0

    .end local v1    # "result":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "result":Ljava/lang/Object;
    :cond_0
    check-cast v1, Landroid/os/IBinder;

    goto :goto_0
.end method

.method public getTileService()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    const-string v0, "getTileService"

    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/reflection/os/ServiceManagerReflection;->invokeStaticMethod(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
