.class Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$ArtistListAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;
.source "ArtistSelectPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArtistListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter",
        "<",
        "Lcom/samsung/android/app/music/common/model/artist/Artist;",
        "Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$ArtistViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 108
    return-void
.end method


# virtual methods
.method public isClickable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 104
    check-cast p1, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$ArtistViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$ArtistListAdapter;->onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$ArtistViewHolder;I)V

    return-void
.end method

.method public onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$ArtistViewHolder;I)V
    .locals 3
    .param p1, "viewHolder"    # Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$ArtistViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 117
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$ArtistListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/artist/Artist;

    .line 118
    .local v0, "artist":Lcom/samsung/android/app/music/common/model/artist/Artist;
    iget-object v1, p1, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$ArtistViewHolder;->artistTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/artist/Artist;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    return-void
.end method

.method public bridge synthetic onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$ArtistListAdapter;->onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$ArtistViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateItemViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$ArtistViewHolder;
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "type"    # I

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$ArtistViewHolder;->create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$ArtistViewHolder;

    move-result-object v0

    return-object v0
.end method
