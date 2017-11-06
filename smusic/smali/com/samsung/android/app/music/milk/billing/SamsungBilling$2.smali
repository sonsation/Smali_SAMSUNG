.class Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2;
.super Ljava/lang/Object;
.source "SamsungBilling.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->startDownloadByPackageName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBilling;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/billing/SamsungBilling;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/billing/SamsungBilling;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindFailed()V
    .locals 2

    .prologue
    .line 341
    const-string v0, "SamsungBilling"

    const-string/jumbo v1, "startDownloadByPackageName onBindFailed"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBilling;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->access$100(Lcom/samsung/android/app/music/milk/billing/SamsungBilling;)Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;->removeCallbacks()V

    .line 345
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBilling;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->access$200(Lcom/samsung/android/app/music/milk/billing/SamsungBilling;)Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->dismiss()V

    .line 346
    return-void
.end method

.method public onDownloadCanceled()V
    .locals 2

    .prologue
    .line 332
    const-string v0, "SamsungBilling"

    const-string/jumbo v1, "startDownloadByPackageName onDownloadCanceled"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBilling;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->access$100(Lcom/samsung/android/app/music/milk/billing/SamsungBilling;)Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;->removeCallbacks()V

    .line 336
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBilling;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->access$200(Lcom/samsung/android/app/music/milk/billing/SamsungBilling;)Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->dismiss()V

    .line 337
    return-void
.end method

.method public onDownloadFailed()V
    .locals 2

    .prologue
    .line 323
    const-string v0, "SamsungBilling"

    const-string/jumbo v1, "startDownloadByPackageName onDownloadFailed"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBilling;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->access$100(Lcom/samsung/android/app/music/milk/billing/SamsungBilling;)Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;->removeCallbacks()V

    .line 327
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBilling;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->access$200(Lcom/samsung/android/app/music/milk/billing/SamsungBilling;)Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->dismiss()V

    .line 328
    return-void
.end method

.method public onDownloadSuccess()V
    .locals 4

    .prologue
    .line 310
    const-string v0, "SamsungBilling"

    const-string/jumbo v1, "startDownloadByPackageName onDownloadSuccess"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBilling;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->access$100(Lcom/samsung/android/app/music/milk/billing/SamsungBilling;)Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2$1;-><init>(Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2;)V

    const-wide/16 v2, 0x1b58

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 319
    return-void
.end method

.method public onInstallFailed(Ljava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInstallFailed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "err":Ljava/lang/String;
    const-string v1, "SamsungBilling"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startDownloadByPackageName onInstallFailed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBilling;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->access$100(Lcom/samsung/android/app/music/milk/billing/SamsungBilling;)Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;->removeCallbacks()V

    .line 305
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBilling;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->access$200(Lcom/samsung/android/app/music/milk/billing/SamsungBilling;)Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->dismiss()V

    .line 306
    return-void
.end method

.method public onProgress(JJ)V
    .locals 7
    .param p1, "downloadedSize"    # J
    .param p3, "totalSize"    # J

    .prologue
    .line 350
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBilling;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->access$100(Lcom/samsung/android/app/music/milk/billing/SamsungBilling;)Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;->removeCallbacks()V

    .line 351
    const-string v0, "SamsungBilling"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDownloadByPackageName onProgress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%d %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 352
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 351
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBilling;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->access$200(Lcom/samsung/android/app/music/milk/billing/SamsungBilling;)Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;

    move-result-object v0

    const v1, 0x7f0a0265

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->setText(I)V

    .line 354
    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBilling;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->access$200(Lcom/samsung/android/app/music/milk/billing/SamsungBilling;)Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;

    move-result-object v0

    const v1, 0x7f0a026f

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->setText(I)V

    .line 357
    :cond_0
    return-void
.end method
