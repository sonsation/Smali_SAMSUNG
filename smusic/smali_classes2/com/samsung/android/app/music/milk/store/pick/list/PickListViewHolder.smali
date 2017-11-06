.class public Lcom/samsung/android/app/music/milk/store/pick/list/PickListViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PickListViewHolder.java"


# instance fields
.field private mPickDescription:Landroid/widget/TextView;

.field private mPickImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

.field private mPickTitle:Landroid/widget/TextView;

.field private mPickView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 23
    const v0, 0x7f12044c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListViewHolder;->mPickView:Landroid/view/View;

    .line 24
    const v0, 0x7f12044d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListViewHolder;->mPickImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    .line 25
    const v0, 0x7f12044e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListViewHolder;->mPickTitle:Landroid/widget/TextView;

    .line 26
    const v0, 0x7f12044f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListViewHolder;->mPickDescription:Landroid/widget/TextView;

    .line 27
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/pick/list/PickListViewHolder;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const v2, 0x7f04017e

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 31
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListViewHolder;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/pick/list/PickListViewHolder;-><init>(Landroid/view/View;)V

    .line 32
    .local v0, "holder":Lcom/samsung/android/app/music/milk/store/pick/list/PickListViewHolder;
    return-object v0
.end method


# virtual methods
.method public getPickDescription()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListViewHolder;->mPickDescription:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPickImage()Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListViewHolder;->mPickImage:Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    return-object v0
.end method

.method public getPickTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListViewHolder;->mPickTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPickView()Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/list/PickListViewHolder;->mPickView:Landroid/view/View;

    return-object v0
.end method
