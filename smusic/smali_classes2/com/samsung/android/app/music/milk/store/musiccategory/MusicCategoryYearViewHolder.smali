.class public Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MusicCategoryYearViewHolder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicCategoryYearViewHolder"


# instance fields
.field private mContainer:Landroid/widget/FrameLayout;

.field private mImageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 24
    const v0, 0x7f1202de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearViewHolder;->mContainer:Landroid/widget/FrameLayout;

    .line 25
    const v0, 0x7f1202df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearViewHolder;->mImageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    .line 26
    const v0, 0x7f1202e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearViewHolder;->mTitle:Landroid/widget/TextView;

    .line 27
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearViewHolder;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const v2, 0x7f0400fa

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 31
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearViewHolder;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearViewHolder;-><init>(Landroid/view/View;)V

    .line 32
    .local v0, "holder":Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearViewHolder;
    return-object v0
.end method


# virtual methods
.method public getContainer()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearViewHolder;->mContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getImageView()Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearViewHolder;->mImageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearViewHolder;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method
