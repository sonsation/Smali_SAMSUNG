.class final Landroid/app/SystemServiceRegistry$27;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher",
        "<",
        "Lcom/samsung/android/location/SemLocationManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 484
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService()Lcom/samsung/android/location/SemLocationManager;
    .locals 10

    .prologue
    .line 487
    const-string/jumbo v6, "sec_location"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 488
    .local v1, "b":Landroid/os/IBinder;
    const/4 v5, 0x0

    .line 490
    .local v5, "sLocationManager":Lcom/samsung/android/location/SemLocationManager;
    :try_start_0
    const-string/jumbo v6, "com.samsung.android.location.SLocationLoader"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 491
    .local v4, "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v6, "getSLocationManager"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Landroid/os/IBinder;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 492
    .local v3, "getSLocationManager":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/samsung/android/location/SemLocationManager;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    .end local v3    # "getSLocationManager":Ljava/lang/reflect/Method;
    .end local v4    # "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "sLocationManager":Lcom/samsung/android/location/SemLocationManager;
    :goto_0
    return-object v5

    .line 493
    .restart local v5    # "sLocationManager":Lcom/samsung/android/location/SemLocationManager;
    :catch_0
    move-exception v2

    .line 494
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "SystemServiceRegistry"

    const-string/jumbo v7, "Getting SLocation has been failed, error or not support"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic createService()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 486
    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$27;->createService()Lcom/samsung/android/location/SemLocationManager;

    move-result-object v0

    return-object v0
.end method
