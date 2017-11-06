.class Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$DescriptionViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MusicCategoryGenreAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DescriptionViewHolder"
.end annotation


# instance fields
.field private descTextView:Landroid/widget/TextView;

.field private doneButton:Landroid/view/View;

.field private editButton:Landroid/view/View;

.field private reorderButton:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 266
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 267
    const v0, 0x7f120421

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$DescriptionViewHolder;->editButton:Landroid/view/View;

    .line 268
    const v0, 0x7f12041f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$DescriptionViewHolder;->doneButton:Landroid/view/View;

    .line 269
    const v0, 0x7f12041d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$DescriptionViewHolder;->reorderButton:Landroid/view/View;

    .line 270
    const v0, 0x7f12041c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$DescriptionViewHolder;->descTextView:Landroid/widget/TextView;

    .line 271
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$DescriptionViewHolder;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 273
    new-instance v0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$DescriptionViewHolder;

    const v1, 0x7f040162

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$DescriptionViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method getDescTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$DescriptionViewHolder;->descTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method getDoneButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$DescriptionViewHolder;->doneButton:Landroid/view/View;

    return-object v0
.end method

.method getEditButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$DescriptionViewHolder;->editButton:Landroid/view/View;

    return-object v0
.end method

.method getReorderButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreAdapter$DescriptionViewHolder;->reorderButton:Landroid/view/View;

    return-object v0
.end method
