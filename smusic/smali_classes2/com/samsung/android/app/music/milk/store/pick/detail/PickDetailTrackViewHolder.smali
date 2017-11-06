.class public Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;
.super Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;
.source "PickDetailTrackViewHolder.java"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCheckBoxContainer:Landroid/widget/RelativeLayout;

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mExplicit:Landroid/widget/TextView;

.field private mMore:Landroid/widget/ImageView;

.field private mSubTitle:Landroid/widget/TextView;

.field private mThumbnail:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectViewHolder;-><init>(Landroid/view/View;)V

    .line 34
    const v0, 0x7f1203d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;->mContainer:Landroid/widget/RelativeLayout;

    .line 35
    const v0, 0x7f1203d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;->mThumbnail:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    .line 36
    const v0, 0x7f1203db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;->mExplicit:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f1203dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;->mTitle:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f1203dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;->mSubTitle:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f1203da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;->mMore:Landroid/widget/ImageView;

    .line 41
    const v0, 0x7f12037a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;->mCheckBoxContainer:Landroid/widget/RelativeLayout;

    .line 42
    const v0, 0x7f1200c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 43
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const v1, 0x7f040144

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getCheckBoxContainer()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;->mCheckBoxContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getContainer()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;->mContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getExplicit()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;->mExplicit:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMore()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;->mMore:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSubTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;->mSubTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getThumbnail()Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;->mThumbnail:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailTrackViewHolder;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method
