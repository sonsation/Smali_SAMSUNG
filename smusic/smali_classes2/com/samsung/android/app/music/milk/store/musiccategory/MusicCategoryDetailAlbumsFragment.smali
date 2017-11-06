.class public Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;
.super Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;
.source "MusicCategoryDetailAlbumsFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailAlbumsView;
.implements Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;
.implements Lcom/samsung/android/app/music/milk/store/widget/TabPageChange;


# static fields
.field private static final KEY_CATEGORY_ID:Ljava/lang/String; = "key_category_id"

.field private static final KEY_CATEGORY_TYPE:Ljava/lang/String; = "key_category_type"


# instance fields
.field private mAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter;

.field private mCategoryId:Ljava/lang/String;

.field private mCategoryType:I

.field protected mContent:Landroid/view/View;

.field protected mGridView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

.field protected mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

.field private mPresenter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;

.field protected mProgress:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(ILjava/lang/String;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;
    .locals 3
    .param p0, "categoryType"    # I
    .param p1, "categoryId"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v1, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;-><init>()V

    .line 57
    .local v1, "fragment":Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "key_category_type"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    const-string v2, "key_category_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 61
    return-object v1
.end method


# virtual methods
.method public getCategoryType()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mCategoryType:I

    return v0
.end method

.method protected isSupportSorting()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 240
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mCategoryType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v0

    .line 242
    :cond_1
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mCategoryType:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 243
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 68
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 69
    const-string v1, "key_category_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mCategoryType:I

    .line 70
    const-string v1, "key_category_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mCategoryId:Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate : type - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mCategoryType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mCategoryId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mCategoryId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;

    .line 76
    new-instance v1, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter;

    .line 78
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->getLogTag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onCreateView : "

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const v6, 0x7f0400f3

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 93
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f1202d1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    iput-object v6, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mGridView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    .line 94
    const v6, 0x7f12027e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mProgress:Landroid/view/View;

    .line 95
    const v6, 0x7f1202b5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    iput-object v6, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    .line 96
    const v6, 0x7f1202cc

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mContent:Landroid/view/View;

    .line 98
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mContent:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v7, v6, p0, v8, v9}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->initialize(Lcom/samsung/android/app/music/network/NetworkManager;Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;Landroid/view/View;Z)V

    .line 100
    const v6, 0x7f1202d1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    iput-object v6, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mGridView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    .line 101
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mGridView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter;

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 103
    const v6, 0x7f12027e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mProgress:Landroid/view/View;

    .line 105
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mGridView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    new-instance v7, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;)V

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->setOnItemClickListener(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;)V

    .line 113
    const v6, 0x7f1202cd

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, "headerView":Landroid/view/View;
    const v6, 0x7f1202ce

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 115
    .local v4, "subHeaderView":Landroid/view/View;
    const v6, 0x7f1202d0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 116
    .local v3, "subFakeHeaderView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->isSupportSorting()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 117
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 118
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 119
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->getLogTag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onCreateView : isSupportSorting"

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const v6, 0x7f12038f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 124
    .local v2, "spinner":Landroid/widget/Spinner;
    new-instance v1, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailSortSpinnerAdapter;

    .line 125
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0011

    .line 126
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailSortSpinnerAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 127
    .local v1, "spinAdapter":Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;
    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 128
    new-instance v6, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment$2;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment$2;-><init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;)V

    invoke-virtual {v2, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 165
    .end local v1    # "spinAdapter":Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;
    .end local v2    # "spinner":Landroid/widget/Spinner;
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;

    invoke-virtual {v6, p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->attachView(Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailAlbumsView;)V

    .line 166
    return-object v5

    .line 160
    :cond_0
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 161
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 162
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onDestroyView()V

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->detachView()V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->destroy()V

    .line 85
    return-void
.end method

.method protected onMilkServiceConnected()V
    .locals 3

    .prologue
    .line 171
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onMilkServiceConnected()V

    .line 172
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mCategoryType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->requestListClear()V

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->loadAlbums()V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mCategoryType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->requestListClear()V

    .line 177
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryConstant;->CountryGroupRequestType:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->loadAlbumsWithSort(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRetry()V
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->hide()V

    .line 215
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mCategoryType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->requestListClear()V

    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->loadAlbums()V

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mCategoryType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->requestListClear()V

    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryConstant;->CountryGroupRequestType:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->loadAlbumsWithSort(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSelected()V
    .locals 3

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSelected : "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mCategoryType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 234
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "989"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "988"

    const-string v2, "9872"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_0
    return-void
.end method

.method public onUnSelected()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public primaryColorChanged(I)V
    .locals 1
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter;->updatePrimaryColor(I)V

    .line 185
    return-void
.end method

.method public showAlbums(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "album":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showAlbums : album - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter;->swapArray(Ljava/util/List;)V

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->CACHED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->switchMode(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;)V

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 206
    return-void
.end method

.method public showError(IILjava/lang/String;)V
    .locals 1
    .param p1, "rspType"    # I
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->show(II)V

    .line 198
    return-void
.end method

.method public showLoading(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mProgress:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 190
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->mProgress:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 191
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

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

    .line 193
    :cond_0
    return-void

    .line 190
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
