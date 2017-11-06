.class Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$2;
.super Ljava/lang/Object;
.source "AppsDownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;->onInstallFailed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;

.field final synthetic val$errorCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$2;->this$1:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$2;->val$errorCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$2;->this$1:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;->this$0:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3$2;->val$errorCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->access$400(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;Ljava/lang/String;)V

    .line 88
    return-void
.end method
