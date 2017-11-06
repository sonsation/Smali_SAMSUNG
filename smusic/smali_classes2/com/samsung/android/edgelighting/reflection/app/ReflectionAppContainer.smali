.class public Lcom/samsung/android/edgelighting/reflection/app/ReflectionAppContainer;
.super Ljava/lang/Object;
.source "ReflectionAppContainer.java"


# static fields
.field private static sKeyguardManagerReflection:Lcom/samsung/android/edgelighting/reflection/app/KeyguardManagerReflection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKeyguardManager()Lcom/samsung/android/edgelighting/reflection/app/KeyguardManagerReflection;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/samsung/android/edgelighting/reflection/app/ReflectionAppContainer;->sKeyguardManagerReflection:Lcom/samsung/android/edgelighting/reflection/app/KeyguardManagerReflection;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lcom/samsung/android/edgelighting/reflection/app/KeyguardManagerReflection;

    invoke-direct {v0}, Lcom/samsung/android/edgelighting/reflection/app/KeyguardManagerReflection;-><init>()V

    sput-object v0, Lcom/samsung/android/edgelighting/reflection/app/ReflectionAppContainer;->sKeyguardManagerReflection:Lcom/samsung/android/edgelighting/reflection/app/KeyguardManagerReflection;

    .line 11
    :cond_0
    sget-object v0, Lcom/samsung/android/edgelighting/reflection/app/ReflectionAppContainer;->sKeyguardManagerReflection:Lcom/samsung/android/edgelighting/reflection/app/KeyguardManagerReflection;

    return-object v0
.end method
