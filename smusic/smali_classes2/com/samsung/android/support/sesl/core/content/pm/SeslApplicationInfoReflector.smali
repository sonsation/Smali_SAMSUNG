.class public Lcom/samsung/android/support/sesl/core/content/pm/SeslApplicationInfoReflector;
.super Ljava/lang/Object;
.source "SeslApplicationInfoReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/content/pm/SeslApplicationInfoReflector$BaseApplicationInfoReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/content/pm/SeslApplicationInfoReflector$ApplicationInfoReflectorImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/content/pm/SeslApplicationInfoReflector$ApplicationInfoReflectorImpl;

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
    .line 11
    const-class v0, Landroid/content/pm/ApplicationInfo;

    sput-object v0, Lcom/samsung/android/support/sesl/core/content/pm/SeslApplicationInfoReflector;->mClass:Ljava/lang/Class;

    .line 36
    new-instance v0, Lcom/samsung/android/support/sesl/core/content/pm/SeslApplicationInfoReflector$BaseApplicationInfoReflectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/content/pm/SeslApplicationInfoReflector$BaseApplicationInfoReflectorImpl;-><init>(Lcom/samsung/android/support/sesl/core/content/pm/SeslApplicationInfoReflector$1;)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/content/pm/SeslApplicationInfoReflector;->IMPL:Lcom/samsung/android/support/sesl/core/content/pm/SeslApplicationInfoReflector$ApplicationInfoReflectorImpl;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/samsung/android/support/sesl/core/content/pm/SeslApplicationInfoReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static hasRtlSupport(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p0, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    sget-object v0, Lcom/samsung/android/support/sesl/core/content/pm/SeslApplicationInfoReflector;->IMPL:Lcom/samsung/android/support/sesl/core/content/pm/SeslApplicationInfoReflector$ApplicationInfoReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/content/pm/SeslApplicationInfoReflector$ApplicationInfoReflectorImpl;->hasRtlSupport(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method
