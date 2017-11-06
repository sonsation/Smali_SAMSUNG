.class public Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslStateListDrawableReflector;
.super Ljava/lang/Object;
.source "SeslStateListDrawableReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslStateListDrawableReflector$BaseStateListDrawableReflectorImpl;,
        Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslStateListDrawableReflector$StateListDrawableReflectorImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslStateListDrawableReflector$StateListDrawableReflectorImpl;

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
    const-class v0, Landroid/graphics/drawable/StateListDrawable;

    sput-object v0, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslStateListDrawableReflector;->mClass:Ljava/lang/Class;

    .line 64
    new-instance v0, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslStateListDrawableReflector$BaseStateListDrawableReflectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslStateListDrawableReflector$BaseStateListDrawableReflectorImpl;-><init>(Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslStateListDrawableReflector$1;)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslStateListDrawableReflector;->IMPL:Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslStateListDrawableReflector$StateListDrawableReflectorImpl;

    .line 65
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
    sget-object v0, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslStateListDrawableReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getStateCount(Landroid/graphics/drawable/StateListDrawable;)I
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/StateListDrawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 74
    sget-object v0, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslStateListDrawableReflector;->IMPL:Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslStateListDrawableReflector$StateListDrawableReflectorImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslStateListDrawableReflector$StateListDrawableReflectorImpl;->getStateCount(Landroid/graphics/drawable/StateListDrawable;)I

    move-result v0

    return v0
.end method

.method public static getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/StateListDrawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "index"    # I

    .prologue
    .line 85
    sget-object v0, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslStateListDrawableReflector;->IMPL:Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslStateListDrawableReflector$StateListDrawableReflectorImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslStateListDrawableReflector$StateListDrawableReflectorImpl;->getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/StateListDrawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "index"    # I

    .prologue
    .line 96
    sget-object v0, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslStateListDrawableReflector;->IMPL:Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslStateListDrawableReflector$StateListDrawableReflectorImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslStateListDrawableReflector$StateListDrawableReflectorImpl;->getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I

    move-result-object v0

    return-object v0
.end method
