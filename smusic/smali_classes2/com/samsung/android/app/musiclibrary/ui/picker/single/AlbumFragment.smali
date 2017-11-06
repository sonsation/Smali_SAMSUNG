.class public Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "AlbumFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumFragment$IndexableImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
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
    .line 30
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 90
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumFragment$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 87
    const-string v0, "_id"

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 81
    const v0, 0x10002

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onAttach(Landroid/app/Activity;)V

    .line 35
    const-string v0, "502"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumFragment;->setScreenId(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method protected bridge synthetic onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumFragment;->onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    const-string v1, "album"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;

    const-string v1, "artist"

    .line 64
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$layout;->music_ui_list_item_default:I

    .line 65
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;->setLayout(I)Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;->setWinsetUiEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumFragment;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;->setKeywordCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumFragment;->getActivity()Landroid/app/Activity;

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
    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumFragment;->getUserVisibleHint()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$menu;->single_item_picker_common:I

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/menu/PickerMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumFragment;->mMusicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 119
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0
.end method

.method protected onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 76
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumQueryArgs;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumQueryArgs;-><init>(Z)V

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 40
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 42
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumFragment;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 45
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumFragment$IndexableImpl;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumFragment$IndexableImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumFragment$1;)V

    invoke-virtual {p0, v1, v5}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumFragment;->setIndexable(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$Indexable;Z)V

    .line 48
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/app/Fragment;)V

    sget v2, Lcom/samsung/android/app/musiclibrary/R$dimen;->list_divider_inset_album:I

    .line 49
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetLeft(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object v0

    .line 50
    .local v0, "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;)V

    .line 51
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 53
    sget v1, Lcom/samsung/android/app/musiclibrary/R$dimen;->list_spacing_top:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumFragment;->setListSpaceTop(I)Landroid/view/View;

    .line 54
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->no_albums:I

    sget v3, Lcom/samsung/android/app/musiclibrary/R$string;->no_item_guide:I

    const/4 v4, 0x1

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;-><init>(Landroid/app/Fragment;IIZ)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumFragment;->setEmptyView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 57
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumFragment;->setListShown(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumFragment;->getListType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AlbumFragment;->initListLoader(I)V

    .line 59
    return-void
.end method
