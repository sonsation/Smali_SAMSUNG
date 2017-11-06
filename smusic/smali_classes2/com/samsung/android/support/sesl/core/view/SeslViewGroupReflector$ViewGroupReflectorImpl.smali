.class interface abstract Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector$ViewGroupReflectorImpl;
.super Ljava/lang/Object;
.source "SeslViewGroupReflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ViewGroupReflectorImpl"
.end annotation


# virtual methods
.method public abstract getField_FLAG_DISALLOW_INTERCEPT()I
.end method

.method public abstract getField_mChildren(Landroid/view/ViewGroup;)[Landroid/view/View;
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getField_mChildrenCount(Landroid/view/ViewGroup;)I
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getField_mGroupFlags(Landroid/view/ViewGroup;)I
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract resolvePadding(Landroid/view/ViewGroup;)V
.end method

.method public abstract semOffsetChildrenLeftAndRight(Landroid/view/ViewGroup;I)V
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract semOffsetChildrenTopAndBottom(Landroid/view/ViewGroup;I)V
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setField_mGroupFlags(Landroid/view/ViewGroup;I)V
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract transformPointToViewLocal(Landroid/view/ViewGroup;[FLandroid/view/View;)V
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
