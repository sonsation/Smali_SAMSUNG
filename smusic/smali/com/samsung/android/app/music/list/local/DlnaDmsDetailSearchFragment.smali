.class public Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;
.source "DlnaDmsDetailSearchFragment.java"


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
    .line 30
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;-><init>()V

    .line 95
    new-instance v0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment$1;-><init>(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;->playSongs(IZ)V

    return-void
.end method

.method public static getNewInstance(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 3
    .param p0, "keyWord"    # Ljava/lang/String;

    .prologue
    .line 33
    new-instance v1, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;-><init>()V

    .line 34
    .local v1, "fg":Landroid/app/Fragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 35
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "key_keyword"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 37
    return-object v1
.end method

.method private playSongs(IZ)V
    .locals 13
    .param p1, "position"    # I
    .param p2, "launchFullPlayer"    # Z

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;

    invoke-virtual {v9}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;->getItemCount()I

    move-result v7

    .line 116
    .local v7, "totalCount":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;

    invoke-virtual {v9}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;->getHeaderViewCount()I

    move-result v3

    .line 117
    .local v3, "headerCount":I
    sub-int v8, v7, v3

    .line 119
    .local v8, "trackCount":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;

    invoke-virtual {v9}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 120
    .local v2, "c":Landroid/database/Cursor;
    new-array v1, v8, [J

    .line 122
    .local v1, "audioIds":[J
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;

    invoke-virtual {v9}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;->getAudioIdColIndex()I

    move-result v0

    .line 123
    .local v0, "audioIdIndex":I
    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 124
    const/4 v4, 0x0

    .line 126
    .local v4, "i":I
    :goto_0
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    aput-wide v10, v1, v4

    .line 127
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 129
    sub-int/2addr p1, v3

    .line 130
    new-instance v6, Lcom/samsung/android/app/music/common/util/MediaDbUtils$PlayerListInfo;

    invoke-direct {v6}, Lcom/samsung/android/app/music/common/util/MediaDbUtils$PlayerListInfo;-><init>()V

    .line 131
    .local v6, "playerListInfo":Lcom/samsung/android/app/music/common/util/MediaDbUtils$PlayerListInfo;
    iput-object v1, v6, Lcom/samsung/android/app/music/common/util/MediaDbUtils$PlayerListInfo;->audioIds:[J

    .line 132
    iput p1, v6, Lcom/samsung/android/app/music/common/util/MediaDbUtils$PlayerListInfo;->position:I

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;->getListType()I

    move-result v9

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;->getKeyword()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v6, Lcom/samsung/android/app/music/common/util/MediaDbUtils$PlayerListInfo;->audioIds:[J

    iget v12, v6, Lcom/samsung/android/app/music/common/util/MediaDbUtils$PlayerListInfo;->position:I

    invoke-static {v9, v10, v11, v12}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->openList(ILjava/lang/String;[JI)V

    .line 136
    if-eqz p2, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->startActivityClearTop(Landroid/app/Activity;)V

    .line 139
    :cond_0
    return-void

    .end local v6    # "playerListInfo":Lcom/samsung/android/app/music/common/util/MediaDbUtils$PlayerListInfo;
    :cond_1
    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_0
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_keyword"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 86
    const v0, 0x10000b

    return v0
.end method

.method protected bridge synthetic onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;->onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;

    const-string v1, "artist"

    .line 67
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;

    const-string v1, "_id"

    .line 68
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;->setAudioIdCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;

    const-string v1, "album_id"

    .line 69
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;->setGlobalSearchMode(Z)Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;

    const/4 v1, 0x1

    .line 70
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;->setRemoteTrack(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key_keyword"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "keyWord":Ljava/lang/String;
    new-instance v1, Lcom/samsung/android/app/music/list/local/query/DlnaDmsTrackQueryArgs;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;->getSearchText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/app/music/list/local/query/DlnaDmsTrackQueryArgs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 44
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 47
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/app/Fragment;)V

    const v2, 0x7f020146

    .line 48
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setDivider(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v1

    const v2, 0x7f0d0169

    .line 49
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetLeft(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v1

    const v2, 0x7f0d04e9

    .line 50
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetRight(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object v0

    .line 51
    .local v0, "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 54
    const v1, 0x7f0d01be

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;->setListSpaceTop(I)Landroid/view/View;

    .line 55
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/TextEmptyViewCreator;

    const v2, 0x7f0a0138

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/TextEmptyViewCreator;-><init>(Landroid/app/Fragment;I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;->setEmptyView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 57
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;->setListShown(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;->getListType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;->initListLoader(I)V

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailSearchFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemAnimator(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;)V

    .line 62
    return-void
.end method
