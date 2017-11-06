.class public interface abstract Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;
.super Ljava/lang/Object;
.source "SeslDecorToolbar.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# virtual methods
.method public abstract animateToVisibility(I)V
.end method

.method public abstract canShowOverflowMenu()Z
.end method

.method public abstract collapseActionView()V
.end method

.method public abstract dismissPopupMenus()V
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getCustomView()Landroid/view/View;
.end method

.method public abstract getDisplayOptions()I
.end method

.method public abstract getHeight()I
.end method

.method public abstract getMenu()Landroid/view/Menu;
.end method

.method public abstract getSubtitle()Ljava/lang/CharSequence;
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public abstract getViewGroup()Landroid/view/ViewGroup;
.end method

.method public abstract getVisibility()I
.end method

.method public abstract hasExpandedActionView()Z
.end method

.method public abstract hasIcon()Z
.end method

.method public abstract hasLogo()Z
.end method

.method public abstract hideOverflowMenu()Z
.end method

.method public abstract initIndeterminateProgress()V
.end method

.method public abstract initProgress()V
.end method

.method public abstract isOverflowMenuShowPending()Z
.end method

.method public abstract isOverflowMenuShowing()Z
.end method

.method public abstract isTitleTruncated()Z
.end method

.method public abstract restoreHierarchyState(Landroid/util/SparseArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract saveHierarchyState(Landroid/util/SparseArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setCollapsible(Z)V
.end method

.method public abstract setCustomView(Landroid/view/View;)V
.end method

.method public abstract setDefaultNavigationContentDescription(I)V
.end method

.method public abstract setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setDisplayOptions(I)V
.end method

.method public abstract setHomeButtonEnabled(Z)V
.end method

.method public abstract setIcon(I)V
.end method

.method public abstract setIcon(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setLogo(I)V
.end method

.method public abstract setLogo(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setMenu(Landroid/view/Menu;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;)V
.end method

.method public abstract setMenuCallbacks(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;)V
.end method

.method public abstract setMenuPrepared()V
.end method

.method public abstract setNavigationContentDescription(I)V
.end method

.method public abstract setNavigationContentDescription(Ljava/lang/CharSequence;)V
.end method

.method public abstract setNavigationIcon(I)V
.end method

.method public abstract setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setSubtitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract setVisibility(I)V
.end method

.method public abstract setWindowCallback(Landroid/view/Window$Callback;)V
.end method

.method public abstract setWindowTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract setupAnimatorToVisibility(IJ)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
.end method

.method public abstract showOverflowMenu()Z
.end method
