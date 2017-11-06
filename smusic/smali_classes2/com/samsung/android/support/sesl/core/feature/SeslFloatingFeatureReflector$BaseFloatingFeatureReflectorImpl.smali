.class Lcom/samsung/android/support/sesl/core/feature/SeslFloatingFeatureReflector$BaseFloatingFeatureReflectorImpl;
.super Ljava/lang/Object;
.source "SeslFloatingFeatureReflector.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/feature/SeslFloatingFeatureReflector$FloatingFeatureReflectorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/feature/SeslFloatingFeatureReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseFloatingFeatureReflectorImpl"
.end annotation


# static fields
.field protected static mClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "com.samsung.android.feature.FloatingFeature"

    sput-object v0, Lcom/samsung/android/support/sesl/core/feature/SeslFloatingFeatureReflector$BaseFloatingFeatureReflectorImpl;->mClassName:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getEnableStatus(Ljava/lang/String;)Z
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 39
    invoke-static {}, Lcom/samsung/android/support/sesl/core/feature/SeslFloatingFeatureReflector;->access$000()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 40
    sget-object v3, Lcom/samsung/android/support/sesl/core/feature/SeslFloatingFeatureReflector$BaseFloatingFeatureReflectorImpl;->mClassName:Ljava/lang/String;

    const-string v4, "getEnableStatus"

    new-array v5, v7, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 41
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 42
    invoke-static {}, Lcom/samsung/android/support/sesl/core/feature/SeslFloatingFeatureReflector;->access$000()Ljava/lang/Object;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v3, v0, v4}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 43
    .local v1, "object":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 44
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 48
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_0
    return v2
.end method

.method public getInstance()Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 29
    sget-object v3, Lcom/samsung/android/support/sesl/core/feature/SeslFloatingFeatureReflector$BaseFloatingFeatureReflectorImpl;->mClassName:Ljava/lang/String;

    const-string v4, "getInstance"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 30
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_1

    .line 31
    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    .local v0, "feature":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/support/sesl/core/feature/SeslFloatingFeatureReflector$BaseFloatingFeatureReflectorImpl;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    .end local v0    # "feature":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "feature":Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    .line 32
    goto :goto_0

    .end local v0    # "feature":Ljava/lang/Object;
    :cond_1
    move-object v0, v2

    .line 34
    goto :goto_0
.end method
