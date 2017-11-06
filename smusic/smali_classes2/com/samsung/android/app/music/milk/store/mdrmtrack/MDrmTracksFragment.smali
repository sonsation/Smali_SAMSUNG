.class public Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;
.super Lcom/samsung/android/app/music/milk/MilkServiceFragment;
.source "MDrmTracksFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/MilkServiceFragment",
        "<",
        "Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MDrmTracksFragment"


# instance fields
.field private final mMultipleModeListener:Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;-><init>()V

    .line 178
    new-instance v0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$2;-><init>(Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->mMultipleModeListener:Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;

    return-void
.end method

.method public static newInstance()Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;-><init>()V

    .line 49
    .local v0, "fg":Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;
    return-object v0
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 85
    const v0, 0x100059

    return v0
.end method

.method protected onCreateAdapter()Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 96
    new-instance v1, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    const-string/jumbo v2, "title"

    .line 97
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Builder;

    const-string v2, "artist"

    .line 98
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Builder;

    const-string v2, "album_id"

    .line 99
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Builder;

    const-string v2, "audio_id"

    .line 101
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Builder;->setAudioIdCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Builder;

    const v2, 0x80001

    sget-object v3, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails;->MILK_ALBUM:Landroid/net/Uri;

    .line 102
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Builder;->addThumbnailUri(ILandroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Builder;

    .line 103
    invoke-static {v4}, Lcom/samsung/android/app/music/provider/DrmType;->getDisplayName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Builder;->addDrmTag(ILjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Builder;

    .line 105
    .local v0, "builder":Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Builder;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Builder;->build()Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->onCreateAdapter()Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;

    move-result-object v0

    check-cast v0, Landroid/content/AsyncTaskLoader;

    .line 121
    .local v0, "cl":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<Landroid/database/Cursor;>;"
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/AsyncTaskLoader;->setUpdateThrottle(J)V

    .line 122
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 133
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 134
    const v0, 0x7f130022

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 135
    return-void
.end method

.method protected onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 115
    new-instance v0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;-><init>(Z)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    const-string v0, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onCreateView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const v0, 0x7f0401c7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 129
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 148
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 174
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 150
    :pswitch_0
    const-string v2, "MDrmTracksFragment"

    const-string v3, "menu_get_license"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->DrmDownloadUser:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    .line 153
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->hasFeature(Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    new-instance v0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmGetLicenseTask;

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->getCheckedItemIds(I)[J

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmGetLicenseTask;-><init>(Landroid/app/Activity;[J)V

    .line 156
    .local v0, "task":Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmGetLicenseTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmGetLicenseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 158
    .end local v0    # "task":Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmGetLicenseTask;
    :cond_0
    new-instance v2, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a02ca

    .line 159
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setTitle(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a02cb

    .line 160
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setMessage(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0146

    new-instance v4, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;)V

    .line 161
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v2

    .line 168
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->create()Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    move-result-object v2

    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "drm_product_expired"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x7f1205d6
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 139
    const v1, 0x7f1205d6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 140
    .local v0, "delete":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->getCheckedItemCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 143
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 144
    return-void

    .line 141
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 65
    .local v0, "a":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    .line 67
    .local v2, "recyclerView":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/app/Fragment;)V

    const v4, 0x7f020146

    .line 68
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setDivider(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v3

    const v4, 0x7f0d016a

    .line 69
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetLeft(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v3

    const v4, 0x7f0d04e9

    .line 70
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetRight(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object v1

    .line 71
    .local v1, "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->addItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;)V

    .line 72
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 74
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->setListShown(Z)V

    .line 75
    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0a018c

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->setSelectAll(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    .line 76
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->setChoiceMode(I)V

    .line 78
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->mMultipleModeListener:Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addMultipleModeListener(Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;)V

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->getListType()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;->initListLoader(I)V

    .line 81
    return-void
.end method
