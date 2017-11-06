.class Lcom/samsung/android/support/sesl/core/content/pm/SeslPackageManagerReflector$BasePackageManagerReflectorImpl;
.super Ljava/lang/Object;
.source "SeslPackageManagerReflector.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/content/pm/SeslPackageManagerReflector$PackageManagerReflectorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/content/pm/SeslPackageManagerReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BasePackageManagerReflectorImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/core/content/pm/SeslPackageManagerReflector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/core/content/pm/SeslPackageManagerReflector$1;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/content/pm/SeslPackageManagerReflector$BasePackageManagerReflectorImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getSystemFeatureLevel(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 8
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 24
    invoke-static {}, Lcom/samsung/android/support/sesl/core/content/pm/SeslPackageManagerReflector;->access$000()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getSystemFeatureLevel"

    new-array v5, v7, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 25
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 26
    new-array v3, v7, [Ljava/lang/Object;

    aput-object p2, v3, v2

    invoke-static {p1, v0, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 27
    .local v1, "object":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 28
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 31
    :cond_0
    return v2
.end method
