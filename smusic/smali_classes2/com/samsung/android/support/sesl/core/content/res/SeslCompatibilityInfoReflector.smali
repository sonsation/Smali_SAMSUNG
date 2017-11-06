.class public Lcom/samsung/android/support/sesl/core/content/res/SeslCompatibilityInfoReflector;
.super Ljava/lang/Object;
.source "SeslCompatibilityInfoReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/content/res/SeslCompatibilityInfoReflector$BaseCompatibilityInfoReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/content/res/SeslCompatibilityInfoReflector$CompatibilityInfoReflectorImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/content/res/SeslCompatibilityInfoReflector$CompatibilityInfoReflectorImpl;

.field private static final mClassName:Ljava/lang/String; = "android.content.res.CompatibilityInfo"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/samsung/android/support/sesl/core/content/res/SeslCompatibilityInfoReflector$BaseCompatibilityInfoReflectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/content/res/SeslCompatibilityInfoReflector$BaseCompatibilityInfoReflectorImpl;-><init>(Lcom/samsung/android/support/sesl/core/content/res/SeslCompatibilityInfoReflector$1;)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/content/res/SeslCompatibilityInfoReflector;->IMPL:Lcom/samsung/android/support/sesl/core/content/res/SeslCompatibilityInfoReflector$CompatibilityInfoReflectorImpl;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getField_applicationScale(Landroid/content/res/Resources;)F
    .locals 1
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 50
    sget-object v0, Lcom/samsung/android/support/sesl/core/content/res/SeslCompatibilityInfoReflector;->IMPL:Lcom/samsung/android/support/sesl/core/content/res/SeslCompatibilityInfoReflector$CompatibilityInfoReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/content/res/SeslCompatibilityInfoReflector$CompatibilityInfoReflectorImpl;->getField_applicationScale(Landroid/content/res/Resources;)F

    move-result v0

    return v0
.end method
