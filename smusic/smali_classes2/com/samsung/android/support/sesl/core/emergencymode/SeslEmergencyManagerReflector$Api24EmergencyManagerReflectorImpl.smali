.class Lcom/samsung/android/support/sesl/core/emergencymode/SeslEmergencyManagerReflector$Api24EmergencyManagerReflectorImpl;
.super Lcom/samsung/android/support/sesl/core/emergencymode/SeslEmergencyManagerReflector$BaseEmergencyManagerReflectorImpl;
.source "SeslEmergencyManagerReflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/emergencymode/SeslEmergencyManagerReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api24EmergencyManagerReflectorImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/emergencymode/SeslEmergencyManagerReflector$BaseEmergencyManagerReflectorImpl;-><init>()V

    .line 45
    const-string v0, "com.samsung.android.emergencymode.SemEmergencyManager"

    sput-object v0, Lcom/samsung/android/support/sesl/core/emergencymode/SeslEmergencyManagerReflector$Api24EmergencyManagerReflectorImpl;->mClassName:Ljava/lang/String;

    .line 46
    return-void
.end method
