.class public abstract Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;
.super Lcom/samsung/android/app/music/milk/MilkServiceFragment;
.source "DownloadBasketBaseFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableList;
.implements Lcom/samsung/android/app/music/milk/store/downloadbasket/PageFocusObservable$OnPageFocusListener;
.implements Lcom/samsung/android/app/music/milk/store/downloadbasket/SelectAllObservable$OnSelectAllCheckListener;
.implements Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable$OnBottomBarMenuItemSelectListener;
.implements Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionGetter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketDeletable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/MilkServiceFragment",
        "<",
        "Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;",
        ">;",
        "Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableList;",
        "Lcom/samsung/android/app/music/milk/store/downloadbasket/PageFocusObservable$OnPageFocusListener;",
        "Lcom/samsung/android/app/music/milk/store/downloadbasket/SelectAllObservable$OnSelectAllCheckListener;",
        "Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable$OnBottomBarMenuItemSelectListener;",
        "Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionGetter;"
    }
.end annotation


# instance fields
.field private bHasFocus:Z

.field buyItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckableList:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;

.field private mDeleteable:Lcom/samsung/android/app/musiclibrary/ui/Deleteable;

.field private mHeader:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;

.field private mInitialDataLoaded:I

.field private final mMultipleModeListener:Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;

.field private mPurchasable:Lcom/samsung/android/app/music/milk/store/downloadbasket/Purchasable;

.field purchasedItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->purchasedItem:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->buyItem:Ljava/util/List;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->bHasFocus:Z

    .line 154
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$2;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->mMultipleModeListener:Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->updateSelectAll()V

    return-void
.end method

