.class public Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;
.source "ArtistDetailAlbumAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter",
        "<",
        "Lcom/samsung/android/app/music/common/model/Album;",
        "Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ArtistDetailAlbumAdapter"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/Album;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/Album;>;"
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 31
    return-void
.end method


# virtual methods
.method public isClickable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public isSelectable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter;->onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumViewHolder;I)V

    return-void
.end method

.method public onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumViewHolder;I)V
    .locals 7
    .param p1, "viewHolder"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 45
    instance-of v4, p1, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumViewHolder;

    if-eqz v4, :cond_0

    .line 46
    move-object v1, p1

    .line 47
    .local v1, "holder":Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumViewHolder;
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/Album;

    .line 49
    .local v0, "album":Lcom/samsung/android/app/music/common/model/Album;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Album;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "imageUrl":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumViewHolder;->getAlbumImage()Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    move-result-object v3

    .line 53
    .local v3, "imageView":Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Album;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter$1;

    invoke-direct {v5, p0, v3}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter$1;-><init>(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter;Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;)V

    const v6, 0x7f0200d9

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->loadImage(Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;I)V

    .line 71
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Album;->getAlbumTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumViewHolder;->getArtist()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Album;->getDisplayArtistsName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumViewHolder;->getContainer()Landroid/widget/RelativeLayout;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter$2;

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter$2;-><init>(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter;Lcom/samsung/android/app/music/common/model/Album;)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumViewHolder;->getPlayButton()Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter$3;

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter$3;-><init>(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter;Lcom/samsung/android/app/music/common/model/Album;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumViewHolder;->getPlayButton()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 91
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumViewHolder;->getPlayButton()Landroid/view/View;

    move-result-object v4

    .line 92
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumViewHolder;->getPlayButton()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a033a

    .line 93
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 91
    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 96
    .end local v0    # "album":Lcom/samsung/android/app/music/common/model/Album;
    .end local v1    # "holder":Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumViewHolder;
    .end local v2    # "imageUrl":Ljava/lang/String;
    .end local v3    # "imageView":Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter;->onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumViewHolder;
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "type"    # I

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumViewHolder;->create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public playStoreAlbums(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "albumId"    # Ljava/lang/String;

    .prologue
    .line 104
    const-string v0, "ArtistDetailAlbumAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playStoreAlbums : albumId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter$4;-><init>(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailAlbumAdapter;Landroid/content/Context;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getAlbumTracks(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;I)I

    .line 126
    return-void
.end method
