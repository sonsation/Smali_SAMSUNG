.class public Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAutoKeywordAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;
.source "MilkSearchStoreAutoKeywordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter",
        "<",
        "Ljava/lang/String;",
        "Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAutocompleteViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mKeyword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 33
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAutoKeywordAdapter;->mKeyword:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public clear(Z)V
    .locals 0
    .param p1, "notify"    # Z

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->clear(Z)V

    .line 75
    return-void
.end method

.method public isClickable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAutocompleteViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAutoKeywordAdapter;->onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAutocompleteViewHolder;I)V

    return-void
.end method

.method public onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAutocompleteViewHolder;I)V
    .locals 5
    .param p1, "viewHolder"    # Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAutocompleteViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 45
    instance-of v1, p1, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAutocompleteViewHolder;

    if-eqz v1, :cond_0

    .line 46
    move-object v0, p1

    .line 48
    .local v0, "holder":Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAutocompleteViewHolder;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAutocompleteViewHolder;->getString()Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    move-result-object v1

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAutoKeywordAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110044

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 48
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setTextColor(I)V

    .line 50
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAutocompleteViewHolder;->getString()Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAutoKeywordAdapter;->getPrimaryColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setMatchedTextColor(I)V

    .line 51
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAutocompleteViewHolder;->getString()Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAutoKeywordAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAutoKeywordAdapter;->mKeyword:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAutoKeywordAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p2, v1, :cond_1

    .line 54
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAutocompleteViewHolder;->getDivider()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .end local v0    # "holder":Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAutocompleteViewHolder;
    :cond_0
    :goto_0
    return-void

    .line 56
    .restart local v0    # "holder":Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAutocompleteViewHolder;
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAutocompleteViewHolder;->getDivider()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAutoKeywordAdapter;->onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAutocompleteViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAutocompleteViewHolder;
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "type"    # I

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAutocompleteViewHolder;->create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreAutocompleteViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAutoKeywordAdapter;->mKeyword:Ljava/lang/String;

    .line 79
    return-void
.end method
