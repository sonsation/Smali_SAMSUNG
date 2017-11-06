.class public Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAlbumsViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MilkSearchStoreAlbumsViewHolder.java"


# instance fields
.field private albumTitle:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

.field private artistName:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

.field private imageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

.field private playImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 41
    const v0, 0x7f120406

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAlbumsViewHolder;->imageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    .line 42
    const v0, 0x7f120411

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAlbumsViewHolder;->albumTitle:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    .line 43
    const v0, 0x7f120414

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAlbumsViewHolder;->artistName:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    .line 44
    const v0, 0x7f120207

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAlbumsViewHolder;->playImage:Landroid/widget/ImageView;

    .line 45
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAlbumsViewHolder;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const v2, 0x7f040186

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 31
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f1203f9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 32
    .local v0, "stub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 33
    const v2, 0x7f1203fe

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "stub":Landroid/view/ViewStub;
    check-cast v0, Landroid/view/ViewStub;

    .line 34
    .restart local v0    # "stub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 36
    new-instance v2, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAlbumsViewHolder;

    invoke-direct {v2, v1}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAlbumsViewHolder;-><init>(Landroid/view/View;)V

    return-object v2
.end method


# virtual methods
.method public getAlbumTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAlbumsViewHolder;->albumTitle:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    return-object v0
.end method

.method public getArtistName()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAlbumsViewHolder;->artistName:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    return-object v0
.end method

.method public getImageView()Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAlbumsViewHolder;->imageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    return-object v0
.end method

.method public getPlayImage()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAlbumsViewHolder;->playImage:Landroid/widget/ImageView;

    return-object v0
.end method
