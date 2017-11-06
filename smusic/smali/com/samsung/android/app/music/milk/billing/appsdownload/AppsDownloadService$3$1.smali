.class Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$1;
.super Ljava/lang/Object;
.source "AppsDownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;->onProgress(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;

.field final synthetic val$downloadedSize:J

.field final synthetic val$totalSize:J


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;JJ)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$1;->this$1:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;

    iput-wide p2, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$1;->val$downloadedSize:J

    iput-wide p4, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$1;->val$totalSize:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$1;->this$1:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;->this$0:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    iget-wide v2, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$1;->val$downloadedSize:J

    iget-wide v4, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$1;->val$totalSize:J

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->access$300(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;JJ)V

    .line 76
    return-void
.end method
