.class public Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ArtistDetailRelatedArtistViewHolder.java"


# instance fields
.field private mArtist:Landroid/widget/TextView;

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mDivider:Landroid/view/View;

.field private mImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 23
    const v0, 0x7f1203ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistViewHolder;->mContainer:Landroid/widget/RelativeLayout;

    .line 24
    const v0, 0x7f1203d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistViewHolder;->mImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    .line 25
    const v0, 0x7f1203cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistViewHolder;->mArtist:Landroid/widget/TextView;

    .line 26
    const v0, 0x7f12036f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistViewHolder;->mDivider:Landroid/view/View;

    .line 27
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistViewHolder;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const v2, 0x7f040143

    const/4 v3, 0x0

    .line 31
    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 32
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistViewHolder;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistViewHolder;-><init>(Landroid/view/View;)V

    .line 33
    .local v0, "holder":Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistViewHolder;
    return-object v0
.end method


# virtual methods
.method public getArtist()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistViewHolder;->mArtist:Landroid/widget/TextView;

    return-object v0
.end method

.method public getContainer()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistViewHolder;->mContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getDivider()Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistViewHolder;->mDivider:Landroid/view/View;

    return-object v0
.end method

.method public getImage()Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistViewHolder;->mImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    return-object v0
.end method
