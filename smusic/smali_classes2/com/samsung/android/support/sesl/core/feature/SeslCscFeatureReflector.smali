.class public Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector;
.super Ljava/lang/Object;
.source "SeslCscFeatureReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector$Api24CscFeatureReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector$BaseCscFeatureReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector$CscFeatureReflectorImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector$CscFeatureReflectorImpl;

.field private static mInstance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/samsung/android/support/sesl/core/os/SeslBuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector$Api24CscFeatureReflectorImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector$Api24CscFeatureReflectorImpl;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector;->IMPL:Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector$CscFeatureReflectorImpl;

    .line 74
    :goto_0
    sget-object v0, Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector;->IMPL:Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector$CscFeatureReflectorImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector$CscFeatureReflectorImpl;->getInstance()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector;->mInstance:Ljava/lang/Object;

    .line 75
    return-void

    .line 72
    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector$BaseCscFeatureReflectorImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector$BaseCscFeatureReflectorImpl;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector;->IMPL:Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector$CscFeatureReflectorImpl;

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
    sget-object v0, Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector;->mInstance:Ljava/lang/Object;

    return-object v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 85
    sget-object v0, Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector;->IMPL:Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector$CscFeatureReflectorImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector$CscFeatureReflectorImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
