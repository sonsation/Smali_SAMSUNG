.class Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat$BaseDrawableImpl;
.super Ljava/lang/Object;
.source "SeslDrawableCompat.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat$DrawableImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseDrawableImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "layoutDirection"    # I

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 45
    instance-of v0, p1, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslTintAwareDrawable;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperLollipop;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperLollipop;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object p1, v0

    .line 48
    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object p1
.end method
