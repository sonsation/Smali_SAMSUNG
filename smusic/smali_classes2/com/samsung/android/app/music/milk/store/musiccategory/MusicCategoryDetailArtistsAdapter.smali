.class public Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;
.source "MusicCategoryDetailArtistsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter",
        "<",
        "Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;",
        "Lcom/samsung/android/app/music/milk/store/artist/ArtistViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MusicCategoryDetailArtistsAdapter"


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
            "Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;>;"
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;->setHasStableIds(Z)V

    .line 32
    return-void
.end method


# virtual methods
.method protected createArtistViewHolder(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/artist/ArtistViewHolder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistViewHolder;->create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/artist/ArtistViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;->getItem(I)Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;->getItemPosition(I)I

    move-result v1

    .line 104
    .local v1, "realPosition":I
    if-ltz v1, :cond_0

    .line 105
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;->getItem(I)Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;

    move-result-object v0

    .line 106
    .local v0, "artist":Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;->hashCode()I

    move-result v2

    int-to-long v2, v2

    .line 110
    .end local v0    # "artist":Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;
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
    .line 74
    return p1
.end method

.method public isClickable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lcom/samsung/android/app/music/milk/store/artist/ArtistViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;->onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/artist/ArtistViewHolder;I)V

    return-void
.end method

.method public onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/artist/ArtistViewHolder;I)V
    .locals 5
    .param p1, "viewHolder"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 41
    instance-of v3, p1, Lcom/samsung/android/app/music/milk/store/artist/ArtistViewHolder;

    if-eqz v3, :cond_0

    .line 42
    move-object v1, p1

    .line 43
    .local v1, "holder":Lcom/samsung/android/app/music/milk/store/artist/ArtistViewHolder;
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;->getItemPosition(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;->getItem(I)Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;

    move-result-object v0

    .line 45
    .local v0, "artist":Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "imageUrl":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistViewHolder;->getArtistImage()Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->loadImage(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;->getArtistName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistViewHolder;->getContainer()Landroid/widget/RelativeLayout;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter$1;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter$1;-><init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistViewHolder;->getPlayButton()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter$2;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter$2;-><init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    .end local v0    # "artist":Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;
    .end local v1    # "holder":Lcom/samsung/android/app/music/milk/store/artist/ArtistViewHolder;
    .end local v2    # "imageUrl":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;->onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/artist/ArtistViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/artist/ArtistViewHolder;
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;->createArtistViewHolder(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/artist/ArtistViewHolder;

    move-result-object v0

    return-object v0
.end method

.method protected onItemClicked(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 79
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;->getItemPosition(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;->getItem(I)Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;

    move-result-object v0

    .line 80
    .local v0, "album":Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->ARTIST:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 82
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;->getArtistId()Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;)Z

    .line 84
    :cond_0
    return-void
.end method

.method public playStoreArtistTracks(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "artistId"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter$3;-><init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistsAdapter;Landroid/content/Context;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getArtistTracks(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;ILjava/lang/String;)I

    .line 144
    return-void
.end method
