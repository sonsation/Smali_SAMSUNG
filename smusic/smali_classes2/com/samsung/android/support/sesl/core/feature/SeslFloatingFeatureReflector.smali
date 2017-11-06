.class public Lcom/samsung/android/support/sesl/core/feature/SeslFloatingFeatureReflector;
.super Ljava/lang/Object;
.source "SeslFloatingFeatureReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/feature/SeslFloatingFeatureReflector$Api24FloatingFeatureReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/feature/SeslFloatingFeatureReflector$BaseFloatingFeatureReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/feature/SeslFloatingFeatureReflector$FloatingFeatureReflectorImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/feature/SeslFloatingFeatureReflector$FloatingFeatureReflectorImpl;

.field private static mInstance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/samsung/android/support/sesl/core/os/SeslBuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Lcom/samsung/android/support/sesl/core/feature/SeslFloatingFeatureReflector$Api24FloatingFeatureReflectorImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/feature/SeslFloatingFeatureReflector$Api24FloatingFeatureReflectorImpl;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/feature/SeslFloatingFeatureReflector;->IMPL:Lcom/samsung/android/support/sesl/core/feature/SeslFloatingFeatureReflector$FloatingFeatureReflectorImpl;

    .line 68
    :goto_0
    sget-object v0, Lcom/samsung/android/support/sesl/core/feature/SeslFloatingFeatureReflector;->IMPL:Lcom/samsung/android/support/sesl/core/feature/SeslFloatingFeatureReflector$FloatingFeatureReflectorImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/core/feature/SeslFloatingFeatureReflector$FloatingFeatureReflectorImpl;->getInstance()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/sesl/core/feature/SeslFloatingFeatureReflector;->mInstance:Ljava/lang/Object;

    .line 69
    return-void

    .line 66
    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/core/feature/SeslFloatingFeatureReflector$BaseFloatingFeatureReflectorImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/feature/SeslFloatingFeatureReflector$BaseFloatingFeatureReflectorImpl;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/feature/SeslFloatingFeatureReflector;->IMPL:Lcom/samsung/android/support/sesl/core/feature/SeslFloatingFeatureReflector$FloatingFeatureReflectorImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/samsung/android/support/sesl/core/feature/SeslFloatingFeatureReflector;->mInstance:Ljava/lang/Object;

    return-object v0
.end method

.method public static getEnableStatus(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 78
    sget-object v0, Lcom/samsung/android/support/sesl/core/feature/SeslFloatingFeatureReflector;->IMPL:Lcom/samsung/android/support/sesl/core/feature/SeslFloatingFeatureReflector$FloatingFeatureReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/feature/SeslFloatingFeatureReflector$FloatingFeatureReflectorImpl;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
