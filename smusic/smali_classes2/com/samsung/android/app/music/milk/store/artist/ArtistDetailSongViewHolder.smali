.class public Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;
.super Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;
.source "ArtistDetailSongViewHolder.java"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCheckBoxContainer:Landroid/widget/RelativeLayout;

.field private mExplicit:Landroid/widget/TextView;

.field private mMore:Landroid/widget/ImageView;

.field private mSongItemContainer:Landroid/widget/RelativeLayout;

.field private mSubTitle:Landroid/widget/TextView;

.field private mThumbnail:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;-><init>(Landroid/view/View;I)V

    .line 33
    const v0, 0x7f1203d7

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;->mSongItemContainer:Landroid/widget/RelativeLayout;

    .line 35
    const v0, 0x7f1203d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;->mThumbnail:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    .line 36
    const v0, 0x7f1203db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;->mExplicit:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f1203dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;->mTitle:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f1203dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;->mSubTitle:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f1203da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;->mMore:Landroid/widget/ImageView;

    .line 41
    const v0, 0x7f12037a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;->mCheckBoxContainer:Landroid/widget/RelativeLayout;

    .line 42
    const v0, 0x7f1200c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 43
    return-void
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getCheckBoxContainer()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;->mCheckBoxContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getExplicit()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;->mExplicit:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMore()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;->mMore:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSongItemContainer()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;->mSongItemContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getSubTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;->mSubTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getThumbnail()Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;->mThumbnail:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongViewHolder;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method
