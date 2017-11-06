.class public Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;
.super Ljava/lang/Object;
.source "SearchResultZone.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SearchResultZone"


# instance fields
.field private mCallbackZone:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISeedSearchResultZone;

.field private mContext:Landroid/content/Context;

.field private mDefaultGuideStatement:Ljava/lang/CharSequence;

.field private mInterSapceResult:Landroid/view/View;

.field private mNoSearchResultView:Landroid/widget/TextView;

.field private mRelatedSeedResultArtistSubTitle:Landroid/widget/TextView;

.field private mRelatedSeedResultListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

.field private mSearchRelatedResultView:Landroid/support/v7/widget/RecyclerView;

.field private mSearchResultLoaderId:I

.field private mSearchResultView:Landroid/support/v7/widget/RecyclerView;

.field private mSeedResultArtistSubTitle:Landroid/widget/TextView;

.field private mSeedResultListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

.field private mSeedResultScrollview:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/ISeedResultListAdapter;Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISeedSearchResultZone;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "callback"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/ISeedResultListAdapter;
    .param p4, "callback2"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISeedSearchResultZone;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSearchResultLoaderId:I

    .line 51
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mContext:Landroid/content/Context;

    .line 53
    const v0, 0x7f120330

    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSeedResultScrollview:Landroid/widget/RelativeLayout;

    .line 56
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->initSearchArtist(Landroid/view/View;Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/ISeedResultListAdapter;)V

    .line 57
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->initSearchRelatedArtist(Landroid/view/View;Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/ISeedResultListAdapter;)V

    .line 59
    const v0, 0x7f120336

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mNoSearchResultView:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f120333

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mInterSapceResult:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0397

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mDefaultGuideStatement:Ljava/lang/CharSequence;

    .line 63
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mCallbackZone:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISeedSearchResultZone;

    .line 64
    return-void
.end method

.method private adjustSearchResult(I)V
    .locals 2
    .param p1, "heightDifference"    # I

    .prologue
    .line 162
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSeedResultScrollview:Landroid/widget/RelativeLayout;

    .line 163
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 164
    .local v0, "margin":Landroid/view/ViewGroup$MarginLayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 165
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSeedResultScrollview:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    return-void
.end method

