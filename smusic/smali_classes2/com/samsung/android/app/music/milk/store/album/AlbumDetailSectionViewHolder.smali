.class public Lcom/samsung/android/app/music/milk/store/album/AlbumDetailSectionViewHolder;
.super Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;
.source "AlbumDetailSectionViewHolder.java"


# instance fields
.field private discName:Landroid/widget/TextView;

.field private divider:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;-><init>(Landroid/view/View;)V

    .line 19
    const v0, 0x7f1203b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailSectionViewHolder;->discName:Landroid/widget/TextView;

    .line 20
    const v0, 0x7f120248

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailSectionViewHolder;->divider:Landroid/view/View;

    .line 21
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/milk/store/album/AlbumDetailSectionViewHolder;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 24
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040138

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 25
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailSectionViewHolder;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailSectionViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method


# virtual methods
.method public getDiscName()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailSectionViewHolder;->discName:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDivider()Landroid/view/View;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailSectionViewHolder;->divider:Landroid/view/View;

    return-object v0
.end method
