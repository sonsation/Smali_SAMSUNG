.class public Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;
.super Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;
.source "MusicCategoryDetailArtistFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;
.implements Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;
.implements Lcom/samsung/android/app/music/milk/store/widget/TabPageChange;


# static fields
.field private static final KEY_CATEGORY_ID:Ljava/lang/String; = "key_category_id"

.field private static final KEY_CATEGORY_TYPE:Ljava/lang/String; = "key_category_type"

.field private static final LOG_TAG:Ljava/lang/String; = "CategoryDetailArtistFragment"


# instance fields
.field private lastVisibleItem:I

.field private mAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;

.field private mCategoryId:Ljava/lang/String;

.field private mCategoryType:I

.field protected mContent:Landroid/view/View;

.field protected mGridView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

.field private mGridViewLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field mLoadMoreListener:Lcom/samsung/android/app/music/milk/store/IOnLoadMoreListener;

.field private mMoreYn:Z

.field protected mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

.field private mPresenter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;

.field protected mProgress:Landroid/view/View;

.field private mSort:Ljava/lang/String;

.field private totalItemCount:I

.field private visibleThreshold:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mMoreYn:Z

    .line 64
    new-instance v0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mLoadMoreListener:Lcom/samsung/android/app/music/milk/store/IOnLoadMoreListener;

    .line 78
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->visibleThreshold:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mMoreYn:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mSort:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    .prologue
    .line 34
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->totalItemCount:I

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->totalItemCount:I

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;)Landroid/support/v7/widget/LinearLayoutManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mGridViewLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    .prologue
    .line 34
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->lastVisibleItem:I

    return v0
.end method

.method static synthetic access$702(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->lastVisibleItem:I

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    .prologue
    .line 34
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->visibleThreshold:I

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(ILjava/lang/String;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;
    .locals 3
    .param p0, "categoryType"    # I
    .param p1, "categoryId"    # Ljava/lang/String;

    .prologue
    .line 84
    new-instance v1, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;-><init>()V

    .line 85
    .local v1, "fragment":Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "key_category_type"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    const-string v2, "key_category_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->setArguments(Landroid/os/Bundle;)V

    .line 89
    return-object v1
.end method


# virtual methods
.method public getCategoryType()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mCategoryType:I

    return v0
.end method

.method protected isSupportSorting()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 298
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mCategoryType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 304
    :cond_0
    :goto_0
    return v0

    .line 300
    :cond_1
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mCategoryType:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 301
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 96
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 97
    const-string v1, "key_category_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mCategoryType:I

    .line 98
    const-string v1, "key_category_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mCategoryId:Ljava/lang/String;

    .line 99
    const-string v1, "CategoryDetailArtistFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate : type - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mCategoryType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mCategoryId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "00"

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mSort:Ljava/lang/String;

    .line 103
    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mCategoryId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;

    .line 105
    new-instance v1, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;

    .line 107
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    const-string v6, "CategoryDetailArtistFragment"

    const-string v7, "onCreateView : "

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const v6, 0x7f0400f3

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 122
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f1202d1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    iput-object v6, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mGridView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    .line 123
    const v6, 0x7f12027e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mProgress:Landroid/view/View;

    .line 124
    const v6, 0x7f1202b5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    iput-object v6, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    .line 125
    const v6, 0x7f1202cc

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mContent:Landroid/view/View;

    .line 127
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mContent:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v7, v6, p0, v8, v9}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->initialize(Lcom/samsung/android/app/music/network/NetworkManager;Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;Landroid/view/View;Z)V

    .line 129
    const v6, 0x7f1202d1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    iput-object v6, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mGridView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    .line 130
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mGridView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/LinearLayoutManager;

    iput-object v6, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mGridViewLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 131
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mGridView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 133
    const v6, 0x7f12027e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mProgress:Landroid/view/View;

    .line 134
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mGridView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    new-instance v7, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment$2;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment$2;-><init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;)V

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->setOnItemClickListener(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;)V

    .line 142
    const v6, 0x7f1202cd

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 143
    .local v0, "headerView":Landroid/view/View;
    const v6, 0x7f1202ce

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 144
    .local v4, "subHeaderView":Landroid/view/View;
    const v6, 0x7f1202d0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 145
    .local v3, "subFakeHeaderView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->isSupportSorting()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 146
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 147
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 148
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->getLogTag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onCreateView : isSupportSorting"

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const v6, 0x7f12038f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 152
    .local v2, "spinner":Landroid/widget/Spinner;
    new-instance v1, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailSortSpinnerAdapter;

    .line 153
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0011

    .line 154
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailSortSpinnerAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 155
    .local v1, "spinAdapter":Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;
    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 156
    new-instance v6, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment$3;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment$3;-><init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;)V

    invoke-virtual {v2, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 192
    .end local v1    # "spinAdapter":Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;
    .end local v2    # "spinner":Landroid/widget/Spinner;
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;

    invoke-virtual {v6, p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->attachView(Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;)V

    .line 194
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mGridView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    new-instance v7, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment$4;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment$4;-><init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;)V

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 214
    return-object v5

    .line 188
    :cond_0
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 189
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 190
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onDestroyView()V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->detachView()V

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->destroy()V

    .line 114
    return-void
.end method

.method protected onMilkServiceConnected()V
    .locals 2

    .prologue
    .line 219
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onMilkServiceConnected()V

    .line 220
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mCategoryType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->requestListClear()V

    .line 222
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->loadArtists()V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mCategoryType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method public onRetry()V
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->hide()V

    .line 274
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mCategoryType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 275
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->requestListClear()V

    .line 276
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->loadArtists()V

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mCategoryType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->requestListClear()V

    .line 279
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryConstant;->CountryGroupRequestType:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->loadArtistsWithSort(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSelected()V
    .locals 3

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSelected : "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mCategoryType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 292
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "990"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 293
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "988"

    const-string v2, "9873"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_0
    return-void
.end method

.method public onUnSelected()V
    .locals 0

    .prologue
    .line 286
    return-void
.end method

.method public primaryColorChanged(I)V
    .locals 1
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 229
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;->updatePrimaryColor(I)V

    .line 230
    return-void
.end method

.method public setHasMoreItem(Z)V
    .locals 0
    .param p1, "has"    # Z

    .prologue
    .line 264
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mMoreYn:Z

    .line 265
    return-void
.end method

.method public showArtists(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "artist":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;>;"
    const-string v0, "CategoryDetailArtistFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showArtists : artist - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;->swapArray(Ljava/util/List;)V

    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->CACHED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->switchMode(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;)V

    .line 250
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 251
    return-void
.end method

.method public showError(IILjava/lang/String;)V
    .locals 1
    .param p1, "rspType"    # I
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->show(II)V

    .line 243
    return-void
.end method

.method public showLoadMore()V
    .locals 2

    .prologue
    .line 255
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mCategoryType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 256
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->loadNextArtists()V

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mCategoryType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mSort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->loadNextArtistsWithSort(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showLoading(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 234
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mProgress:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 235
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->mProgress:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 236
    const-string v0, "CategoryDetailArtistFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showLoading : show - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_0
    return-void

    .line 235
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
