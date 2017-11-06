.class Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$ArtistViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ArtistSelectPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArtistViewHolder"
.end annotation


# instance fields
.field artistTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 138
    const v0, 0x7f120130

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$ArtistViewHolder;->artistTextView:Landroid/widget/TextView;

    .line 139
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$ArtistViewHolder;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    const v1, 0x7f0400d6

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 143
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$ArtistViewHolder;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/milk/store/popup/ArtistSelectPopup$ArtistViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
