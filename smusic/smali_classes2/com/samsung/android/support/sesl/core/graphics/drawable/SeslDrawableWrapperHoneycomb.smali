.class Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperHoneycomb;
.super Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperGingerbread;
.source "SeslDrawableWrapperHoneycomb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperHoneycomb$DrawableWrapperStateHoneycomb;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperGingerbread;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 28
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "state"    # Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperGingerbread$DrawableWrapperState;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperGingerbread;-><init>(Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 32
    return-void
.end method


# virtual methods
.method public jumpToCurrentState()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperHoneycomb;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 37
    return-void
.end method

.method mutateConstantState()Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperGingerbread$DrawableWrapperState;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperHoneycomb$DrawableWrapperStateHoneycomb;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperHoneycomb;->mState:Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperGingerbread$DrawableWrapperState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperHoneycomb$DrawableWrapperStateHoneycomb;-><init>(Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V

    return-object v0
.end method
