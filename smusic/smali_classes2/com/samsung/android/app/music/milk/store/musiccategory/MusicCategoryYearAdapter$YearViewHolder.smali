.class Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter$YearViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MusicCategoryYearAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "YearViewHolder"
.end annotation


# instance fields
.field private mContainer:Landroid/widget/FrameLayout;

.field private mImageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 142
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 144
    const v0, 0x7f120423

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter$YearViewHolder;->mContainer:Landroid/widget/FrameLayout;

    .line 145
    const v0, 0x7f1200b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter$YearViewHolder;->mImageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    .line 146
    const v0, 0x7f1200b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter$YearViewHolder;->mTitle:Landroid/widget/TextView;

    .line 147
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter$YearViewHolder;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    new-instance v0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter$YearViewHolder;

    const v1, 0x7f040163

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter$YearViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public getContainer()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter$YearViewHolder;->mContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getImageView()Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter$YearViewHolder;->mImageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter$YearViewHolder;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method
