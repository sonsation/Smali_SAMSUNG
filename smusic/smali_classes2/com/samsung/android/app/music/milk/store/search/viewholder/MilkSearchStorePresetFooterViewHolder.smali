.class public Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetFooterViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MilkSearchStorePresetFooterViewHolder.java"


# instance fields
.field private mDeleteRecord:Landroid/widget/TextView;

.field private mDeleteRecordContainer:Landroid/view/View;

.field private mNoRecord:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 31
    const v0, 0x7f12046d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetFooterViewHolder;->mNoRecord:Landroid/widget/TextView;

    .line 32
    const v0, 0x7f12046f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetFooterViewHolder;->mDeleteRecord:Landroid/widget/TextView;

    .line 33
    const v0, 0x7f12046e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetFooterViewHolder;->mDeleteRecordContainer:Landroid/view/View;

    .line 34
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetFooterViewHolder;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const v2, 0x7f040188

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 24
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetFooterViewHolder;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetFooterViewHolder;-><init>(Landroid/view/View;)V

    .line 26
    .local v0, "holder":Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetFooterViewHolder;
    return-object v0
.end method


# virtual methods
.method public getDeleteRecord()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetFooterViewHolder;->mDeleteRecord:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDeleteRecordContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetFooterViewHolder;->mDeleteRecordContainer:Landroid/view/View;

    return-object v0
.end method

.method public getNoRecord()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetFooterViewHolder;->mNoRecord:Landroid/widget/TextView;

    return-object v0
.end method
