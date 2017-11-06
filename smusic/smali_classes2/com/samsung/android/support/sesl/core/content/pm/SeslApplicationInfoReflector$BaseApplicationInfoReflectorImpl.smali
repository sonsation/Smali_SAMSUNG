.class Lcom/samsung/android/support/sesl/core/content/pm/SeslApplicationInfoReflector$BaseApplicationInfoReflectorImpl;
.super Ljava/lang/Object;
.source "SeslApplicationInfoReflector.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/content/pm/SeslApplicationInfoReflector$ApplicationInfoReflectorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/content/pm/SeslApplicationInfoReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseApplicationInfoReflectorImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/core/content/pm/SeslApplicationInfoReflector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/core/content/pm/SeslApplicationInfoReflector$1;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/content/pm/SeslApplicationInfoReflector$BaseApplicationInfoReflectorImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public hasRtlSupport(Landroid/content/pm/ApplicationInfo;)Z
    .locals 6
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-static {}, Lcom/samsung/android/support/sesl/core/content/pm/SeslApplicationInfoReflector;->access$000()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "hasRtlSupport"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 24
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 25
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 26
    .local v1, "object":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 27
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 30
    :cond_0
    return v2
.end method
