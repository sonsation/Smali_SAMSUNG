.class public Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;
.source "ArtistDetailArtistAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter",
        "<",
        "Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ArtistDetailArtistAdapter"

.field public static final TYPE_RELATED_ARTIST:I = 0x64

.field public static final TYPE_RELATED_ARTIST_HEADER:I = 0x1


# instance fields
.field private memberCount:I

.field private otherActCount:I

.field private similarCount:I


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
            "Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;>;"
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 31
    return-void
.end method

.method private getHeaderSize()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 143
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->memberCount:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->otherActCount:I

    if-eqz v1, :cond_2

    .line 144
    :cond_0
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->similarCount:I

    if-eqz v1, :cond_1

    .line 145
    const/4 v0, 0x2

    .line 154
    :cond_1
    :goto_0
    return v0

    .line 150
    :cond_2
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->similarCount:I

    if-nez v1, :cond_1

    .line 154
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getHeaderSize(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 163
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->memberCount:I

    if-eqz v2, :cond_2

    .line 164
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->memberCount:I

    add-int/lit8 v2, v2, 0x2

    if-ge p1, v2, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v0

    .line 166
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->memberCount:I

    add-int/lit8 v0, v0, 0x2

    if-lt p1, v0, :cond_3

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->memberCount:I

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->similarCount:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    if-gt p1, v0, :cond_3

    move v0, v1

    .line 167
    goto :goto_0

    .line 169
    :cond_2
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->otherActCount:I

    if-eqz v2, :cond_0

    .line 170
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->otherActCount:I

    add-int/lit8 v2, v2, 0x2

    if-lt p1, v2, :cond_0

    .line 172
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->otherActCount:I

    add-int/lit8 v0, v0, 0x2

    if-lt p1, v0, :cond_3

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->otherActCount:I

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->similarCount:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    if-gt p1, v0, :cond_3

    move v0, v1

    .line 174
    goto :goto_0

    .line 179
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected createListHeaderViewHolder(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistHeaderViewHolder;->create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistHeaderViewHolder;

    move-result-object v0

    return-object v0
.end method

.method protected createRelatedArtistViewHolder(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistViewHolder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistViewHolder;->create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->getItemCount()I

    move-result v0

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->getHeaderSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected getItemPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->getHeaderSize(I)I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 90
    if-nez p1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->memberCount:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->memberCount:I

    add-int/lit8 v1, v1, 0x1

    if-eq p1, v1, :cond_0

    .line 95
    :cond_2
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->otherActCount:I

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->otherActCount:I

    add-int/lit8 v1, v1, 0x1

    if-eq p1, v1, :cond_0

    .line 99
    :cond_3
    const/16 v0, 0x64

    goto :goto_0
.end method

.method public isClickable(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->getItemViewType(I)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 46
    instance-of v3, p1, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistHeaderViewHolder;

    if-eqz v3, :cond_3

    move-object v1, p1

    .line 47
    check-cast v1, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistHeaderViewHolder;

    .line 49
    .local v1, "holder":Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistHeaderViewHolder;
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->memberCount:I

    if-eqz v3, :cond_1

    if-nez p2, :cond_1

    .line 50
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistHeaderViewHolder;->getHeaderName()Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0a03ae

    .line 51
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 76
    .end local v1    # "holder":Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistHeaderViewHolder;
    :cond_0
    :goto_0
    return-void

    .line 52
    .restart local v1    # "holder":Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistHeaderViewHolder;
    :cond_1
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->otherActCount:I

    if-eqz v3, :cond_2

    if-nez p2, :cond_2

    .line 53
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistHeaderViewHolder;->getHeaderName()Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0a03af

    .line 54
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistHeaderViewHolder;->getHeaderName()Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0a03b0

    .line 57
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 59
    .end local v1    # "holder":Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistHeaderViewHolder;
    :cond_3
    instance-of v3, p1, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistViewHolder;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 60
    check-cast v1, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistViewHolder;

    .line 62
    .local v1, "holder":Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistViewHolder;
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->getItemPosition(I)I

    move-result v2

    .line 63
    .local v2, "itemPos":I
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;

    .line 65
    .local v0, "artist":Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistViewHolder;->getImage()Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->loadImage(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistViewHolder;->getArtist()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getArtistName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->getItemCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq p2, v3, :cond_4

    add-int/lit8 v3, p2, 0x1

    .line 69
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->getItemViewType(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 70
    :cond_4
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistViewHolder;->getDivider()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 72
    :cond_5
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistViewHolder;->getDivider()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "type"    # I

    .prologue
    .line 36
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 37
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->createListHeaderViewHolder(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 41
    .local v0, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :goto_0
    return-object v0

    .line 39
    .end local v0    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->createRelatedArtistViewHolder(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistViewHolder;

    move-result-object v0

    .restart local v0    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    goto :goto_0
.end method

.method public swapArray(Ljava/util/List;)V
    .locals 5
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
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;>;"
    const/4 v2, 0x0

    .line 112
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->swapArray(Ljava/util/List;)V

    .line 113
    iput v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->memberCount:I

    .line 114
    iput v2, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->similarCount:I

    .line 115
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;

    .line 116
    .local v0, "artist":Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getSection()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "section":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getSection()Ljava/lang/String;

    move-result-object v3

    const-string v4, "01"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 122
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->memberCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->memberCount:I

    .line 131
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getSection()Ljava/lang/String;

    move-result-object v3

    const-string v4, "03"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->similarCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->similarCount:I

    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;->getSection()Ljava/lang/String;

    move-result-object v3

    const-string v4, "02"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->memberCount:I

    if-eqz v3, :cond_3

    .line 126
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->memberCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->memberCount:I

    goto :goto_1

    .line 128
    :cond_3
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->otherActCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailArtistAdapter;->otherActCount:I

    goto :goto_1

    .line 135
    .end local v0    # "artist":Lcom/samsung/android/app/music/common/model/artist/ArtistDetailArtist;
    .end local v1    # "section":Ljava/lang/String;
    :cond_4
    return-void
.end method
