.class public Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;
.super Lcom/samsung/android/support/sesl/component/view/SeslActionMode;
.source "SeslWindowDecorActionBar.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionModeImpl"
.end annotation


# instance fields
.field private final mActionModeContext:Landroid/content/Context;

.field private mCallback:Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;

.field private mCustomView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;Landroid/content/Context;Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;

    .prologue
    .line 744
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode;-><init>()V

    .line 745
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->mActionModeContext:Landroid/content/Context;

    .line 746
    iput-object p3, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->mCallback:Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;

    .line 747
    new-instance v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-direct {v0, p2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 748
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->setDefaultShowAsAction(I)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .line 749
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->setCallback(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;)V

    .line 750
    return-void
.end method


# virtual methods
.method public dispatchOnCreate()Z
    .locals 2

    .prologue
    .line 811
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->stopDispatchingItemsChanged()V

    .line 813
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->mCallback:Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;->onCreateActionMode(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 815
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->startDispatchingItemsChanged()V

    .line 813
    return v0

    .line 815
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public finish()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 764
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mActionMode:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;

    if-eq v0, p0, :cond_0

    .line 791
    :goto_0
    return-void

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mHiddenByApp:Z

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    iget-boolean v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mHiddenBySystem:Z

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 776
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    iput-object p0, v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDeferredDestroyActionMode:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    .line 777
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->mCallback:Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;

    iput-object v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDeferredModeDestroyCallback:Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;

    .line 781
    :goto_1
    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->mCallback:Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;

    .line 782
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->animateToMode(Z)V

    .line 785
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContextView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->closeMode()V

    .line 786
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 788
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mOverlayLayout:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    iget-boolean v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mHideOnContentScroll:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 790
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    iput-object v3, v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mActionMode:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;

    goto :goto_0

    .line 779
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->mCallback:Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;->onDestroyActionMode(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;)V

    goto :goto_1
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 754
    new-instance v0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->mActionModeContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContextView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContextView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 795
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mActionMode:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;

    if-eq v0, p0, :cond_0

    .line 808
    :goto_0
    return-void

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->stopDispatchingItemsChanged()V

    .line 804
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->mCallback:Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;->onPrepareActionMode(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContextView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public onCloseMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 880
    return-void
.end method

.method public onCloseSubMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;

    .prologue
    .line 896
    return-void
.end method

.method public onMenuItemSelected(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 872
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->mCallback:Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->mCallback:Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;

    invoke-interface {v0, p0, p2}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;->onActionItemClicked(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    .line 875
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .prologue
    .line 899
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->mCallback:Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;

    if-nez v0, :cond_0

    .line 904
    :goto_0
    return-void

    .line 902
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->invalidate()V

    .line 903
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContextView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->showOverflowMenu()Z

    goto :goto_0
.end method

.method public onSubMenuSelected(Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;)Z
    .locals 3
    .param p1, "subMenu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;

    .prologue
    const/4 v0, 0x1

    .line 883
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->mCallback:Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;

    if-nez v1, :cond_1

    .line 884
    const/4 v0, 0x0

    .line 892
    :cond_0
    :goto_0
    return v0

    .line 887
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 891
    new-instance v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->show()V

    goto :goto_0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 821
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContextView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 822
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    .line 823
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 842
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 843
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 827
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContextView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 828
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 837
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 838
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 832
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContextView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 833
    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1
    .param p1, "titleOptional"    # Z

    .prologue
    .line 857
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode;->setTitleOptionalHint(Z)V

    .line 858
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar$ActionModeImpl;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslWindowDecorActionBar;->mContextView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->setTitleOptional(Z)V

    .line 859
    return-void
.end method