.method private updateSelectAll()V
    .locals 5

    .prologue
    .line 163
    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->bHasFocus:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    if-eqz v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemCount()I

    move-result v0

    .line 165
    .local v0, "checkedItemCount":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getValidItemCount()I

    move-result v1

    .line 166
    .local v1, "validIteCount":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->onCreateSelectAllViewHolder()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object v4

    if-eqz v1, :cond_1

    if-ne v0, v1, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v2, v4, v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->updateSelectAllView(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V

    .line 171
    .end local v0    # "checkedItemCount":I
    .end local v1    # "validIteCount":I
    :cond_0
    return-void

    .line 167
    .restart local v0    # "checkedItemCount":I
    .restart local v1    # "validIteCount":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAvailableCount()I
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public varargs getCheckedItemHeaderInfoAsync(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedItemHeaderInfoListener;[I)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedItemHeaderInfoListener;
    .param p2, "headerTypes"    # [I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->mCheckableList:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;->getCheckedItemHeaderInfoAsync(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedItemHeaderInfoListener;[I)V

    .line 191
    return-void
.end method

.method public getCheckedPurchasableItemIdAsync(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedPurchasableItemIdListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedPurchasableItemIdListener;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->mCheckableList:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;->getCheckedPurchasableItemIdAsync(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedPurchasableItemIdListener;)V

    .line 185
    return-void
.end method

.method protected getHeader()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->mHeader:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public getSubscription()Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubscriptions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getTabId()I
.end method

.method protected abstract initHeaderBuilder(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;)V
.end method

.method public invalidateSubscription()V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method public onBottomBarMenuItemSelected(Landroid/view/MenuItem;)V
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 291
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 307
    :goto_0
    return-void

    .line 293
    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/dialog/MilkBaseLauncher;->checkNetwork(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->mPurchasable:Lcom/samsung/android/app/music/milk/store/downloadbasket/Purchasable;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->mPurchasable:Lcom/samsung/android/app/music/milk/store/downloadbasket/Purchasable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/Purchasable;->purchaseItems()V

    .line 298
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "936"

    const-string v2, "9396"

    .line 299
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->mDeleteable:Lcom/samsung/android/app/musiclibrary/ui/Deleteable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/Deleteable;->deleteItems()V

    .line 303
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "936"

    const-string v2, "9397"

    .line 304
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :sswitch_data_0
    .sparse-switch
        0x7f1205a0 -> :sswitch_1
        0x7f1205aa -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->mInitialDataLoaded:I

    .line 87
    return-void
.end method

.method protected onCreateAdapter()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;
    .locals 3

    .prologue
    .line 195
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;

    const-string v1, "artist"

    .line 196
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;

    const-string v1, "album_id"

    .line 197
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;

    const-string/jumbo v1, "track_id"

    .line 198
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->setTrackIdCol(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;

    move-result-object v0

    const-string v1, "cp_attrs"

    .line 199
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->setCpAttrsCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;

    const-string v1, "audio_id"

    .line 200
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->setAudioIdCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;

    const-string v1, "payment_price"

    const-string/jumbo v2, "status_code"

    .line 201
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->setPriceCol(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;

    move-result-object v0

    const-string v1, "codec"

    .line 203
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->setFileExtenstionCol(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;

    move-result-object v0

    const v1, 0x80002

    sget-object v2, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails;->MILK_ALBUM:Landroid/net/Uri;

    .line 204
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->addThumbnailUri(ILandroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;

    .line 205
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getTabId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->setTabId(I)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter$Builder;->build()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->onCreateAdapter()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 210
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getActivity()Landroid/app/Activity;

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
    .line 215
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;

    move-result-object v0

    check-cast v0, Landroid/content/AsyncTaskLoader;

    .line 216
    .local v0, "cl":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<Landroid/database/Cursor;>;"
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/AsyncTaskLoader;->setUpdateThrottle(J)V

    .line 217
    return-object v0
.end method

.method protected onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 179
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketQueryArgs;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getTabId()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketQueryArgs;-><init>(I)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
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

    .line 93
    const v0, 0x7f040090

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->mMultipleModeListener:Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->removeMultipleModeListener(Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;)V

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable;

    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getTabId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable;->removeOnBottomBarMenuSelectListener(I)V

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SelectAllObservable;

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SelectAllObservable;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getTabId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SelectAllObservable;->removeOnSelectAllCheckListener(I)V

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/PageFocusObservable;

    if-eqz v0, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/PageFocusObservable;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getTabId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/PageFocusObservable;->removeOnPageFocusListener(I)V

    .line 151
    :cond_2
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onDestroyView()V

    .line 152
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
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
    .line 222
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 223
    if-nez p2, :cond_0

    .line 237
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->confirmCheckedPositionsById()V

    .line 228
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 229
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 230
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->mInitialDataLoaded:I

    if-ge v1, v0, :cond_1

    .line 231
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->mInitialDataLoaded:I

    .line 232
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->setItemCheckedAll(Z)V

    .line 235
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->updateHeader()V

    .line 236
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->updateSelectAll()V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 57
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onPageFocused(Z)V
    .locals 3
    .param p1, "focused"    # Z

    .prologue
    .line 284
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->bHasFocus:Z

    .line 285
    const-string v0, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onPageFocused : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->updateSelectAll()V

    .line 287
    return-void
.end method

.method public onSelectAllCheck(Z)V
    .locals 1
    .param p1, "checkAll"    # Z

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 278
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->setItemCheckedAll(Z)V

    .line 280
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkServiceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 99
    const v4, 0x7f120202

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 100
    .local v3, "headerLayout":Landroid/view/ViewGroup;
    new-instance v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;-><init>(Landroid/app/Activity;)V

    .line 101
    .local v2, "headerBuilder":Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;
    new-instance v4, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;)V

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->setOnSecondLable2ClickListener(Landroid/view/View$OnClickListener;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;

    .line 110
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->initHeaderBuilder(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;)V

    .line 111
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->create()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;

    move-result-object v1

    .line 112
    .local v1, "header":Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;->getHeader()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->mHeader:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;

    .line 113
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 115
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/app/Fragment;)V

    const v5, 0x7f020146

    .line 116
    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setDivider(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v4

    const v5, 0x7f0d016a

    .line 117
    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetLeft(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v4

    const v5, 0x7f0d04e9

    .line 118
    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetRight(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object v0

    .line 119
    .local v0, "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v4, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;)V

    .line 120
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 121
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->setListShown(Z)V

    .line 122
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->setChoiceMode(I)V

    .line 123
    new-instance v4, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketDeletable;

    invoke-direct {v4, p0, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketDeletable;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;Landroid/app/Fragment;)V

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->mDeleteable:Lcom/samsung/android/app/musiclibrary/ui/Deleteable;

    .line 124
    new-instance v4, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-direct {v4, v5}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->mCheckableList:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl;

    .line 125
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->mMultipleModeListener:Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addMultipleModeListener(Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;)V

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable;

    if-eqz v4, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable;

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getTabId()I

    move-result v5

    invoke-interface {v4, v5, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable;->addOnBottomBarMenuSelectListener(ILcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable$OnBottomBarMenuItemSelectListener;)V

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/samsung/android/app/music/milk/store/downloadbasket/SelectAllObservable;

    if-eqz v4, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/milk/store/downloadbasket/SelectAllObservable;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getTabId()I

    move-result v5

    invoke-interface {v4, v5, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SelectAllObservable;->addOnSelectAllCheckListener(ILcom/samsung/android/app/music/milk/store/downloadbasket/SelectAllObservable$OnSelectAllCheckListener;)V

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/samsung/android/app/music/milk/store/downloadbasket/PageFocusObservable;

    if-eqz v4, :cond_2

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/milk/store/downloadbasket/PageFocusObservable;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getTabId()I

    move-result v5

    invoke-interface {v4, v5, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/PageFocusObservable;->addOnPageFocusListener(ILcom/samsung/android/app/music/milk/store/downloadbasket/PageFocusObservable$OnPageFocusListener;)V

    .line 136
    :cond_2
    return-void
.end method

.method public setPurchasable(Lcom/samsung/android/app/music/milk/store/downloadbasket/Purchasable;)V
    .locals 0
    .param p1, "purchasable"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/Purchasable;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->mPurchasable:Lcom/samsung/android/app/music/milk/store/downloadbasket/Purchasable;

    .line 175
    return-void
.end method

.method public abstract updateHeader()V
.end method
