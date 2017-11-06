.class public Lcom/samsung/android/support/sesl/core/content/pm/SeslPackageManagerReflector;
.super Ljava/lang/Object;
.source "SeslPackageManagerReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/content/pm/SeslPackageManagerReflector$BasePackageManagerReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/content/pm/SeslPackageManagerReflector$PackageManagerReflectorImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/content/pm/SeslPackageManagerReflector$PackageManagerReflectorImpl;

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
    .line 12
    const-class v0, Landroid/content/pm/PackageManager;

    sput-object v0, Lcom/samsung/android/support/sesl/core/content/pm/SeslPackageManagerReflector;->mClass:Ljava/lang/Class;

    .line 37
    new-instance v0, Lcom/samsung/android/support/sesl/core/content/pm/SeslPackageManagerReflector$BasePackageManagerReflectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/content/pm/SeslPackageManagerReflector$BasePackageManagerReflectorImpl;-><init>(Lcom/samsung/android/support/sesl/core/content/pm/SeslPackageManagerReflector$1;)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/content/pm/SeslPackageManagerReflector;->IMPL:Lcom/samsung/android/support/sesl/core/content/pm/SeslPackageManagerReflector$PackageManagerReflectorImpl;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/samsung/android/support/sesl/core/content/pm/SeslPackageManagerReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getSystemFeatureLevel(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 1
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    sget-object v0, Lcom/samsung/android/support/sesl/core/content/pm/SeslPackageManagerReflector;->IMPL:Lcom/samsung/android/support/sesl/core/content/pm/SeslPackageManagerReflector$PackageManagerReflectorImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/content/pm/SeslPackageManagerReflector$PackageManagerReflectorImpl;->getSystemFeatureLevel(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
