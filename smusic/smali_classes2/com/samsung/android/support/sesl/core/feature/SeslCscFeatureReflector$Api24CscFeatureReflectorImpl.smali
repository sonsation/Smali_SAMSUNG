.class Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector$Api24CscFeatureReflectorImpl;
.super Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector$BaseCscFeatureReflectorImpl;
.source "SeslCscFeatureReflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api24CscFeatureReflectorImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector$BaseCscFeatureReflectorImpl;-><init>()V

    .line 63
    const-string v0, "com.samsung.android.feature.SemCscFeature"

    sput-object v0, Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector$Api24CscFeatureReflectorImpl;->mClassName:Ljava/lang/String;

    .line 64
    return-void
.end method
