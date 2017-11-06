.class public Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MusicVideoContentViewHolder.java"


# instance fields
.field private mArtist:Landroid/widget/TextView;

.field private mExplicit:Landroid/widget/TextView;

.field private mImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

.field private mItemContainer:Landroid/widget/LinearLayout;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 27
    const v0, 0x7f120423

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentViewHolder;->mItemContainer:Landroid/widget/LinearLayout;

    .line 28
    const v0, 0x7f1200b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentViewHolder;->mImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    .line 29
    const v0, 0x7f1200b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentViewHolder;->mTitle:Landroid/widget/TextView;

    .line 30
    const v0, 0x7f120129

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentViewHolder;->mArtist:Landroid/widget/TextView;

    .line 31
    const v0, 0x7f1203f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentViewHolder;->mExplicit:Landroid/widget/TextView;

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentViewHolder;->mImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setDimensRatio(F)V

    .line 34
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentViewHolder;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const v1, 0x7f04016e

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentViewHolder;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method


# virtual methods
.method public getArtist()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentViewHolder;->mArtist:Landroid/widget/TextView;

    return-object v0
.end method

.method public getContainer()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentViewHolder;->mItemContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getExplicit()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentViewHolder;->mExplicit:Landroid/widget/TextView;

    return-object v0
.end method

.method public getImage()Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentViewHolder;->mImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/view/MusicVideoContentViewHolder;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method
