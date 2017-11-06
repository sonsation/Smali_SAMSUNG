.class public Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;
.super Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;
.source "CreateStationFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/samsung/android/app/music/common/model/Station;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CreateStationFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;-><init>()V

    return-void
.end method

.method private getInitStationName()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 98
    const/4 v1, 0x0

    .line 101
    .local v1, "stationTmpNum":I
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->mContext:Landroid/content/Context;

    .line 102
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0301

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "initStationName":Ljava/lang/String;
    const/16 v2, 0xa

    if-lt v1, v2, :cond_2

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " %2d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 109
    const/16 v2, 0x32

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->mContext:Landroid/content/Context;

    .line 110
    invoke-static {v2, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getMyStationCountByStationName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_0

    .line 112
    :cond_1
    const-string v2, "CreateStationFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInitStationName : Init Station name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-object v0

    .line 106
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " 0%d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public canUpdateStation()Z
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->isSeedUpdated()Z

    move-result v0

    return v0
.end method

.method protected getAutoCompleteSearchType()Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;->ALL:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "CreateStationFragment"

    return-object v0
.end method

.method public getMyStationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMyStationSeedList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/Seed;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->mSeedListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->getSeedList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected getSearchType()Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;->ARTIST:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;

    return-object v0
.end method

.method protected initSeedListArea(Landroid/view/View;)V
    .locals 5
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 35
    if-eqz p1, :cond_0

    .line 36
    const v0, 0x7f12032f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->mSeedListView:Landroid/support/v7/widget/RecyclerView;

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->mSeedListView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->mSeedListView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 39
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;-><init>(Landroid/content/Context;ZLjava/util/ArrayList;Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->mSeedListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->mSeedListView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->mSeedListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 43
    :cond_0
    return-void
.end method

.method protected initStationData()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method protected initStationNameArea(Landroid/view/View;)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->initStationNameArea(Landroid/view/View;)V

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    if-eqz v0, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->getInitStationName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->mCurrentStationName:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->mCurrentStationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :cond_0
    return-void
.end method

.method public isDuplicatedStationName()Z
    .locals 2

    .prologue
    .line 61
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->mStationNameTxt:Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/widget/SoftKeyboardAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "stationName":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getMyStationCountByStationName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSeedUpdated()Z
    .locals 2

    .prologue
    .line 72
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->mSeedListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->getSeedList()Ljava/util/ArrayList;

    move-result-object v0

    .line 73
    .local v0, "seed_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onItemClicked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V
    .locals 1
    .param p1, "loaderId"    # I
    .param p2, "seedName"    # Ljava/lang/String;
    .param p3, "seedType"    # Ljava/lang/String;
    .param p4, "seedId"    # Ljava/lang/String;
    .param p5, "seedImageUrl"    # Ljava/lang/String;
    .param p6, "trackName"    # Ljava/lang/String;
    .param p7, "isExplicit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p8, "artists":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    invoke-super/range {p0 .. p8}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->onItemClicked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->mSeedListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->mSeedListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/adapter/SeedListAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/fragment/CreateStationFragment;->mCallback:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$IEditStationFragment;->updateOptionMenu()V

    .line 84
    :cond_0
    return-void
.end method
