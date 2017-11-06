.class Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat$MDrawableImpl;
.super Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat$BaseDrawableImpl;
.source "SeslDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MDrawableImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat$BaseDrawableImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 74
    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompatApi23;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0
.end method

.method public setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "layoutDirection"    # I

    .prologue
    .line 69
    invoke-static {p1, p2}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompatApi23;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    move-result v0

    return v0
.end method

.method public wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 80
    return-object p1
.end method
