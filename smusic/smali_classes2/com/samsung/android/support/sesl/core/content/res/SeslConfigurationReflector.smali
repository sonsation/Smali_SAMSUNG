.class public Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector;
.super Ljava/lang/Object;
.source "SeslConfigurationReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector$Api24ConfigurationReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector$BaseConfigurationReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector$ConfigurationReflectorImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector$ConfigurationReflectorImpl;

.field private static final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    const-class v0, Landroid/content/res/Configuration;

    sput-object v0, Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector;->mClass:Ljava/lang/Class;

    .line 81
    invoke-static {}, Lcom/samsung/android/support/sesl/core/os/SeslBuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector$Api24ConfigurationReflectorImpl;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector$Api24ConfigurationReflectorImpl;-><init>(Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector$1;)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector;->IMPL:Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector$ConfigurationReflectorImpl;

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector$BaseConfigurationReflectorImpl;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector$BaseConfigurationReflectorImpl;-><init>(Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector$1;)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector;->IMPL:Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector$ConfigurationReflectorImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getField_SEM_MOBILE_KEYBOARD_COVERED_YES(Landroid/content/res/Configuration;)I
    .locals 1
    .param p0, "configuration"    # Landroid/content/res/Configuration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 109
    sget-object v0, Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector;->IMPL:Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector$ConfigurationReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector$ConfigurationReflectorImpl;->getField_SEM_MOBILE_KEYBOARD_COVERED_YES(Landroid/content/res/Configuration;)I

    move-result v0

    return v0
.end method

.method public static getField_semMobileKeyboardCovered(Landroid/content/res/Configuration;)I
    .locals 1
    .param p0, "configuration"    # Landroid/content/res/Configuration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 100
    sget-object v0, Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector;->IMPL:Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector$ConfigurationReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector$ConfigurationReflectorImpl;->getField_semMobileKeyboardCovered(Landroid/content/res/Configuration;)I

    move-result v0

    return v0
.end method