.method private attachSearchRelatedSeedResultData(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v0, "relatedArtists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 310
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;

    .line 311
    .local v1, "result":Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;
    iget v4, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSearchResultLoaderId:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSearchResultLoaderId:I

    const v5, 0x7f120031

    if-eq v4, v5, :cond_0

    .line 313
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->isRelatedArtists(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 314
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 319
    .end local v1    # "result":Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mRelatedSeedResultListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->clear()V

    .line 320
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 321
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mRelatedSeedResultListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

    iget v4, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSearchResultLoaderId:I

    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->addAll(ILjava/util/ArrayList;)V

    .line 322
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->setSearchRelatedSeedResultVisibile(Z)V

    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mContext:Landroid/content/Context;

    .line 324
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0383

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 325
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, "subtitle":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mRelatedSeedResultArtistSubTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mRelatedSeedResultListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->notifyDataSetChanged()V

    .line 331
    .end local v2    # "subtitle":Ljava/lang/String;
    :goto_1
    return-void

    .line 329
    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->setSearchRelatedSeedResultVisibile(Z)V

    goto :goto_1
.end method

.method private attachSearchSeedResultData(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v0, "artists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 284
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;

    .line 285
    .local v1, "result":Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;
    iget v4, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSearchResultLoaderId:I

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSearchResultLoaderId:I

    const v5, 0x7f120031

    if-eq v4, v5, :cond_1

    .line 287
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->isRelatedArtists(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 288
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    .end local v1    # "result":Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSeedResultListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->clear()V

    .line 294
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 295
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSeedResultListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

    iget v4, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSearchResultLoaderId:I

    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->addAll(ILjava/util/ArrayList;)V

    .line 296
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->setSearchSeedResultVisibile(Z)V

    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mContext:Landroid/content/Context;

    .line 298
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0392

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 299
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "subtitle":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSeedResultArtistSubTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSeedResultListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->notifyDataSetChanged()V

    .line 305
    .end local v2    # "subtitle":Ljava/lang/String;
    :goto_1
    return-void

    .line 303
    :cond_3
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->setSearchSeedResultVisibile(Z)V

    goto :goto_1
.end method

.method private initSearchArtist(Landroid/view/View;Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/ISeedResultListAdapter;)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/ISeedResultListAdapter;

    .prologue
    .line 169
    const v0, 0x7f120331

    .line 170
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSeedResultArtistSubTitle:Landroid/widget/TextView;

    .line 172
    const v0, 0x7f120332

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSearchResultView:Landroid/support/v7/widget/RecyclerView;

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSearchResultView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSearchResultView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSearchResultView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 177
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2, p2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/ISeedResultListAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSeedResultListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSearchResultView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSeedResultListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 180
    return-void
.end method

.method private initSearchRelatedArtist(Landroid/view/View;Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/ISeedResultListAdapter;)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/ISeedResultListAdapter;

    .prologue
    .line 183
    const v0, 0x7f120334

    .line 184
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mRelatedSeedResultArtistSubTitle:Landroid/widget/TextView;

    .line 186
    const v0, 0x7f120335

    .line 187
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSearchRelatedResultView:Landroid/support/v7/widget/RecyclerView;

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSearchRelatedResultView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSearchRelatedResultView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSearchRelatedResultView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 192
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2, p2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/ISeedResultListAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mRelatedSeedResultListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSearchRelatedResultView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mRelatedSeedResultListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 195
    return-void
.end method

.method private isRelatedArtists(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;)Z
    .locals 1
    .param p1, "wrapper"    # Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;

    .prologue
    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method private setSearchRelatedSeedResultVisibile(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 233
    if-eqz p1, :cond_8

    .line 234
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mRelatedSeedResultListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 235
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mRelatedSeedResultArtistSubTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 236
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSearchResultLoaderId:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSearchResultLoaderId:I

    const v1, 0x7f120031

    if-eq v0, v1, :cond_4

    .line 239
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSeedResultListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 240
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mInterSapceResult:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mInterSapceResult:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 249
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mRelatedSeedResultArtistSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mRelatedSeedResultListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->setCoverArtVisible(Z)V

    .line 256
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSearchRelatedResultView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSearchRelatedResultView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 279
    :cond_2
    :goto_2
    return-void

    .line 244
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mInterSapceResult:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mInterSapceResult:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 252
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mRelatedSeedResultArtistSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mRelatedSeedResultListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->setCoverArtVisible(Z)V

    goto :goto_1

    .line 260
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mInterSapceResult:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 261
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mInterSapceResult:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 264
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mRelatedSeedResultArtistSubTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 265
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mRelatedSeedResultArtistSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSearchRelatedResultView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSearchRelatedResultView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_2

    .line 272
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mRelatedSeedResultArtistSubTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 273
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mRelatedSeedResultArtistSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSearchRelatedResultView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSearchRelatedResultView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_2
.end method

.method private setSearchSeedResultVisibile(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 198
    if-eqz p1, :cond_5

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSeedResultListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSeedResultArtistSubTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 201
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSearchResultLoaderId:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSearchResultLoaderId:I

    const v1, 0x7f120031

    if-eq v0, v1, :cond_2

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSeedResultArtistSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSeedResultListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->setCoverArtVisible(Z)V

    .line 211
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSearchResultView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSearchResultView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 230
    :cond_1
    :goto_1
    return-void

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSeedResultArtistSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSeedResultListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->setCoverArtVisible(Z)V

    goto :goto_0

    .line 215
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSeedResultArtistSubTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSeedResultArtistSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSearchResultView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSearchResultView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_1

    .line 223
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSeedResultArtistSubTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSeedResultArtistSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSearchResultView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSearchResultView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public attachServerData(ZILjava/util/List;)V
    .locals 1
    .param p1, "hasSearchKeyword"    # Z
    .param p2, "loaderId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p3, "data":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;>;"
    iput p2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSearchResultLoaderId:I

    .line 70
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->initSearchResultDataZone()V

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->setSearchResultViewVisible(Z)V

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->attachSearchSeedResultData(Ljava/util/List;)V

    .line 75
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->attachSearchRelatedSeedResultData(Ljava/util/List;)V

    goto :goto_0
.end method

.method public getSearchResultViewVisible()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSearchResultView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public initSearchResultDataZone()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSeedResultListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->clear()V

    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mRelatedSeedResultListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->clear()V

    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSeedResultListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->notifyDataSetChanged()V

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mRelatedSeedResultListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->notifyDataSetChanged()V

    .line 159
    return-void
.end method

.method public onGlobalLayout(Landroid/app/Activity;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x0

    .line 106
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 108
    .local v3, "r":Landroid/graphics/Rect;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 109
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    .line 110
    .local v4, "rootview":Landroid/view/View;
    invoke-virtual {v4, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 112
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mCallbackZone:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISeedSearchResultZone;

    invoke-interface {v7}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/ISeedSearchResultZone;->getScreenHeight()I

    move-result v0

    .line 113
    .local v0, "fragment_height":I
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mContext:Landroid/content/Context;

    .line 114
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d032f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v2, v7

    .line 115
    .local v2, "mini_player_height":I
    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    iget v8, v3, Landroid/graphics/Rect;->top:I

    sub-int v5, v7, v8

    .line 116
    .local v5, "visualHeight":I
    sub-int v7, v0, v5

    if-le v7, v2, :cond_2

    sub-int v7, v0, v5

    sub-int v1, v7, v2

    .line 122
    .local v1, "heightDifference":I
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSeedResultListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->getItemCount()I

    move-result v7

    if-gtz v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mRelatedSeedResultListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

    .line 123
    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->getItemCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 125
    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->adjustSearchResult(I)V

    .line 131
    .end local v0    # "fragment_height":I
    .end local v1    # "heightDifference":I
    .end local v2    # "mini_player_height":I
    .end local v4    # "rootview":Landroid/view/View;
    .end local v5    # "visualHeight":I
    :cond_1
    :goto_1
    return-void

    .restart local v0    # "fragment_height":I
    .restart local v2    # "mini_player_height":I
    .restart local v4    # "rootview":Landroid/view/View;
    .restart local v5    # "visualHeight":I
    :cond_2
    move v1, v6

    .line 116
    goto :goto_0

    .line 128
    .restart local v1    # "heightDifference":I
    :cond_3
    invoke-direct {p0, v6}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->adjustSearchResult(I)V

    goto :goto_1
.end method

.method public setInitResultZoneGuide()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mNoSearchResultView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mDefaultGuideStatement:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    return-void
.end method

.method public setNoResultZoneGuide()V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mNoSearchResultView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mContext:Landroid/content/Context;

    .line 150
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a038e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    return-void
.end method

.method public setSearchResultViewVisible(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    const/16 v1, 0x8

    .line 84
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->setSearchSeedResultVisibile(Z)V

    .line 85
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->setSearchRelatedSeedResultVisibile(Z)V

    .line 87
    if-eqz p1, :cond_3

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mSeedResultListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mRelatedSeedResultListAdapter:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

    .line 89
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mNoSearchResultView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mNoSearchResultView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    :cond_1
    :goto_0
    return-void

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mNoSearchResultView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mNoSearchResultView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mNoSearchResultView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mNoSearchResultView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateDescription(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;)V
    .locals 2
    .param p1, "type"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;

    .prologue
    .line 134
    sget-object v0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;->SONG:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;

    if-ne p1, v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mContext:Landroid/content/Context;

    .line 136
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0398

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mDefaultGuideStatement:Ljava/lang/CharSequence;

    .line 141
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mNoSearchResultView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mDefaultGuideStatement:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mContext:Landroid/content/Context;

    .line 139
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0397

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/component/SearchResultZone;->mDefaultGuideStatement:Ljava/lang/CharSequence;

    goto :goto_0
.end method
