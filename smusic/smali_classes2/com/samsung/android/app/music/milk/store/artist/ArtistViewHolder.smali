.class public Lcom/samsung/android/app/music/milk/store/artist/ArtistViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ArtistViewHolder.java"


# instance fields
.field private mArtistImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

.field private mArtistLayout:Landroid/view/View;

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mPlayButton:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 25
    const v0, 0x7f1203ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistViewHolder;->mContainer:Landroid/widget/RelativeLayout;

    .line 26
    const v0, 0x7f1203ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistViewHolder;->mArtistImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    .line 27
    const v0, 0x7f1203f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistViewHolder;->mPlayButton:Landroid/view/View;

    .line 28
    const v0, 0x7f1203f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistViewHolder;->mTitle:Landroid/widget/TextView;

    .line 29
    const v0, 0x7f1203ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistViewHolder;->mArtistLayout:Landroid/view/View;

    .line 30
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/artist/ArtistViewHolder;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const v2, 0x7f040150

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 34
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/samsung/android/app/music/milk/store/artist/ArtistViewHolder;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistViewHolder;-><init>(Landroid/view/View;)V

    .line 35
    .local v0, "holder":Lcom/samsung/android/app/music/milk/store/artist/ArtistViewHolder;
    return-object v0
.end method


# virtual methods
.method public getArtistImage()Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistViewHolder;->mArtistImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    return-object v0
.end method

.method public getArtistLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistViewHolder;->mArtistLayout:Landroid/view/View;

    return-object v0
.end method

.method public getContainer()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistViewHolder;->mContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getPlayButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistViewHolder;->mPlayButton:Landroid/view/View;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistViewHolder;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method
