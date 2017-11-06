.class Lcom/samsung/android/support/sesl/core/graphics/SeslPaintReflector$BasePaintReflectorImpl;
.super Ljava/lang/Object;
.source "SeslPaintReflector.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/graphics/SeslPaintReflector$PaintReflectorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/graphics/SeslPaintReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BasePaintReflectorImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/core/graphics/SeslPaintReflector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/core/graphics/SeslPaintReflector$1;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/graphics/SeslPaintReflector$BasePaintReflectorImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getHCTStrokeWidth(Landroid/graphics/Paint;)F
    .locals 6
    .param p1, "paint"    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 25
    invoke-static {}, Lcom/samsung/android/support/sesl/core/graphics/SeslPaintReflector;->access$000()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getHCTStrokeWidth"

    new-array v4, v5, [Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 26
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 27
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/samsung/android/support/sesl/core/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 28
    .local v1, "width":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_0

    .line 29
    check-cast v1, Ljava/lang/Float;

    .end local v1    # "width":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 32
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
