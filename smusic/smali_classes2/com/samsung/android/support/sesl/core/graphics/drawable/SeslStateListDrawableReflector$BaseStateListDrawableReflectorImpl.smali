.class Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslStateListDrawableReflector$BaseStateListDrawableReflectorImpl;
.super Ljava/lang/Object;
.source "SeslStateListDrawableReflector.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslStateListDrawableReflector$StateListDrawableReflectorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslStateListDrawableReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseStateListDrawableReflectorImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslStateListDrawableReflector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslStateListDrawableReflector$1;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslStateListDrawableReflector$BaseStateListDrawableReflectorImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getStateCount(Landroid/graphics/drawable/StateListDrawable;)I
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/StateListDrawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-static {}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslStateListDrawableReflector;->access$000()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getStateCount"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 28
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 29
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 30
    .local v1, "object":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 31
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "object":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 34
    :cond_0
    return v2
.end method

.method public getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/StateListDrawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "index"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 39
    invoke-static {}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslStateListDrawableReflector;->access$000()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getStateDrawable"

    new-array v4, v7, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 40
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 41
    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p1, v0, v2}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 42
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 43
    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 46
    .end local v1    # "object":Ljava/lang/Object;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/StateListDrawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "index"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 51
    invoke-static {}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslStateListDrawableReflector;->access$000()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getStateSet"

    new-array v4, v7, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 52
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 53
    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p1, v0, v2}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 54
    .local v1, "object":Ljava/lang/Object;
    instance-of v2, v1, [I

    if-eqz v2, :cond_0

    .line 55
    check-cast v1, [I

    .end local v1    # "object":Ljava/lang/Object;
    check-cast v1, [I

    .line 58
    :goto_0
    return-object v1

    :cond_0
    new-array v1, v6, [I

    goto :goto_0
.end method
