.class Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$GenreViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MusicCategoryGenreAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GenreViewHolder"
.end annotation


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCheckBoxContainer:Landroid/widget/RelativeLayout;

.field private mContainer:Landroid/widget/FrameLayout;

.field private mImageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 323
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 324
    const v0, 0x7f120423

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$GenreViewHolder;->mContainer:Landroid/widget/FrameLayout;

    .line 325
    const v0, 0x7f1200b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$GenreViewHolder;->mImageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    .line 326
    const v0, 0x7f1200b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$GenreViewHolder;->mTitle:Landroid/widget/TextView;

    .line 327
    const v0, 0x7f12037a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$GenreViewHolder;->mCheckBoxContainer:Landroid/widget/RelativeLayout;

    .line 328
    const v0, 0x7f1200c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$GenreViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 329
    return-void
.end method

.method static create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$GenreViewHolder;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 352
    new-instance v0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$GenreViewHolder;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040163

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 353
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$GenreViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$GenreViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getCheckBoxContainer()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$GenreViewHolder;->mCheckBoxContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getContainer()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$GenreViewHolder;->mContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getImageView()Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$GenreViewHolder;->mImageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$GenreViewHolder;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method
