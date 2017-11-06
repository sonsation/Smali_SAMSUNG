.class public Lcom/samsung/android/support/sesl/component/widget/SeslFitWindowsFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SeslFitWindowsFrameLayout.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslFitWindowsViewGroup;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mListener:Lcom/samsung/android/support/sesl/component/widget/SeslFitWindowsViewGroup$OnFitSystemWindowsListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFitWindowsFrameLayout;->mListener:Lcom/samsung/android/support/sesl/component/widget/SeslFitWindowsViewGroup$OnFitSystemWindowsListener;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFitWindowsFrameLayout;->mListener:Lcom/samsung/android/support/sesl/component/widget/SeslFitWindowsViewGroup$OnFitSystemWindowsListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslFitWindowsViewGroup$OnFitSystemWindowsListener;->onFitSystemWindows(Landroid/graphics/Rect;)V

    .line 53
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public setOnFitSystemWindowsListener(Lcom/samsung/android/support/sesl/component/widget/SeslFitWindowsViewGroup$OnFitSystemWindowsListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslFitWindowsViewGroup$OnFitSystemWindowsListener;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFitWindowsFrameLayout;->mListener:Lcom/samsung/android/support/sesl/component/widget/SeslFitWindowsViewGroup$OnFitSystemWindowsListener;

    .line 46
    return-void
.end method
