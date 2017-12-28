.class public Lcom/android/launcher3/allapps/view/AppsSearch;
.super Ljava/lang/Object;
.source "AppsSearch.java"


# instance fields
.field private final mSearchView:Lcom/android/launcher3/allapps/view/AppsSearchWrapper;

.field private mSupportAppSearch:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/launcher3/allapps/controller/AppsController;)V
    .locals 6
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "controller"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    const v3, 0x7f110027

    const v4, 0x7f110026

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportAppsSearch()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher3/allapps/view/AppsSearch;->mSupportAppSearch:Z

    .line 33
    iget-boolean v2, p0, Lcom/android/launcher3/allapps/view/AppsSearch;->mSupportAppSearch:Z

    if-eqz v2, :cond_0

    move v1, v3

    .line 34
    .local v1, "showId":I
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/view/AppsSearchWrapper;

    iput-object v2, p0, Lcom/android/launcher3/allapps/view/AppsSearch;->mSearchView:Lcom/android/launcher3/allapps/view/AppsSearchWrapper;

    .line 35
    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsSearch;->mSearchView:Lcom/android/launcher3/allapps/view/AppsSearchWrapper;

    invoke-interface {v2, p2}, Lcom/android/launcher3/allapps/view/AppsSearchWrapper;->setController(Lcom/android/launcher3/allapps/controller/AppsController;)V

    .line 36
    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsSearch;->mSearchView:Lcom/android/launcher3/allapps/view/AppsSearchWrapper;

    invoke-interface {v2}, Lcom/android/launcher3/allapps/view/AppsSearchWrapper;->getContainerView()Landroid/view/View;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 38
    iget-boolean v2, p0, Lcom/android/launcher3/allapps/view/AppsSearch;->mSupportAppSearch:Z

    if-nez v2, :cond_1

    move v0, v3

    .line 39
    .local v0, "hideId":I
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 40
    return-void

    .end local v0    # "hideId":I
    .end local v1    # "showId":I
    :cond_0
    move v1, v4

    .line 33
    goto :goto_0

    .restart local v1    # "showId":I
    :cond_1
    move v0, v4

    .line 38
    goto :goto_1
.end method


# virtual methods
.method public changeColorAndBackground(Z)V
    .locals 1
    .param p1, "whiteBg"    # Z

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearch;->mSearchView:Lcom/android/launcher3/allapps/view/AppsSearchWrapper;

    invoke-interface {v0, p1}, Lcom/android/launcher3/allapps/view/AppsSearchWrapper;->changeColorAndBackground(Z)V

    .line 76
    return-void
.end method

.method public getAppsSearchBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearch;->mSearchView:Lcom/android/launcher3/allapps/view/AppsSearchWrapper;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsSearchWrapper;->getAppsSearchBarView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContainerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearch;->mSearchView:Lcom/android/launcher3/allapps/view/AppsSearchWrapper;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsSearchWrapper;->getContainerView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hidePopupMenu()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearch;->mSearchView:Lcom/android/launcher3/allapps/view/AppsSearchWrapper;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsSearchWrapper;->hidePopupMenu()V

    .line 60
    return-void
.end method

.method public launchSfinder()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearch;->mSearchView:Lcom/android/launcher3/allapps/view/AppsSearchWrapper;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsSearchWrapper;->launchSfinder()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChangedIfNeeded()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearch;->mSearchView:Lcom/android/launcher3/allapps/view/AppsSearchWrapper;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsSearchWrapper;->onConfigurationChangedIfNeeded()V

    .line 80
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearch;->mSearchView:Lcom/android/launcher3/allapps/view/AppsSearchWrapper;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsSearchWrapper;->resume()V

    .line 44
    return-void
.end method

.method public setSearchBarVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearch;->getAppsSearchBarView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    return-void
.end method

.method public setTranslateY(F)V
    .locals 1
    .param p1, "translationY"    # F

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearch;->getContainerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 48
    return-void
.end method

.method public showPopupMenu()Z
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearch;->getContainerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearch;->mSearchView:Lcom/android/launcher3/allapps/view/AppsSearchWrapper;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsSearchWrapper;->showPopupMenu()V

    .line 85
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stageExit(Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 1
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearch;->mSearchView:Lcom/android/launcher3/allapps/view/AppsSearchWrapper;

    invoke-interface {v0, p1}, Lcom/android/launcher3/allapps/view/AppsSearchWrapper;->stageExit(Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 64
    return-void
.end method

.method public switchInternalState(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 1
    .param p1, "appsAnim"    # Lcom/android/launcher3/allapps/AppsTransitionAnimation;
    .param p2, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearch;->mSearchView:Lcom/android/launcher3/allapps/view/AppsSearchWrapper;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/allapps/view/AppsSearchWrapper;->switchInternalState(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public updateRecentApp(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearch;->mSearchView:Lcom/android/launcher3/allapps/view/AppsSearchWrapper;

    invoke-interface {v0, p1}, Lcom/android/launcher3/allapps/view/AppsSearchWrapper;->updateRecentApp(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 72
    return-void
.end method
