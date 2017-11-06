.class public Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AlbumViewHolder.java"


# instance fields
.field private mAlbumImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

.field private mAlbumLayout:Landroid/view/View;

.field private mArtist:Landroid/widget/TextView;

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mPlayButton:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 27
    const v0, 0x7f1203ec

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;->mContainer:Landroid/widget/RelativeLayout;

    .line 28
    const v0, 0x7f1203ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;->mAlbumImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    .line 29
    const v0, 0x7f1203cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;->mPlayButton:Landroid/view/View;

    .line 30
    const v0, 0x7f1203cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;->mTitle:Landroid/widget/TextView;

    .line 31
    const v0, 0x7f1203cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;->mArtist:Landroid/widget/TextView;

    .line 32
    const v0, 0x7f1203c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;->mAlbumLayout:Landroid/view/View;

    .line 33
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const v2, 0x7f04014f

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 37
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;-><init>(Landroid/view/View;)V

    .line 38
    .local v0, "holder":Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;
    return-object v0
.end method


# virtual methods
.method public getAlbumImage()Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;->mAlbumImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    return-object v0
.end method

.method public getAlbumLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;->mAlbumLayout:Landroid/view/View;

    return-object v0
.end method

.method public getArtist()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;->mArtist:Landroid/widget/TextView;

    return-object v0
.end method

.method public getContainer()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;->mContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getPlayButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;->mPlayButton:Landroid/view/View;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumViewHolder;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method
