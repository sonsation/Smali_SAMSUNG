.class public Lcom/samsung/android/support/sesl/core/content/res/SeslResourcesReflector;
.super Ljava/lang/Object;
.source "SeslResourcesReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/content/res/SeslResourcesReflector$BaseResourcesReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/content/res/SeslResourcesReflector$ResourcesReflectorImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/content/res/SeslResourcesReflector$ResourcesReflectorImpl;

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
    const-class v0, Landroid/content/res/Resources;

    sput-object v0, Lcom/samsung/android/support/sesl/core/content/res/SeslResourcesReflector;->mClass:Ljava/lang/Class;

    .line 35
    new-instance v0, Lcom/samsung/android/support/sesl/core/content/res/SeslResourcesReflector$BaseResourcesReflectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/content/res/SeslResourcesReflector$BaseResourcesReflectorImpl;-><init>(Lcom/samsung/android/support/sesl/core/content/res/SeslResourcesReflector$1;)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/content/res/SeslResourcesReflector;->IMPL:Lcom/samsung/android/support/sesl/core/content/res/SeslResourcesReflector$ResourcesReflectorImpl;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCompatibilityInfo(Landroid/content/res/Resources;)Ljava/lang/Object;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    sget-object v0, Lcom/samsung/android/support/sesl/core/content/res/SeslResourcesReflector;->IMPL:Lcom/samsung/android/support/sesl/core/content/res/SeslResourcesReflector$ResourcesReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/content/res/SeslResourcesReflector$ResourcesReflectorImpl;->getCompatibilityInfo(Landroid/content/res/Resources;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
