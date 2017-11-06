.class public Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderViewHolder;
.super Lcom/samsung/android/app/music/milk/store/widget/EditableViewHolder;
.source "MusicCategoryGenreReorderViewHolder.java"


# instance fields
.field private mGenreTitle:Landroid/widget/TextView;

.field private mImageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

.field private mReorderBtn:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 19
    const/4 v0, 0x0

    const v1, 0x7f1202dc

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/EditableViewHolder;-><init>(Landroid/view/View;II)V

    .line 21
    const v0, 0x7f1202da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderViewHolder;->mImageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    .line 22
    const v0, 0x7f1202dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderViewHolder;->mGenreTitle:Landroid/widget/TextView;

    .line 23
    const v0, 0x7f1202db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderViewHolder;->mReorderBtn:Landroid/widget/FrameLayout;

    .line 24
    return-void
.end method


# virtual methods
.method public getGenreTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderViewHolder;->mGenreTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getImageView()Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderViewHolder;->mImageView:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    return-object v0
.end method

.method public getReorderBtn()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreReorderViewHolder;->mReorderBtn:Landroid/widget/FrameLayout;

    return-object v0
.end method
