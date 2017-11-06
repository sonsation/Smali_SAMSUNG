.class public Lcom/samsung/android/support/sesl/core/emergencymode/SeslEmergencyManagerReflector;
.super Ljava/lang/Object;
.source "SeslEmergencyManagerReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/emergencymode/SeslEmergencyManagerReflector$Api24EmergencyManagerReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/emergencymode/SeslEmergencyManagerReflector$BaseEmergencyManagerReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/emergencymode/SeslEmergencyManagerReflector$EmergencyManagerReflectorImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/emergencymode/SeslEmergencyManagerReflector$EmergencyManagerReflectorImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/samsung/android/support/sesl/core/os/SeslBuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Lcom/samsung/android/support/sesl/core/emergencymode/SeslEmergencyManagerReflector$Api24EmergencyManagerReflectorImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/emergencymode/SeslEmergencyManagerReflector$Api24EmergencyManagerReflectorImpl;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/emergencymode/SeslEmergencyManagerReflector;->IMPL:Lcom/samsung/android/support/sesl/core/emergencymode/SeslEmergencyManagerReflector$EmergencyManagerReflectorImpl;

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/core/emergencymode/SeslEmergencyManagerReflector$BaseEmergencyManagerReflectorImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/emergencymode/SeslEmergencyManagerReflector$BaseEmergencyManagerReflectorImpl;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/emergencymode/SeslEmergencyManagerReflector;->IMPL:Lcom/samsung/android/support/sesl/core/emergencymode/SeslEmergencyManagerReflector$EmergencyManagerReflectorImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEmergencyMode(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 65
    sget-object v0, Lcom/samsung/android/support/sesl/core/emergencymode/SeslEmergencyManagerReflector;->IMPL:Lcom/samsung/android/support/sesl/core/emergencymode/SeslEmergencyManagerReflector$EmergencyManagerReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/emergencymode/SeslEmergencyManagerReflector$EmergencyManagerReflectorImpl;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
