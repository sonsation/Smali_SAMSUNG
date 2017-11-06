.class public Lcom/samsung/android/edgelighting/reflection/ReflectionContainer;
.super Ljava/lang/Object;
.source "ReflectionContainer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIWindowManagerStub()Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerStubReflection;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/samsung/android/edgelighting/reflection/view/ReflectionViewContainer;->getIWindowManagerStubReflection()Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerStubReflection;

    move-result-object v0

    return-object v0
.end method

.method public static getKeyguardManager()Lcom/samsung/android/edgelighting/reflection/app/KeyguardManagerReflection;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/samsung/android/edgelighting/reflection/app/ReflectionAppContainer;->getKeyguardManager()Lcom/samsung/android/edgelighting/reflection/app/KeyguardManagerReflection;

    move-result-object v0

    return-object v0
.end method

.method public static getServiceManager()Lcom/samsung/android/edgelighting/reflection/os/ServiceManagerReflection;
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/samsung/android/edgelighting/reflection/os/ReflectionOsContainer;->getServiceManagerReflection()Lcom/samsung/android/edgelighting/reflection/os/ServiceManagerReflection;

    move-result-object v0

    return-object v0
.end method

.method public static getViewTreeObserver()Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverReflection;
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/samsung/android/edgelighting/reflection/view/ReflectionViewContainer;->getViewTreeObserver()Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverReflection;

    move-result-object v0

    return-object v0
.end method

.method public static getViewTreeObserverInternalInsetsInfo()Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverInternalInsetsInfoReflection;
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/samsung/android/edgelighting/reflection/view/ReflectionViewContainer;->getViewTreeObserverInternalInsetsInfoReflection()Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverInternalInsetsInfoReflection;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18
    const-string v0, "dexmaker.dexcache"

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    :cond_0
    return-void
.end method
