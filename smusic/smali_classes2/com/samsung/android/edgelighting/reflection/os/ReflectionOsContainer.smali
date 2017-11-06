.class public Lcom/samsung/android/edgelighting/reflection/os/ReflectionOsContainer;
.super Ljava/lang/Object;
.source "ReflectionOsContainer.java"


# static fields
.field private static sServiceManagerReflection:Lcom/samsung/android/edgelighting/reflection/os/ServiceManagerReflection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getServiceManagerReflection()Lcom/samsung/android/edgelighting/reflection/os/ServiceManagerReflection;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/samsung/android/edgelighting/reflection/os/ReflectionOsContainer;->sServiceManagerReflection:Lcom/samsung/android/edgelighting/reflection/os/ServiceManagerReflection;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lcom/samsung/android/edgelighting/reflection/os/ServiceManagerReflection;

    invoke-direct {v0}, Lcom/samsung/android/edgelighting/reflection/os/ServiceManagerReflection;-><init>()V

    sput-object v0, Lcom/samsung/android/edgelighting/reflection/os/ReflectionOsContainer;->sServiceManagerReflection:Lcom/samsung/android/edgelighting/reflection/os/ServiceManagerReflection;

    .line 11
    :cond_0
    sget-object v0, Lcom/samsung/android/edgelighting/reflection/os/ReflectionOsContainer;->sServiceManagerReflection:Lcom/samsung/android/edgelighting/reflection/os/ServiceManagerReflection;

    return-object v0
.end method
