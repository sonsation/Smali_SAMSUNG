.class Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$4;
.super Ljava/lang/Object;
.source "AppsDownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;->onDownloadFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$4;->this$1:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$4;->this$1:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;->this$0:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->access$600(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;)V

    .line 110
    return-void
.end method
