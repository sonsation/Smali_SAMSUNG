.class Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$SubTitleViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MusicCategoryGenreAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubTitleViewHolder"
.end annotation


# instance fields
.field private mTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 297
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 298
    const v0, 0x7f1200b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$SubTitleViewHolder;->mTitle:Landroid/widget/TextView;

    .line 299
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$SubTitleViewHolder;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 306
    new-instance v0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$SubTitleViewHolder;

    const v1, 0x7f040164

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$SubTitleViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$SubTitleViewHolder;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method