.class Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector$BaseCscFeatureReflectorImpl;
.super Ljava/lang/Object;
.source "SeslCscFeatureReflector.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector$CscFeatureReflectorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseCscFeatureReflectorImpl"
.end annotation


# static fields
.field protected static mClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "com.sec.android.app.CscFeature"

    sput-object v0, Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector$BaseCscFeatureReflectorImpl;->mClassName:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getInstance()Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 35
    sget-object v3, Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector$BaseCscFeatureReflectorImpl;->mClassName:Ljava/lang/String;

    const-string v4, "getInstance"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 36
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_1

    .line 37
    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    .local v0, "feature":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector$BaseCscFeatureReflectorImpl;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    .end local v0    # "feature":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "feature":Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    .line 38
    goto :goto_0

    .end local v0    # "feature":Ljava/lang/Object;
    :cond_1
    move-object v0, v2

    .line 40
    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 45
    invoke-static {}, Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector;->access$000()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 46
    sget-object v2, Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector$BaseCscFeatureReflectorImpl;->mClassName:Ljava/lang/String;

    const-string v3, "getString"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 47
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector$BaseCscFeatureReflectorImpl;->getInstance()Ljava/lang/Object;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p1, v3, v6

    aput-object p2, v3, v7

    invoke-static {v2, v0, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 49
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 50
    check-cast v1, Ljava/lang/String;

    .line 54
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .end local v1    # "object":Ljava/lang/Object;
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method
