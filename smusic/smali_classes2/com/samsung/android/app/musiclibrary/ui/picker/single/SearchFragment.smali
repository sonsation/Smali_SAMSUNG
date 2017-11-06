.class public Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment",
        "<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private final mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;-><init>()V

    .line 84
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    return-void
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 75
    const v0, 0x100024

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->onAttach(Landroid/app/Activity;)V

    .line 34
    const-string v0, "508"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;->setScreenId(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method protected bridge synthetic onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;->onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 58
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;->setAudioIdCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;

    const-string v1, "album_id"

    .line 59
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;->setGlobalSearchMode(Z)Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;

    .line 60
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;->setWinsetUiEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 70
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/SearchTrackQueryArgs;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;->getSearchText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/SearchTrackQueryArgs;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 41
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 44
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/app/Fragment;)V

    sget v2, Lcom/samsung/android/app/musiclibrary/R$dimen;->list_divider_inset_album:I

    .line 45
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetLeft(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v1

    sget v2, Lcom/samsung/android/app/musiclibrary/R$dimen;->list_divider_inset_winset:I

    .line 46
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetRight(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object v0

    .line 47
    .local v0, "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 50
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/NoResultViewCreator;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->no_results:I

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/NoResultViewCreator;-><init>(Landroid/app/Fragment;IZ)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;->setEmptyView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 52
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;->setListShown(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;->getListType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;->initListLoader(I)V

    .line 54
    return-void
.end method
