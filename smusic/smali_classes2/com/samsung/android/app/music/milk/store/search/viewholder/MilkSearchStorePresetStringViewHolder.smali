.class public Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MilkSearchStorePresetStringViewHolder.java"


# instance fields
.field private blank:Landroid/view/View;

.field private deleteRecordImg:Landroid/widget/ImageView;

.field private divider:Landroid/view/View;

.field private string:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 29
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 30
    const v1, 0x7f120473

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;->string:Landroid/widget/TextView;

    .line 31
    const v1, 0x7f120472

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;->deleteRecordImg:Landroid/widget/ImageView;

    .line 36
    const v0, 0x7f020219

    .line 38
    .local v0, "deleteImageResId":I
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;->deleteRecordImg:Landroid/widget/ImageView;

    const v2, 0x3f333333    # 0.7f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 39
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;->deleteRecordImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;->deleteRecordImg:Landroid/widget/ImageView;

    const v2, 0x7f0a033c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 41
    const v1, 0x7f12036f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;->divider:Landroid/view/View;

    .line 42
    const v1, 0x7f120474

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;->blank:Landroid/view/View;

    .line 43
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const v2, 0x7f04018b

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 24
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 25
    .local v0, "holder":Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;
    return-object v0
.end method


# virtual methods
.method public getBlank()Landroid/view/View;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;->blank:Landroid/view/View;

    return-object v0
.end method

.method public getDeleteRecordImg()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;->deleteRecordImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getDivider()Landroid/view/View;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;->divider:Landroid/view/View;

    return-object v0
.end method

.method public getString()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStorePresetStringViewHolder;->string:Landroid/widget/TextView;

    return-object v0
.end method
