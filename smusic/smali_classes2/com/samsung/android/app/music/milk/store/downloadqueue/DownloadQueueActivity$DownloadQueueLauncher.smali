.class public Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueActivity$DownloadQueueLauncher;
.super Ljava/lang/Object;
.source "DownloadQueueActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadQueueLauncher"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startActivity(Landroid/app/Activity;[JILjava/lang/String;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "audioIds"    # [J
    .param p2, "type"    # I
    .param p3, "orderId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 72
    .local v6, "context":Landroid/content/Context;
    invoke-static {v6}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0444

    .line 74
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 73
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueTask;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueTask;-><init>(Landroid/app/Activity;[JZILjava/lang/String;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/InsertDownloadQueueTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
