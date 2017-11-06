.class public Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreStationsViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MilkSearchStoreStationsViewHolder.java"


# instance fields
.field private stationTitle:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 26
    const v0, 0x7f120130

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreStationsViewHolder;->stationTitle:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    .line 27
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreStationsViewHolder;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const v1, 0x7f040191

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 21
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreStationsViewHolder;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreStationsViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method


# virtual methods
.method public getStationTitle()Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreStationsViewHolder;->stationTitle:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    return-object v0
.end method
