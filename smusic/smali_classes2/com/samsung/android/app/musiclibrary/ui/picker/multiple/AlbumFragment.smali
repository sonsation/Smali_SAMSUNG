.class public Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;
.source "AlbumFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment$IndexableImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment",
        "<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private final mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;-><init>()V

    .line 115
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method public static getScreenId(Z)Ljava/lang/String;
    .locals 1
    .param p0, "useBlurUi"    # Z

    .prologue
    .line 36
    if-eqz p0, :cond_0

    const-string v0, "226"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "511"

    goto :goto_0
.end method

.method public static newInstance(ZLjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;
    .locals 3
    .param p0, "useBlurUi"    # Z
    .param p1, "uriAuthorityBase"    # Ljava/lang/String;

    .prologue
    .line 27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 28
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "use_blur_ui"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    const-string/jumbo v2, "url_authority_base"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;-><init>()V

    .line 31
    .local v1, "fg":Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->setArguments(Landroid/os/Bundle;)V

    .line 32
    return-object v1
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 112
    const-string v0, "_id"

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 106
    const v0, 0x10002

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->onAttach(Landroid/app/Activity;)V

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "use_blur_ui"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->getScreenId(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->setScreenId(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method protected bridge synthetic onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;
    .locals 3

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "use_blur_ui"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 88
    .local v0, "winsetUiEnabled":Z
    :goto_0
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    const-string v2, "album"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;

    const-string v2, "artist"

    .line 89
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->getKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;->setKeywordCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$layout;->music_ui_list_item_default:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;->setLayout(I)Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;

    .line 91
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;->setWinsetUiEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;

    move-result-object v1

    return-object v1

    .line 87
    .end local v0    # "winsetUiEnabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->getActivity()Landroid/app/Activity;

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
    .line 101
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumQueryArgs;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "url_authority_base"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumQueryArgs;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->onResume()V

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->setSelectAllViewEnabled(Z)V

    .line 83
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 48
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AbsMultipleItemPickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 50
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 51
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->setChoiceMode(I)V

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "use_blur_ui"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 54
    .local v3, "useBlurUi":Z
    if-nez v3, :cond_0

    sget-boolean v6, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->SUPPORT_PICKER_INDEX_FAST_SCROLL:Z

    if-eqz v6, :cond_2

    :cond_0
    move v2, v5

    .line 57
    .local v2, "isIndexFastScroll":Z
    :goto_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/app/Fragment;)V

    .line 58
    .local v0, "builder":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;
    sget v6, Lcom/samsung/android/app/musiclibrary/R$dimen;->list_divider_inset_album:I

    invoke-virtual {v0, v6}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetLeft(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    .line 59
    if-eqz v2, :cond_3

    .line 60
    sget v6, Lcom/samsung/android/app/musiclibrary/R$dimen;->list_divider_inset_winset:I

    invoke-virtual {v0, v6}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetRight(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setFastScrollIndexEnabled(Z)V

    .line 65
    :goto_1
    if-eqz v3, :cond_1

    .line 66
    sget v6, Lcom/samsung/android/app/musiclibrary/R$drawable;->list_divider_blur:I

    invoke-virtual {v0, v6}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setDivider(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    .line 68
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object v1

    .line 69
    .local v1, "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;)V

    .line 70
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 72
    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;

    sget v7, Lcom/samsung/android/app/musiclibrary/R$string;->no_albums:I

    sget v8, Lcom/samsung/android/app/musiclibrary/R$string;->no_item_guide:I

    if-nez v3, :cond_4

    :goto_2
    invoke-direct {v6, p0, v7, v8, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;-><init>(Landroid/app/Fragment;IIZ)V

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->setEmptyView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 75
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->setListShown(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->getListType()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->initListLoader(I)V

    .line 77
    return-void

    .end local v0    # "builder":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;
    .end local v1    # "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    .end local v2    # "isIndexFastScroll":Z
    :cond_2
    move v2, v4

    .line 54
    goto :goto_0

    .line 63
    .restart local v0    # "builder":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;
    .restart local v2    # "isIndexFastScroll":Z
    :cond_3
    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment$IndexableImpl;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment$IndexableImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment$1;)V

    invoke-virtual {p0, v6, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/AlbumFragment;->setIndexable(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$Indexable;Z)V

    goto :goto_1

    .restart local v1    # "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    :cond_4
    move v5, v4

    .line 72
    goto :goto_2
.end method
