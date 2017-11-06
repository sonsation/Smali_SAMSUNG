.class public Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;
.source "DownloadQueueAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadQueueViewHolder"
.end annotation


# instance fields
.field public cancel:Landroid/view/View;

.field public downloadedByte:Landroid/widget/TextView;

.field public fileExtension:Landroid/widget/TextView;

.field public pause:Landroid/widget/ImageView;

.field public progressBar:Landroid/widget/ProgressBar;

.field public progressText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Landroid/view/View;I)V
    .locals 2
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
    .line 164
    .local p1, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<*>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Landroid/view/View;I)V

    .line 165
    const v0, 0x7f120151

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;->fileExtension:Landroid/widget/TextView;

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;->fileExtension:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    const v0, 0x7f1202a7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;->progressText:Landroid/widget/TextView;

    .line 168
    const v0, 0x7f1202a8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;->downloadedByte:Landroid/widget/TextView;

    .line 169
    const v0, 0x7f1202a5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;->progressBar:Landroid/widget/ProgressBar;

    .line 171
    const v0, 0x7f1202a3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;->cancel:Landroid/view/View;

    .line 172
    const v0, 0x7f1202a4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;->pause:Landroid/widget/ImageView;

    move-object v0, p1

    .line 174
    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->access$000(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    check-cast p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;

    .end local p1    # "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<*>;"
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;->initOnButtonClickListener(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;Landroid/view/View;)V

    .line 177
    :cond_0
    return-void
.end method


# virtual methods
.method protected initOnButtonClickListener(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;Landroid/view/View;)V
    .locals 2
    .param p1, "adapter"    # Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;->cancel:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;->pause:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder$2;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    return-void
.end method
