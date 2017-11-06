.class public Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAutocompleteViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MilkSearchStoreAutocompleteViewHolder.java"


# instance fields
.field private mDivider:Landroid/view/View;

.field private mString:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 23
    const v0, 0x7f120467

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAutocompleteViewHolder;->mString:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    .line 24
    const v0, 0x7f12036f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAutocompleteViewHolder;->mDivider:Landroid/view/View;

    .line 25
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAutocompleteViewHolder;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const v2, 0x7f040184

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 29
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAutocompleteViewHolder;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAutocompleteViewHolder;-><init>(Landroid/view/View;)V

    .line 31
    .local v0, "holder":Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAutocompleteViewHolder;
    return-object v0
.end method


# virtual methods
.method public getDivider()Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAutocompleteViewHolder;->mDivider:Landroid/view/View;

    return-object v0
.end method

.method public getString()Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAutocompleteViewHolder;->mString:Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    return-object v0
.end method
