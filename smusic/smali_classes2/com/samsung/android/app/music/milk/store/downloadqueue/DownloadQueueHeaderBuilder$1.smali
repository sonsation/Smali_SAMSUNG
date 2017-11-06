.class Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder$1;
.super Ljava/lang/Object;
.source "DownloadQueueHeaderBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;->access$000(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;IJ)V

    .line 54
    return-void
.end method
