.class Lcom/samsung/android/support/sesl/core/feature/SeslFloatingFeatureReflector$Api24FloatingFeatureReflectorImpl;
.super Lcom/samsung/android/support/sesl/core/feature/SeslFloatingFeatureReflector$BaseFloatingFeatureReflectorImpl;
.source "SeslFloatingFeatureReflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/feature/SeslFloatingFeatureReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api24FloatingFeatureReflectorImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/feature/SeslFloatingFeatureReflector$BaseFloatingFeatureReflectorImpl;-><init>()V

    .line 57
    const-string v0, "com.samsung.android.feature.SemFloatingFeature"

    sput-object v0, Lcom/samsung/android/support/sesl/core/feature/SeslFloatingFeatureReflector$Api24FloatingFeatureReflectorImpl;->mClassName:Ljava/lang/String;

    .line 58
    return-void
.end method
