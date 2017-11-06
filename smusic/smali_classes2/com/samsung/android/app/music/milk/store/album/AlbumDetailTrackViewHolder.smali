.class public Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;
.super Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;
.source "AlbumDetailTrackViewHolder.java"


# instance fields
.field private mArtist:Landroid/widget/TextView;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mExplicit:Landroid/widget/TextView;

.field private mMoreButton:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleIcon:Landroid/widget/RelativeLayout;

.field private mTrackContainer:Landroid/view/View;

.field private mTrackNumber:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;-><init>(Landroid/view/View;)V

    .line 33
    const v0, 0x7f1203b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->mTrackContainer:Landroid/view/View;

    .line 34
    const v0, 0x7f120050

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->mTrackNumber:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f1203b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->mExplicit:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f12024a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->mTitleIcon:Landroid/widget/RelativeLayout;

    .line 37
    const v0, 0x7f120130

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->mTitle:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f120131

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->mArtist:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f120158

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->mMoreButton:Landroid/view/View;

    .line 40
    const v0, 0x7f1200c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 41
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 44
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040137

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method


# virtual methods
.method public getArtist()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->mArtist:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getCheckBoxContainer()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExplicit()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->mExplicit:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMoreButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->mMoreButton:Landroid/view/View;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleIcon()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->mTitleIcon:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getTrackContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->mTrackContainer:Landroid/view/View;

    return-object v0
.end method

.method public getTrackNumber()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailTrackViewHolder;->mTrackNumber:Landroid/widget/TextView;

    return-object v0
.end method
