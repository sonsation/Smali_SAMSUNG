.class Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder$1;
.super Ljava/lang/Object;
.source "DownloadQueueAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;->initOnButtonClickListener(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;

.field final synthetic val$adapter:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder$1;->val$adapter:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder$1;->val$adapter:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->access$000(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;->cancel:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;

    .line 186
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;->getAdapterPosition()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$DownloadQueueViewHolder;->getItemId()J

    move-result-wide v4

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;IJ)V

    .line 187
    return-void
.end method
