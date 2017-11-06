.class interface abstract Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslStateListDrawableReflector$StateListDrawableReflectorImpl;
.super Ljava/lang/Object;
.source "SeslStateListDrawableReflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslStateListDrawableReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "StateListDrawableReflectorImpl"
.end annotation


# virtual methods
.method public abstract getStateCount(Landroid/graphics/drawable/StateListDrawable;)I
    .param p1    # Landroid/graphics/drawable/StateListDrawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;
    .param p1    # Landroid/graphics/drawable/StateListDrawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I
    .param p1    # Landroid/graphics/drawable/StateListDrawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
