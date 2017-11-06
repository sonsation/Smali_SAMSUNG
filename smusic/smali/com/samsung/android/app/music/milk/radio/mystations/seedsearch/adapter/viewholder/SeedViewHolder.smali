.class public Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SeedViewHolder.java"


# instance fields
.field private isArtistSeed:Z

.field private mDeleteSeed:Landroid/widget/ImageView;

.field private mDivider:Landroid/view/View;

.field private mItemView:Landroid/view/View;

.field private mSeedCoverArtView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

.field private mSeedExplict:Landroid/widget/TextView;

.field private mSeedName:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

.field private mSeedSubName:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 37
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->mItemView:Landroid/view/View;

    .line 38
    const v0, 0x7f120356

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->mSeedName:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    .line 39
    const v0, 0x7f120355

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->mSeedExplict:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f120357

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->mSeedSubName:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    .line 41
    const v0, 0x7f120358

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->mDeleteSeed:Landroid/widget/ImageView;

    .line 42
    const v0, 0x7f120353

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->mSeedCoverArtView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    .line 43
    const v0, 0x7f120359

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->mDivider:Landroid/view/View;

    .line 44
    return-void
.end method

.method private setdividerMargin(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 121
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->mDivider:Landroid/view/View;

    .line 122
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 123
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    if-nez p2, :cond_0

    .line 124
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 128
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->mDivider:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    return-void

    .line 126
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0
.end method


# virtual methods
.method public disableSeedCoverArt(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->mSeedCoverArtView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setVisibility(I)V

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->setdividerMargin(Landroid/content/Context;I)V

    .line 98
    return-void
.end method

.method public registerDeleteAction(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "clickLinstener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->mDeleteSeed:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method

.method public registerItemView(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "clickLinstener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void
.end method

.method public registerSeedNameAction(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "clickLinstener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->mSeedName:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-void
.end method

.method public setDeleteActionEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 113
    if-eqz p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->mDeleteSeed:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->mDeleteSeed:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIsArtistSeed(Z)V
    .locals 0
    .param p1, "isArtst"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->isArtistSeed:Z

    .line 75
    return-void
.end method

.method public setIsExplicitSeed(Z)V
    .locals 2
    .param p1, "isExplicit"    # Z

    .prologue
    .line 78
    if-eqz p1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->mSeedExplict:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->mSeedExplict:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSeedCoverArt(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->mSeedCoverArtView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->mSeedCoverArtView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    const v1, 0x7f0201da

    invoke-virtual {v0, p2, v1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->loadImage(Ljava/lang/String;I)V

    .line 90
    const v0, 0x7f0d0392

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->setdividerMargin(Landroid/content/Context;I)V

    .line 92
    return-void
.end method

.method public setSeedText(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "seedName"    # Ljava/lang/String;
    .param p2, "shouldmatchText"    # Ljava/lang/String;
    .param p3, "color"    # I

    .prologue
    .line 51
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->mSeedName:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    invoke-virtual {v0, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setMatchedTextColor(I)V

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->mSeedName:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->mSeedName:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setSeeddListPositon(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->mDeleteSeed:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public setSubSeedText(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "seedSubName"    # Ljava/lang/String;
    .param p2, "shouldmatchText"    # Ljava/lang/String;
    .param p3, "color"    # I

    .prologue
    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->mSeedSubName:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setVisibility(I)V

    .line 71
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->mSeedSubName:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setVisibility(I)V

    .line 64
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->mSeedSubName:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    invoke-virtual {v0, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setMatchedTextColor(I)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->mSeedSubName:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;->mSeedSubName:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
