.class public Lcom/samsung/android/support/sesl/core/graphics/SeslPaintReflector;
.super Ljava/lang/Object;
.source "SeslPaintReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/graphics/SeslPaintReflector$BasePaintReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/graphics/SeslPaintReflector$PaintReflectorImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/graphics/SeslPaintReflector$PaintReflectorImpl;

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
    .line 13
    const-class v0, Landroid/graphics/Paint;

    sput-object v0, Lcom/samsung/android/support/sesl/core/graphics/SeslPaintReflector;->mClass:Ljava/lang/Class;

    .line 38
    new-instance v0, Lcom/samsung/android/support/sesl/core/graphics/SeslPaintReflector$BasePaintReflectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/graphics/SeslPaintReflector$BasePaintReflectorImpl;-><init>(Lcom/samsung/android/support/sesl/core/graphics/SeslPaintReflector$1;)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/graphics/SeslPaintReflector;->IMPL:Lcom/samsung/android/support/sesl/core/graphics/SeslPaintReflector$PaintReflectorImpl;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/samsung/android/support/sesl/core/graphics/SeslPaintReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getHCTStrokeWidth(Landroid/graphics/Paint;)F
    .locals 1
    .param p0, "paint"    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    sget-object v0, Lcom/samsung/android/support/sesl/core/graphics/SeslPaintReflector;->IMPL:Lcom/samsung/android/support/sesl/core/graphics/SeslPaintReflector$PaintReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/graphics/SeslPaintReflector$PaintReflectorImpl;->getHCTStrokeWidth(Landroid/graphics/Paint;)F

    move-result v0

    return v0
.end method
