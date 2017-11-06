.class public Lcom/samsung/android/support/sesl/core/graphics/SeslRectReflector;
.super Ljava/lang/Object;
.source "SeslRectReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/graphics/SeslRectReflector$BaseRectReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/graphics/SeslRectReflector$RectReflectorImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/graphics/SeslRectReflector$RectReflectorImpl;

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
    const-class v0, Landroid/graphics/Rect;

    sput-object v0, Lcom/samsung/android/support/sesl/core/graphics/SeslRectReflector;->mClass:Ljava/lang/Class;

    .line 34
    new-instance v0, Lcom/samsung/android/support/sesl/core/graphics/SeslRectReflector$BaseRectReflectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/graphics/SeslRectReflector$BaseRectReflectorImpl;-><init>(Lcom/samsung/android/support/sesl/core/graphics/SeslRectReflector$1;)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/graphics/SeslRectReflector;->IMPL:Lcom/samsung/android/support/sesl/core/graphics/SeslRectReflector$RectReflectorImpl;

    .line 35
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
    sget-object v0, Lcom/samsung/android/support/sesl/core/graphics/SeslRectReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static scale(Landroid/graphics/Rect;F)V
    .locals 1
    .param p0, "rect"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "scale"    # F

    .prologue
    .line 44
    sget-object v0, Lcom/samsung/android/support/sesl/core/graphics/SeslRectReflector;->IMPL:Lcom/samsung/android/support/sesl/core/graphics/SeslRectReflector$RectReflectorImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/graphics/SeslRectReflector$RectReflectorImpl;->scale(Landroid/graphics/Rect;F)V

    .line 45
    return-void
.end method
