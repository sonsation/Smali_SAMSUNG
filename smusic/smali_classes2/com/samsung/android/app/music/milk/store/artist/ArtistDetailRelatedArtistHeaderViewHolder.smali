.class public Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistHeaderViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ArtistDetailRelatedArtistHeaderViewHolder.java"


# instance fields
.field private mHeaderName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 15
    const v0, 0x7f1203d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistHeaderViewHolder;->mHeaderName:Landroid/widget/TextView;

    .line 16
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistHeaderViewHolder;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    const v2, 0x7f040141

    const/4 v3, 0x0

    .line 20
    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 22
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistHeaderViewHolder;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistHeaderViewHolder;-><init>(Landroid/view/View;)V

    .line 24
    .local v0, "holder":Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistHeaderViewHolder;
    return-object v0
.end method


# virtual methods
.method public getHeaderName()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailRelatedArtistHeaderViewHolder;->mHeaderName:Landroid/widget/TextView;

    return-object v0
.end method
