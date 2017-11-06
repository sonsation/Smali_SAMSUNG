.class public Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "ArtistFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment$IndexableImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
        "<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private final mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 97
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 94
    const-string v0, "_id"

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 88
    const v0, 0x10003

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onAttach(Landroid/app/Activity;)V

    .line 36
    const-string v0, "504"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->setScreenId(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method protected bridge synthetic onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    const-string v1, "artist"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;

    const-string v1, "number_of_albums"

    .line 70
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;

    const-string v1, "number_of_tracks"

    .line 71
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;->setText3Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;

    const-string v1, "album_id"

    .line 72
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;->setKeywordCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;

    const/4 v1, 0x1

    .line 73
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;->setWinsetUiEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->getUserVisibleHint()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$menu;->single_item_picker_common:I

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->mMusicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 126
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0
.end method

.method protected onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 83
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ArtistQueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/ArtistQueryArgs;-><init>()V

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 41
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 43
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 45
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/app/Fragment;)V

    sget v3, Lcom/samsung/android/app/musiclibrary/R$dimen;->list_divider_inset_album:I

    .line 46
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetLeft(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v0

    .line 48
    .local v0, "builder":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->SUPPORT_PICKER_INDEX_FAST_SCROLL:Z

    if-eqz v2, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setFastScrollIndexEnabled(Z)V

    .line 50
    sget v2, Lcom/samsung/android/app/musiclibrary/R$dimen;->list_divider_inset_winset:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetRight(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    .line 54
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object v1

    .line 55
    .local v1, "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;)V

    .line 56
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 58
    sget v2, Lcom/samsung/android/app/musiclibrary/R$dimen;->list_spacing_top:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->setListSpaceTop(I)Landroid/view/View;

    .line 59
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;

    sget v3, Lcom/samsung/android/app/musiclibrary/R$string;->no_artists:I

    sget v4, Lcom/samsung/android/app/musiclibrary/R$string;->no_item_guide:I

    invoke-direct {v2, p0, v3, v4, v6}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;-><init>(Landroid/app/Fragment;IIZ)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->setEmptyView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 63
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->setListShown(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->getListType()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->initListLoader(I)V

    .line 65
    return-void

    .line 52
    .end local v1    # "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    :cond_0
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment$IndexableImpl;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment$IndexableImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment$1;)V

    invoke-virtual {p0, v2, v5}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/ArtistFragment;->setIndexable(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$Indexable;Z)V

    goto :goto_0
.end method
