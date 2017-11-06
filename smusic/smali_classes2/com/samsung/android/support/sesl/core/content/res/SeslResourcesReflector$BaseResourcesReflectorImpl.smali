.class Lcom/samsung/android/support/sesl/core/content/res/SeslResourcesReflector$BaseResourcesReflectorImpl;
.super Ljava/lang/Object;
.source "SeslResourcesReflector.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/content/res/SeslResourcesReflector$ResourcesReflectorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/content/res/SeslResourcesReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseResourcesReflectorImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/core/content/res/SeslResourcesReflector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/core/content/res/SeslResourcesReflector$1;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/content/res/SeslResourcesReflector$BaseResourcesReflectorImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getCompatibilityInfo(Landroid/content/res/Resources;)Ljava/lang/Object;
    .locals 7
    .param p1, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 24
    const-class v3, Landroid/content/res/Resources;

    const-string v4, "getCompatibilityInfo"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 25
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_1

    .line 26
    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1, v1, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    .local v0, "info":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.content.res.CompatibilityInfo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 29
    .end local v0    # "info":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "info":Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    .line 27
    goto :goto_0

    .end local v0    # "info":Ljava/lang/Object;
    :cond_1
    move-object v0, v2

    .line 29
    goto :goto_0
.end method
