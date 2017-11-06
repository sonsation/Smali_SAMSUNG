.class public Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreArtistsViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MilkSearchStoreArtistsViewHolder.java"


# instance fields
.field private artistName:Landroid/widget/TextView;

.field private imageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    const v1, 0x7f0201da

    .line 32
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 33
    const v0, 0x7f120407

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreArtistsViewHolder;->imageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreArtistsViewHolder;->imageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setShowImageOnError(I)V

    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreArtistsViewHolder;->imageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setShowImageOnLoading(I)V

    .line 36
    const v0, 0x7f120411

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreArtistsViewHolder;->artistName:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f120412

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreArtistsViewHolder;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const v2, 0x7f040186

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 25
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f12046a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 26
    .local v0, "stub":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 28
    new-instance v2, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreArtistsViewHolder;

    invoke-direct {v2, v1}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreArtistsViewHolder;-><init>(Landroid/view/View;)V

    return-object v2
.end method


# virtual methods
.method public getArtistName()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreArtistsViewHolder;->artistName:Landroid/widget/TextView;

    return-object v0
.end method

.method public getImageView()Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreArtistsViewHolder;->imageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    return-object v0
.end method
