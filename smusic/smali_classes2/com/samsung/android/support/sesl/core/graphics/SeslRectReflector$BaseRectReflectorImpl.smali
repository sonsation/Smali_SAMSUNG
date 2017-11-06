.class Lcom/samsung/android/support/sesl/core/graphics/SeslRectReflector$BaseRectReflectorImpl;
.super Ljava/lang/Object;
.source "SeslRectReflector.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/graphics/SeslRectReflector$RectReflectorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/graphics/SeslRectReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseRectReflectorImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/core/graphics/SeslRectReflector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/core/graphics/SeslRectReflector$1;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/graphics/SeslRectReflector$BaseRectReflectorImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public scale(Landroid/graphics/Rect;F)V
    .locals 7
    .param p1, "rect"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "scale"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 25
    invoke-static {}, Lcom/samsung/android/support/sesl/core/graphics/SeslRectReflector;->access$000()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "scale"

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 26
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 27
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_0
    return-void
.end method
