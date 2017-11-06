.class public Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreGuideFragment;
.super Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;
.source "MilkSearchStoreGuideFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;


# instance fields
.field private mGuideText:Landroid/widget/TextView;

.field private mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

.field private mNoResultText:Landroid/widget/TextView;

.field private mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

.field private mainContent:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onAttach(Landroid/app/Activity;)V

    .line 39
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v0, :cond_0

    .line 40
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreGuideFragment;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    .line 42
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 61
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 62
    const v1, 0x7f040185

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f1202b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreGuideFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    .line 65
    const v1, 0x7f1202cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreGuideFragment;->mainContent:Landroid/view/View;

    .line 66
    const v1, 0x7f120465

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreGuideFragment;->mGuideText:Landroid/widget/TextView;

    .line 67
    const v1, 0x7f120466

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreGuideFragment;->mNoResultText:Landroid/widget/TextView;

    .line 69
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreGuideFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-eqz v1, :cond_0

    .line 70
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreGuideFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreGuideFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreGuideFragment;->mainContent:Landroid/view/View;

    invoke-virtual {v2, v1, p0, v3, v4}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->initialize(Lcom/samsung/android/app/music/network/NetworkManager;Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;Landroid/view/View;Z)V

    .line 71
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreGuideFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->setClickable(Z)V

    .line 73
    :cond_0
    return-object v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreGuideFragment;->mGuideText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreGuideFragment;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreGuideFragment;->mNoResultText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreGuideFragment;->mNoResultText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    :cond_1
    :goto_0
    return v1

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreGuideFragment;->mGuideText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreGuideFragment;->mGuideText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreGuideFragment;->mNoResultText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreGuideFragment;->mNoResultText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public onRetry()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreGuideFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreGuideFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->hide()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onStart()V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreGuideFragment;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreGuideFragment;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->addOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 55
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreGuideFragment;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreGuideFragment;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->removeOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 81
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onStop()V

    .line 82
    return-void
.end method

.method public primaryColorChanged(I)V
    .locals 0
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 47
    return-void
.end method
