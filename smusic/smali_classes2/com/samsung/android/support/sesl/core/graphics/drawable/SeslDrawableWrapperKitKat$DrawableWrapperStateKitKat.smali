.class Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperKitKat$DrawableWrapperStateKitKat;
.super Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperGingerbread$DrawableWrapperState;
.source "SeslDrawableWrapperKitKat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperKitKat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrawableWrapperStateKitKat"
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
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperGingerbread$DrawableWrapperState;-><init>(Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 54
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
    .line 58
    new-instance v0, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperKitKat;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperKitKat;-><init>(Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V

    return-object v0
.end method
