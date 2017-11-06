.class public Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;
.source "AllTrackFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment$IndexableImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment",
        "<",
        "Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;-><init>()V

    return-void
.end method

.method public static getScreenId(Z)Ljava/lang/String;
    .locals 1
    .param p0, "useBlurUi"    # Z

    .prologue
    .line 32
    if-eqz p0, :cond_0

    const-string v0, "225"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "510"

    goto :goto_0
.end method

.method public static newInstance(ZLjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;
    .locals 3
    .param p0, "useBlurUi"    # Z
    .param p1, "uriAuthorityBase"    # Ljava/lang/String;

    .prologue
    .line 23
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 24
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "use_blur_ui"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 25
    const-string/jumbo v2, "url_authority_base"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;-><init>()V

    .line 27
    .local v1, "fg":Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->setArguments(Landroid/os/Bundle;)V

    .line 28
    return-object v1
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 99
    const v0, 0x110001

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->onAttach(Landroid/app/Activity;)V

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "use_blur_ui"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->getScreenId(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->setScreenId(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method protected bridge synthetic onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "use_blur_ui"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 81
    .local v0, "winsetUiEnabled":Z
    :goto_0
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    const-string/jumbo v3, "title"

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;

    const-string v3, "artist"

    .line 82
    invoke-virtual {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;

    const-string v3, "album_id"

    .line 83
    invoke-virtual {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;->setWinsetUiEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;

    .line 84
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;->setPrivateIconEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/PickerAdapter;

    move-result-object v1

    return-object v1

    .line 80
    .end local v0    # "winsetUiEnabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 94
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "url_authority_base"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->onResume()V

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->setSelectAllViewEnabled(Z)V

    .line 76
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 44
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "use_blur_ui"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 47
    .local v3, "useBlurUi":Z
    if-nez v3, :cond_0

    sget-boolean v6, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->SUPPORT_PICKER_INDEX_FAST_SCROLL:Z

    if-eqz v6, :cond_2

    :cond_0
    move v2, v5

    .line 50
    .local v2, "isIndexFastScroll":Z
    :goto_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/app/Fragment;)V

    .line 51
    .local v0, "builder":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;
    sget v6, Lcom/samsung/android/app/musiclibrary/R$dimen;->list_divider_inset_single_picker:I

    invoke-virtual {v0, v6}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetLeft(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    .line 52
    if-eqz v2, :cond_3

    .line 53
    sget v6, Lcom/samsung/android/app/musiclibrary/R$dimen;->list_divider_inset_winset:I

    invoke-virtual {v0, v6}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetRight(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setFastScrollIndexEnabled(Z)V

    .line 58
    :goto_1
    if-eqz v3, :cond_1

    .line 59
    sget v6, Lcom/samsung/android/app/musiclibrary/R$drawable;->list_divider_blur:I

    invoke-virtual {v0, v6}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setDivider(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    .line 61
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object v1

    .line 62
    .local v1, "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;)V

    .line 63
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 65
    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;

    sget v7, Lcom/samsung/android/app/musiclibrary/R$string;->no_tracks:I

    sget v8, Lcom/samsung/android/app/musiclibrary/R$string;->no_item_guide:I

    if-nez v3, :cond_4

    :goto_2
    invoke-direct {v6, p0, v7, v8, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;-><init>(Landroid/app/Fragment;IIZ)V

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->setEmptyView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 68
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->setListShown(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->getListType()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->initListLoader(I)V

    .line 70
    return-void

    .end local v0    # "builder":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;
    .end local v1    # "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    .end local v2    # "isIndexFastScroll":Z
    :cond_2
    move v2, v4

    .line 47
    goto :goto_0

    .line 56
    .restart local v0    # "builder":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;
    .restart local v2    # "isIndexFastScroll":Z
    :cond_3
    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment$IndexableImpl;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment$IndexableImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment$1;)V

    invoke-virtual {p0, v6, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AllTrackFragment;->setIndexable(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$Indexable;Z)V

    goto :goto_1

    .restart local v1    # "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    :cond_4
    move v5, v4

    .line 65
    goto :goto_2
.end method
