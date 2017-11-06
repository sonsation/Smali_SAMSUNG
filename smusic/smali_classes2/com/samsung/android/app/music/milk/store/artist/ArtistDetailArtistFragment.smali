.class public Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;
.super Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;
.source "ArtistDetailArtistFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;
.implements Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ArtistDetailArtistFragment"


# instance fields
.field private mArtistAdapter:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;

.field private mArtistId:Ljava/lang/String;

.field private mContentContainer:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mEmptyView:Landroid/view/View;

.field private mHeader:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

.field private mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

.field mOnApiHandleCallback:Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

.field private mProgressContiner:Landroid/view/View;

.field private mRecyclerContainer:Landroid/view/View;

.field private mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;-><init>()V

    .line 61
    new-instance v0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mOnApiHandleCallback:Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->showContents(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->showError(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;)Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mHeader:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mProgressContiner:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;I[Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # [Landroid/view/View;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->setBottomMargins(I[Landroid/view/View;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;
    .locals 3
    .param p0, "artistId"    # Ljava/lang/String;

    .prologue
    .line 105
    new-instance v1, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;-><init>()V

    .line 107
    .local v1, "artistDetailArtistFragment":Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 108
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "artistId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->setArguments(Landroid/os/Bundle;)V

    .line 110
    return-object v1
.end method

.method private varargs setBottomMargins(I[Landroid/view/View;)V
    .locals 5
    .param p1, "bottomMargins"    # I
    .param p2, "views"    # [Landroid/view/View;

    .prologue
    .line 162
    const-string v2, "ArtistDetailArtistFragment"

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

    .line 163
    array-length v4, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, p2, v3

    .line 164
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 165
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 166
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 167
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 170
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private showContents(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mArtistAdapter:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;

    if-nez v0, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->CACHED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->switchMode(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;)V

    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mArtistAdapter:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->swapArray(Ljava/util/List;)V

    goto :goto_0
.end method

.method private showError(IILjava/lang/String;)V
    .locals 1
    .param p1, "rspType"    # I
    .param p2, "errorCode"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-nez v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->show(II)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "artistId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mArtistId:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 122
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mContext:Landroid/content/Context;

    .line 125
    const v1, 0x7f04013d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 127
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f12039b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mHeader:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    .line 129
    const v1, 0x7f1203ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mRecyclerContainer:Landroid/view/View;

    .line 130
    const v1, 0x7f1202cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mContentContainer:Landroid/view/View;

    .line 131
    const v1, 0x7f1203c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    .line 132
    const v1, 0x7f1203b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mProgressContiner:Landroid/view/View;

    .line 133
    const v1, 0x7f1203ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mEmptyView:Landroid/view/View;

    .line 134
    const v1, 0x7f1202b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    .line 136
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mContentContainer:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, p0, v3, v4}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->initialize(Lcom/samsung/android/app/music/network/NetworkManager;Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;Landroid/view/View;Z)V

    .line 137
    new-instance v1, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mArtistAdapter:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;

    .line 140
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mHeader:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mHeader:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment$2;-><init>(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mArtistAdapter:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 154
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;->setOnItemClickListener(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;)V

    .line 155
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 156
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mRecyclerView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mRecyclerContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;->setContainer(Landroid/view/View;)V

    .line 158
    return-object v0
.end method

.method public onItemClick(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1, "listView"    # Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "vh"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p4, "position"    # I

    .prologue
    .line 222
    instance-of v1, p3, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistViewHolder;

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mArtistAdapter:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mArtistAdapter:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;

    .line 224
    invoke-virtual {v2, p4}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->getItemPosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;

    .line 225
    .local v0, "artist":Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;
    if-nez v0, :cond_1

    .line 233
    .end local v0    # "artist":Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;
    :cond_0
    :goto_0
    return-void

    .line 228
    .restart local v0    # "artist":Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;
    :cond_1
    const-string v1, "ArtistDetailArtistFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick : artistName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getArtistName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", artistId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 229
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getArtistId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->ARTIST:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 231
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getArtistId()Ljava/lang/String;

    move-result-object v3

    .line 230
    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected onMilkServiceConnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onMilkServiceConnected(Landroid/content/ComponentName;)V

    .line 188
    const-string v0, "ArtistDetailArtistFragment"

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

    .line 190
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.app.music.service.milk.MilkService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mOnApiHandleCallback:Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mArtistId:Ljava/lang/String;

    .line 193
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getArtistRelatedArtists(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    const/4 v0, 0x5

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->showError(IILjava/lang/String;)V

    goto :goto_0
.end method

.method public onRetry()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public primaryColorChanged(I)V
    .locals 1
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mArtistAdapter:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->updatePrimaryColor(I)V

    .line 203
    return-void
.end method

.method public showLoading(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mProgressContiner:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "ArtistDetailArtistFragment"

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

    .line 175
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistFragment;->mProgressContiner:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 177
    :cond_0
    return-void

    .line 175
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
