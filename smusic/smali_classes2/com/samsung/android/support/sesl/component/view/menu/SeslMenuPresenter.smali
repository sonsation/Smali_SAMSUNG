.class public interface abstract Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;
.super Ljava/lang/Object;
.source "SeslMenuPresenter.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;
    }
.end annotation


# virtual methods
.method public abstract collapseItemActionView(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)Z
.end method

.method public abstract expandItemActionView(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)Z
.end method

.method public abstract flagActionItems()Z
.end method

.method public abstract getId()I
.end method

.method public abstract getMenuView(Landroid/view/ViewGroup;)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;
.end method

.method public abstract initForMenu(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V
.end method

.method public abstract onCloseMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Z)V
.end method

.method public abstract onRestoreInstanceState(Landroid/os/Parcelable;)V
.end method

.method public abstract onSaveInstanceState()Landroid/os/Parcelable;
.end method

.method public abstract onSubMenuSelected(Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;)Z
.end method

.method public abstract setCallback(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;)V
.end method

.method public abstract updateMenuView(Z)V
.end method
