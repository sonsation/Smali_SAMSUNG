.class Lcom/samsung/android/support/sesl/core/text/SeslTextUtilsReflector$BaseTextUtilsReflectorImpl;
.super Ljava/lang/Object;
.source "SeslTextUtilsReflector.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/text/SeslTextUtilsReflector$TextUtilsReflectorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/text/SeslTextUtilsReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseTextUtilsReflectorImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/core/text/SeslTextUtilsReflector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/core/text/SeslTextUtilsReflector$1;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/text/SeslTextUtilsReflector$BaseTextUtilsReflectorImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public semGetPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C
    .locals 10
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "prefix"    # [C

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 25
    invoke-static {}, Lcom/samsung/android/support/sesl/core/text/SeslTextUtilsReflector;->access$000()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getPrefixCharForIndian"

    new-array v4, v9, [Ljava/lang/Class;

    const-class v5, Landroid/text/TextPaint;

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/CharSequence;

    aput-object v5, v4, v7

    const-class v5, [C

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 27
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 28
    const/4 v2, 0x0

    new-array v3, v9, [Ljava/lang/Object;

    aput-object p1, v3, v6

    aput-object p2, v3, v7

    aput-object p3, v3, v8

    invoke-static {v2, v0, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 29
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, [C

    if-eqz v2, :cond_0

    .line 30
    check-cast v1, [C

    .end local v1    # "object":Ljava/lang/Object;
    check-cast v1, [C

    .line 33
    :goto_0
    return-object v1

    :cond_0
    new-array v1, v6, [C

    goto :goto_0
.end method
