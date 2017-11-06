.class public Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;
.source "AlbumBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter",
        "<",
        "Lcom/samsung/android/app/music/common/model/Album;",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AlbumBaseAdapter"


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/Album;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/Album;>;"
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;->setHasStableIds(Z)V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;->playStoreAlbums(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private playStoreAlbums(Ljava/lang/String;)V
    .locals 3
    .param p1, "albumId"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter$4;-><init>(Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getAlbumTracks(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;I)I

    .line 183
    return-void
.end method


# virtual methods
.method protected createAlbumViewHolder(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;->create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;

    move-result-object v0

    return-object v0
.end method

.method protected getClickableView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/view/View;
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 123
    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;

    if-eqz v0, :cond_0

    .line 124
    check-cast p1, Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;->getContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    .restart local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->getClickableView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/samsung/android/app/music/common/model/Album;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/Album;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;->getItem(I)Lcom/samsung/android/app/music/common/model/Album;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;->getItemPosition(I)I

    move-result v1

    .line 147
    .local v1, "realPosition":I
    if-ltz v1, :cond_0

    .line 148
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;->getItem(I)Lcom/samsung/android/app/music/common/model/Album;

    move-result-object v0

    .line 149
    .local v0, "album":Lcom/samsung/android/app/music/common/model/Album;
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    int-to-long v2, v2

    .line 151
    .end local v0    # "album":Lcom/samsung/android/app/music/common/model/Album;
    :goto_0
    return-wide v2

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->getItemId(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method protected getItemPosition(I)I
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 51
    return p1
.end method

.method public isClickable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 7
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 56
    instance-of v4, p1, Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 57
    check-cast v1, Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;

    .line 58
    .local v1, "holder":Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;->getItemPosition(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;->getItem(I)Lcom/samsung/android/app/music/common/model/Album;

    move-result-object v0

    .line 60
    .local v0, "album":Lcom/samsung/android/app/music/common/model/Album;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Album;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "imageUrl":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;->getAlbumImage()Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    move-result-object v3

    .line 64
    .local v3, "imageView":Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Album;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter$1;

    invoke-direct {v5, p0, v3}, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter$1;-><init>(Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;)V

    const v6, 0x7f0200da

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->loadImage(Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;I)V

    .line 82
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Album;->getAlbumTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;->getArtist()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Album;->getDisplayArtistsName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;->getContainer()Landroid/widget/RelativeLayout;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter$2;

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter$2;-><init>(Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;Lcom/samsung/android/app/music/common/model/Album;)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;->getPlayButton()Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter$3;

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter$3;-><init>(Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;Lcom/samsung/android/app/music/common/model/Album;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;->getPlayButton()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 106
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;->getPlayButton()Landroid/view/View;

    move-result-object v4

    .line 107
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;->getPlayButton()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a033a

    .line 108
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 106
    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 112
    .end local v0    # "album":Lcom/samsung/android/app/music/common/model/Album;
    .end local v1    # "holder":Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;
    .end local v2    # "imageUrl":Ljava/lang/String;
    .end local v3    # "imageView":Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
    :cond_0
    return-void
.end method

.method public onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;->createAlbumViewHolder(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;

    move-result-object v0

    return-object v0
.end method

.method protected onItemClicked(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 116
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;->getItemPosition(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/newrelease/AlbumBaseAdapter;->getItem(I)Lcom/samsung/android/app/music/common/model/Album;

    move-result-object v0

    .line 117
    .local v0, "album":Lcom/samsung/android/app/music/common/model/Album;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->ALBUM:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 118
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Album;->getAlbumId()Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;)Z

    .line 119
    return-void
.end method
