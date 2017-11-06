.class public Lcom/samsung/android/app/music/milk/store/downloadbasket/DeleteDownloadBasketTask;
.super Lcom/samsung/android/app/music/common/util/task/DeleteMilkBaseTask;
.source "DeleteDownloadBasketTask.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;[JLjava/lang/String;Z)V
    .locals 6
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "list"    # [J
    .param p3, "keyColumn"    # Ljava/lang/String;
    .param p4, "finish"    # Z

    .prologue
    .line 15
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DeleteDownloadBasketTask;-><init>(Landroid/app/Activity;[JLjava/lang/String;ZLcom/samsung/android/app/music/common/util/task/DeleteMilkBaseTask$OnTaskFinishListener;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;[JLjava/lang/String;ZLcom/samsung/android/app/music/common/util/task/DeleteMilkBaseTask$OnTaskFinishListener;)V
    .locals 7
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "list"    # [J
    .param p3, "keyColumn"    # Ljava/lang/String;
    .param p4, "finish"    # Z
    .param p5, "l"    # Lcom/samsung/android/app/music/common/util/task/DeleteMilkBaseTask$OnTaskFinishListener;

    .prologue
    .line 20
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$DownloadBasket;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/common/util/task/DeleteMilkBaseTask;-><init>(Landroid/app/Activity;[JLandroid/net/Uri;Ljava/lang/String;ZLcom/samsung/android/app/music/common/util/task/DeleteMilkBaseTask$OnTaskFinishListener;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;[JZ)V
    .locals 1
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "list"    # [J
    .param p3, "finish"    # Z

    .prologue
    .line 11
    const-string v0, "_id"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DeleteDownloadBasketTask;-><init>(Landroid/app/Activity;[JLjava/lang/String;Z)V

    .line 12
    return-void
.end method
