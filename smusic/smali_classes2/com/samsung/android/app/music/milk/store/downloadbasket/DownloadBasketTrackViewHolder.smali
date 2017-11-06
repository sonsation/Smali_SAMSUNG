.class public Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketTrackViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;
.source "DownloadBasketTrackViewHolder.java"


# instance fields
.field public fileExtension:Landroid/widget/TextView;

.field public price:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Landroid/view/View;I)V
    .locals 3
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter",
            "<*>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<*>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Landroid/view/View;I)V

    .line 17
    const v1, 0x7f12014f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 18
    .local v0, "priceStub":Landroid/view/View;
    instance-of v1, v0, Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    .line 19
    check-cast v0, Landroid/view/ViewStub;

    .end local v0    # "priceStub":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketTrackViewHolder;->price:Landroid/widget/TextView;

    .line 22
    :cond_0
    const v1, 0x7f120151

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketTrackViewHolder;->fileExtension:Landroid/widget/TextView;

    .line 23
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketTrackViewHolder;->fileExtension:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    return-void
.end method
