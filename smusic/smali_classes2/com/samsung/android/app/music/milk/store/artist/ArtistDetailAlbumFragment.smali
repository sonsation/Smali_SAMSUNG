.class public Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;
.super Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;
.source "ArtistDetailAlbumFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ArtistDetailAlbumFragment"


# instance fields
.field private albumCategory:Ljava/lang/String;

.field private mArtistDetailAlbumAdapter:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter;

.field private mArtistId:Ljava/lang/String;

.field private mContentContainer:Landroid/view/View;

.field protected mContext:Landroid/content/Context;

.field private mEmptyView:Landroid/view/View;

.field private mHeader:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

.field private mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

.field mOnApiHandleCallback:Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

.field private mProgressContiner:Landroid/view/View;

.field private mRecyclerContainer:Landroid/view/View;

.field private mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

.field private mSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;-><init>()V

    .line 56
    const-string v0, "01"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->albumCategory:Ljava/lang/String;

    .line 62
    new-instance v0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mOnApiHandleCallback:Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->albumCategory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->albumCategory:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->loadAlbumInfos()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;)Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mHeader:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mProgressContiner:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;I[Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # [Landroid/view/View;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->setBottomMargins(I[Landroid/view/View;)V

    return-void
.end method

.method private loadAlbumInfos()V
    .locals 3

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mOnApiHandleCallback:Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mArtistId:Ljava/lang/String;

    .line 215
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getArtistAlbums(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    const/4 v0, 0x5

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->showError(IILjava/lang/String;)V

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;
    .locals 3
    .param p0, "artistId"    # Ljava/lang/String;

    .prologue
    .line 106
    new-instance v1, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;-><init>()V

    .line 108
    .local v1, "artistAlbumFragment":Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 109
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "artistId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->setArguments(Landroid/os/Bundle;)V

    .line 111
    return-object v1
.end method

.method private varargs setBottomMargins(I[Landroid/view/View;)V
    .locals 5
    .param p1, "bottomMargins"    # I
    .param p2, "views"    # [Landroid/view/View;

    .prologue
    .line 183
    const-string v2, "ArtistDetailAlbumFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBottomMargins. margin - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", views - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    array-length v4, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, p2, v3

    .line 185
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 186
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 187
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 188
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 191
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "artistId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mArtistId:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 125
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mContext:Landroid/content/Context;

    .line 128
    const v2, 0x7f04013b

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 129
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f1203c6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mRecyclerContainer:Landroid/view/View;

    .line 130
    const v2, 0x7f1202cc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mContentContainer:Landroid/view/View;

    .line 131
    const v2, 0x7f1202b5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    .line 132
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mContentContainer:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, p0, v4, v5}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->initialize(Lcom/samsung/android/app/music/network/NetworkManager;Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;Landroid/view/View;Z)V

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f12039b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mHeader:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    .line 135
    const v2, 0x7f12038f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mSpinner:Landroid/widget/Spinner;

    .line 136
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/SortSpinnerAdapter;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mContext:Landroid/content/Context;

    .line 137
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/app/music/milk/store/widget/SortSpinnerAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 139
    .local v0, "spinAdapter":Lcom/samsung/android/app/music/milk/store/widget/SortSpinnerAdapter;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 141
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mSpinner:Landroid/widget/Spinner;

    new-instance v3, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment$2;-><init>(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 155
    const v2, 0x7f1203c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    .line 156
    const v2, 0x7f1203ae

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mEmptyView:Landroid/view/View;

    .line 157
    const v2, 0x7f1203b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mProgressContiner:Landroid/view/View;

    .line 159
    new-instance v2, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mArtistDetailAlbumAdapter:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter;

    .line 162
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mHeader:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    if-eqz v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mHeader:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment$3;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment$3;-><init>(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 175
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mArtistDetailAlbumAdapter:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 176
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->setEmptyView(Landroid/view/View;)V

    .line 177
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mProgressContiner:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->setLoadingProgressView(Landroid/view/View;)V

    .line 179
    return-object v1
.end method

.method protected onMilkServiceConnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 203
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onMilkServiceConnected(Landroid/content/ComponentName;)V

    .line 205
    const-string v0, "ArtistDetailAlbumFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMilkServiceConnected : name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.app.music.service.milk.MilkService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->loadAlbumInfos()V

    .line 210
    :cond_0
    return-void
.end method

.method public onRetry()V
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->hide()V

    .line 196
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 198
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->ARTIST:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mArtistId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;)Z

    .line 199
    return-void
.end method

.method public primaryColorChanged(I)V
    .locals 1
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mArtistDetailAlbumAdapter:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter;->updatePrimaryColor(I)V

    .line 224
    return-void
.end method

.method public showContents(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/Album;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/Album;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mArtistDetailAlbumAdapter:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter;

    if-nez v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->CACHED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->switchMode(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;)V

    .line 244
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mArtistDetailAlbumAdapter:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter;->swapArray(Ljava/util/List;)V

    goto :goto_0
.end method

.method public showError(IILjava/lang/String;)V
    .locals 1
    .param p1, "rspType"    # I
    .param p2, "errorCode"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-nez v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->show(II)V

    goto :goto_0
.end method

.method public showLoading(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 227
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->showLoading(Z)V

    .line 228
    return-void
.end method
