.class public Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;
.source "MusicCategoryDetailAlbumsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter",
        "<",
        "Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;",
        "Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CategoryDetailAlbumsAdapter"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;>;"
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter;->setHasStableIds(Z)V

    .line 38
    return-void
.end method


# virtual methods
.method protected createAlbumViewHolder(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;->create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter;->getItem(I)Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter;->getItemPosition(I)I

    move-result v1

    .line 128
    .local v1, "realPosition":I
    if-ltz v1, :cond_0

    .line 129
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter;->getItem(I)Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;

    move-result-object v0

    .line 130
    .local v0, "album":Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->hashCode()I

    move-result v2

    int-to-long v2, v2

    .line 132
    .end local v0    # "album":Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;
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
    .line 100
    return p1
.end method

.method public isClickable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter;->onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;I)V

    return-void
.end method

.method public onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;I)V
    .locals 7
    .param p1, "viewHolder"    # Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 47
    instance-of v4, p1, Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;

    if-eqz v4, :cond_0

    .line 48
    move-object v1, p1

    .line 49
    .local v1, "holder":Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter;->getItemPosition(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter;->getItem(I)Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;

    move-result-object v0

    .line 51
    .local v0, "album":Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "imageUrl":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;->getAlbumImage()Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    move-result-object v3

    .line 54
    .local v3, "imageView":Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter$1;

    invoke-direct {v5, p0, v3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter$1;-><init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter;Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;)V

    const v6, 0x7f0200d9

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->loadImage(Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;I)V

    .line 72
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->getAlbumTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;->getArtist()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->getDisplayArtistsName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;->getContainer()Landroid/widget/RelativeLayout;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter$2;

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter$2;-><init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter;Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;->getPlayButton()Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter$3;

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter$3;-><init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter;Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    .end local v0    # "album":Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;
    .end local v1    # "holder":Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;
    .end local v2    # "imageUrl":Ljava/lang/String;
    .end local v3    # "imageView":Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter;->onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter;->createAlbumViewHolder(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;

    move-result-object v0

    return-object v0
.end method

.method protected onItemClicked(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 105
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter;->getItemPosition(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter;->getItem(I)Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;

    move-result-object v0

    .line 106
    .local v0, "album":Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->ALBUM:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 107
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;)Z

    .line 108
    return-void
.end method

.method public playStoreAlbums(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "albumId"    # Ljava/lang/String;

    .prologue
    .line 136
    const-string v0, "CategoryDetailAlbumsAdapter"

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

    .line 137
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter$4;-><init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsAdapter;Landroid/content/Context;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getAlbumTracks(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;I)I

    .line 161
    return-void
.end method
