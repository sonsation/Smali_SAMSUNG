.class Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperGingerbread$DrawableWrapperStateBase;
.super Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperGingerbread$DrawableWrapperState;
.source "SeslDrawableWrapperGingerbread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperGingerbread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrawableWrapperStateBase"
.end annotation


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "orig"    # Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperGingerbread$DrawableWrapperState;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 375
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperGingerbread$DrawableWrapperState;-><init>(Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 376
    return-void
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 380
    new-instance v0, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperGingerbread;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperGingerbread;-><init>(Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V

    return-object v0
.end method
