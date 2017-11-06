.class public final Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;
.super Ljava/lang/Object;
.source "SeslCompatDelegateImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "PanelFeatureState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState$SavedState;
    }
.end annotation


# instance fields
.field background:I

.field createdPanelView:Landroid/view/View;

.field decorView:Landroid/view/ViewGroup;

.field featureId:I

.field frozenActionViewState:Landroid/os/Bundle;

.field frozenMenuState:Landroid/os/Bundle;

.field gravity:I

.field isHandled:Z

.field isOpen:Z

.field isPrepared:Z

.field listMenuPresenter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

.field listPresenterContext:Landroid/content/Context;

.field menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

.field public qwertyMode:Z

.field refreshDecorView:Z

.field refreshMenuContent:Z

.field shownPanelView:Landroid/view/View;

.field wasLastOpen:Z

.field windowAnimations:I

.field x:I

.field y:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 2535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2536
    iput p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->featureId:I

    .line 2538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->refreshDecorView:Z

    .line 2539
    return-void
.end method


# virtual methods
.method applyFrozenState()V
    .locals 2

    .prologue
    .line 2641
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 2642
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->restorePresenterStates(Landroid/os/Bundle;)V

    .line 2643
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    .line 2645
    :cond_0
    return-void
.end method

.method public clearMenuPresenters()V
    .locals 2

    .prologue
    .line 2552
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-eqz v0, :cond_0

    .line 2553
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->listMenuPresenter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->removeMenuPresenter(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;)V

    .line 2555
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->listMenuPresenter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

    .line 2556
    return-void
.end method

.method getListMenuView(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;
    .locals 4
    .param p1, "cb"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    .prologue
    .line 2603
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 2614
    :goto_0
    return-object v0

    .line 2605
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->listMenuPresenter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

    if-nez v1, :cond_1

    .line 2606
    new-instance v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    sget v3, Lcom/samsung/android/support/sesl/R$layout;->sesl_list_menu_item_layout:I

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->listMenuPresenter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

    .line 2608
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->listMenuPresenter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->setCallback(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;)V

    .line 2609
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->listMenuPresenter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->addMenuPresenter(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;)V

    .line 2612
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->listMenuPresenter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;

    move-result-object v0

    .line 2614
    .local v0, "result":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;
    goto :goto_0
.end method

.method public hasPanelItems()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2542
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-nez v2, :cond_1

    move v0, v1

    .line 2545
    :cond_0
    :goto_0
    return v0

    .line 2543
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 2545
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->listMenuPresenter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v2, 0x0

    .line 2631
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState$SavedState;

    .line 2632
    .local v0, "savedState":Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState$SavedState;
    iget v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState$SavedState;->featureId:I

    iput v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->featureId:I

    .line 2633
    iget-boolean v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState$SavedState;->isOpen:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->wasLastOpen:Z

    .line 2634
    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    .line 2636
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 2637
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    .line 2638
    return-void
.end method

.method onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 2618
    new-instance v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState$SavedState;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState$SavedState;-><init>()V

    .line 2619
    .local v0, "savedState":Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState$SavedState;
    iget v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->featureId:I

    iput v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState$SavedState;->featureId:I

    .line 2620
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->isOpen:Z

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState$SavedState;->isOpen:Z

    .line 2622
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-eqz v1, :cond_0

    .line 2623
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    .line 2624
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->savePresenterStates(Landroid/os/Bundle;)V

    .line 2627
    :cond_0
    return-object v0
.end method

.method setMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V
    .locals 2
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .prologue
    .line 2591
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-ne p1, v0, :cond_1

    .line 2600
    :cond_0
    :goto_0
    return-void

    .line 2593
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-eqz v0, :cond_2

    .line 2594
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->listMenuPresenter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->removeMenuPresenter(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;)V

    .line 2596
    :cond_2
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .line 2597
    if-eqz p1, :cond_0

    .line 2598
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->listMenuPresenter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->listMenuPresenter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->addMenuPresenter(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;)V

    goto :goto_0
.end method

.method setStyle(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2559
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 2560
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 2561
    .local v3, "widgetTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 2564
    const v4, 0x101048d

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2565
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_0

    .line 2566
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 2570
    :cond_0
    sget v4, Lcom/samsung/android/support/sesl/R$attr;->seslPanelMenuListTheme:I

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2571
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_1

    .line 2572
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 2577
    :goto_0
    new-instance v1, Lcom/samsung/android/support/sesl/component/view/SeslContextThemeWrapper;

    invoke-direct {v1, p1, v6}, Lcom/samsung/android/support/sesl/component/view/SeslContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 2578
    .end local p1    # "context":Landroid/content/Context;
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 2580
    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    .line 2582
    sget-object v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslCompatTheme:[I

    invoke-virtual {v1, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2583
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslCompatTheme_android_panelBackground:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->background:I

    .line 2585
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslCompatTheme_android_windowAnimationStyle:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$PanelFeatureState;->windowAnimations:I

    .line 2587
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2588
    return-void

    .line 2574
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "context":Landroid/content/Context;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    sget v4, Lcom/samsung/android/support/sesl/R$style;->Theme_SeslCompat_CompactMenu:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0
.end method
