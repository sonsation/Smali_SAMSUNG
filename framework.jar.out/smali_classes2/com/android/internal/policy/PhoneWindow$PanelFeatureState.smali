.class final Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;
.super Ljava/lang/Object;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PanelFeatureState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;
    }
.end annotation


# instance fields
.field background:I

.field createdPanelView:Landroid/view/View;

.field decorView:Lcom/android/internal/policy/DecorView;

.field featureId:I

.field frozenActionViewState:Landroid/os/Bundle;

.field frozenMenuState:Landroid/os/Bundle;

.field fullBackground:I

.field gravity:I

.field iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

.field isCompact:Z

.field isHandled:Z

.field isInExpandedMode:Z

.field isOpen:Z

.field isPrepared:Z

.field listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

.field listPresenterTheme:I

.field menu:Lcom/android/internal/view/menu/MenuBuilder;

.field public qwertyMode:Z

.field refreshDecorView:Z

.field refreshMenuContent:Z

.field shownPanelView:Landroid/view/View;

.field wasLastExpanded:Z

.field wasLastOpen:Z

.field windowAnimations:I

.field x:I

.field y:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 3649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3650
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    .line 3652
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 3649
    return-void
.end method


# virtual methods
.method applyFrozenState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3785
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 3786
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->restorePresenterStates(Landroid/os/Bundle;)V

    .line 3787
    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    .line 3784
    :cond_0
    return-void
.end method

.method public clearMenuPresenters()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3674
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    .line 3675
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 3676
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 3678
    :cond_0
    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    .line 3679
    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    .line 3673
    return-void
.end method

.method getIconMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    const/4 v2, 0x0

    .line 3737
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v1, :cond_0

    return-object v2

    .line 3739
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-nez v1, :cond_1

    .line 3740
    new-instance v1, Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-direct {v1, p1}, Lcom/android/internal/view/menu/IconMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    .line 3741
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v1, p2}, Lcom/android/internal/view/menu/IconMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 3742
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    const v2, 0x102004d

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/IconMenuPresenter;->setId(I)V

    .line 3743
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 3746
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/IconMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    .line 3748
    .local v0, "result":Lcom/android/internal/view/menu/MenuView;
    return-object v0
.end method

.method getListMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    const/4 v2, 0x0

    .line 3713
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v1, :cond_0

    return-object v2

    .line 3715
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-nez v1, :cond_1

    .line 3716
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->getIconMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    .line 3719
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-nez v1, :cond_2

    .line 3720
    new-instance v1, Lcom/android/internal/view/menu/ListMenuPresenter;

    .line 3721
    iget v2, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listPresenterTheme:I

    const v3, 0x109008b

    .line 3720
    invoke-direct {v1, v3, v2}, Lcom/android/internal/view/menu/ListMenuPresenter;-><init>(II)V

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    .line 3722
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v1, p2}, Lcom/android/internal/view/menu/ListMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 3723
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    const v2, 0x102004e

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ListMenuPresenter;->setId(I)V

    .line 3724
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 3727
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v1, :cond_3

    .line 3728
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    .line 3729
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/IconMenuPresenter;->getNumActualItemsShown()I

    move-result v2

    .line 3728
    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ListMenuPresenter;->setItemIndexOffset(I)V

    .line 3731
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ListMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    .line 3733
    .local v0, "result":Lcom/android/internal/view/menu/MenuView;
    return-object v0
.end method

.method public hasPanelItems()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3660
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-nez v0, :cond_0

    return v2

    .line 3661
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v0, :cond_1

    return v1

    .line 3663
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v0, :cond_4

    .line 3664
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_0
    return v0

    :cond_3
    move v0, v2

    goto :goto_0

    .line 3666
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    :goto_1
    return v1

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method public isInListMode()Z
    .locals 1

    .prologue
    .line 3656
    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isCompact:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v2, 0x0

    move-object v0, p1

    .line 3766
    check-cast v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;

    .line 3767
    .local v0, "savedState":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;
    iget v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->featureId:I

    iput v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    .line 3768
    iget-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->isOpen:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->wasLastOpen:Z

    .line 3769
    iget-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->isInExpandedMode:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->wasLastExpanded:Z

    .line 3770
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    .line 3779
    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 3780
    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 3781
    iput-object v2, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/DecorView;

    .line 3765
    return-void
.end method

.method onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3752
    new-instance v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;-><init>(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;)V

    .line 3753
    .local v0, "savedState":Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;
    iget v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->featureId:I

    iput v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->featureId:I

    .line 3754
    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    iput-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->isOpen:Z

    .line 3755
    iget-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    iput-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->isInExpandedMode:Z

    .line 3757
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_0

    .line 3758
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    .line 3759
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->savePresenterStates(Landroid/os/Bundle;)V

    .line 3762
    :cond_0
    return-object v0
.end method

.method setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 3699
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_0

    return-void

    .line 3701
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_1

    .line 3702
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 3703
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 3705
    :cond_1
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 3706
    if-eqz p1, :cond_3

    .line 3707
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 3708
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 3698
    :cond_3
    return-void
.end method

.method setStyle(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 3683
    sget-object v1, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3685
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x2e

    .line 3684
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->background:I

    .line 3687
    const/16 v1, 0x2f

    .line 3686
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->fullBackground:I

    .line 3689
    const/16 v1, 0x5d

    .line 3688
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->windowAnimations:I

    .line 3691
    const/16 v1, 0x127

    .line 3690
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isCompact:Z

    .line 3693
    const/16 v1, 0x129

    .line 3694
    const v2, 0x1030483

    .line 3692
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->listPresenterTheme:I

    .line 3695
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3682
    return-void
.end method
