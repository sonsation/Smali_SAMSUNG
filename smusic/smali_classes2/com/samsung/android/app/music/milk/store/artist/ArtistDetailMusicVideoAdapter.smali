.class public Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;
.source "ArtistDetailMusicVideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter",
        "<",
        "Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;",
        "Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoViewHolder;",
        ">;"
    }
.end annotation


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
            "Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;>;"
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected createMusicVideoViewHolder(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoViewHolder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoViewHolder;->create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoAdapter;->getItem(I)Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;

    move-result-object v0

    return-object v0
.end method

.method public isClickable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoAdapter;->onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoViewHolder;I)V

    return-void
.end method

.method public onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoViewHolder;I)V
    .locals 5
    .param p1, "viewHolder"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 30
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoAdapter;->getItem(I)Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;

    move-result-object v0

    .line 32
    .local v0, "artistDetailMusicVideo":Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;
    if-nez v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 36
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "imageUrl":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoViewHolder;->getImage()Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    move-result-object v2

    .line 38
    .local v2, "imageView":Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
    new-instance v3, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoAdapter$1;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoAdapter$1;-><init>(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoAdapter;Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;)V

    const v4, 0x7f02037b

    invoke-virtual {v2, v1, v3, v4}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->loadImage(Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;I)V

    .line 56
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;->getMvTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoViewHolder;->getArtist()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;->getArtistName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailMusicVideo;->isExplicit()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoViewHolder;->getExplicit()Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoViewHolder;->getExplicit()Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoAdapter;->onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoViewHolder;
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "type"    # I

    .prologue
    .line 25
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoAdapter;->createMusicVideoViewHolder(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailMusicVideoViewHolder;

    move-result-object v0

    return-object v0
.end method
