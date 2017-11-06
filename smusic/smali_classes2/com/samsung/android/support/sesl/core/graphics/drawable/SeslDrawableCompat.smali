.class public final Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat;
.super Ljava/lang/Object;
.source "SeslDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat$MDrawableImpl;,
        Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat$BaseDrawableImpl;,
        Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat$DrawableImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat$DrawableImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 90
    .local v0, "version":I
    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 91
    new-instance v1, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat$MDrawableImpl;

    invoke-direct {v1}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat$MDrawableImpl;-><init>()V

    sput-object v1, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat;->IMPL:Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat$DrawableImpl;

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v1, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat$BaseDrawableImpl;

    invoke-direct {v1}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat$BaseDrawableImpl;-><init>()V

    sput-object v1, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat;->IMPL:Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat$DrawableImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 174
    sget-object v0, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat;->IMPL:Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat$DrawableImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat$DrawableImpl;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0
.end method

.method public static setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "layoutDirection"    # I

    .prologue
    .line 163
    sget-object v0, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat;->IMPL:Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat$DrawableImpl;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat$DrawableImpl;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result v0

    return v0
.end method

.method public static unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/drawable/Drawable;",
            ">(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 143
    instance-of v0, p0, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapper;

    if-eqz v0, :cond_0

    .line 144
    check-cast p0, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapper;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-interface {p0}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapper;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 146
    :cond_0
    return-object p0
.end method

.method public static wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 129
    sget-object v0, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat;->IMPL:Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat$DrawableImpl;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat$DrawableImpl;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
