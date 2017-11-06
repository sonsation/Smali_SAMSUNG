.class Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperKitKat;
.super Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperHoneycomb;
.source "SeslDrawableWrapperKitKat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperKitKat$DrawableWrapperStateKitKat;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperHoneycomb;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 28
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "state"    # Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperGingerbread$DrawableWrapperState;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperHoneycomb;-><init>(Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 32
    return-void
.end method


# virtual methods
.method public isAutoMirrored()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperKitKat;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    return v0
.end method

.method mutateConstantState()Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperGingerbread$DrawableWrapperState;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperKitKat$DrawableWrapperStateKitKat;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperKitKat;->mState:Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperGingerbread$DrawableWrapperState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperKitKat$DrawableWrapperStateKitKat;-><init>(Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public setAutoMirrored(Z)V
    .locals 1
    .param p1, "mirrored"    # Z

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperKitKat;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 37
    return-void
.end method
