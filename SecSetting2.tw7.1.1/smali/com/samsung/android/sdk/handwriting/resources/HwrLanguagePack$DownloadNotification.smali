.class Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;
.super Ljava/lang/Object;
.source "HwrLanguagePack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadNotification"
.end annotation


# instance fields
.field private mAppName:Ljava/lang/CharSequence;

.field private mBuilder:Landroid/app/Notification$Builder;

.field private mCanceled:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private mDownloadingText:Ljava/lang/CharSequence;

.field private mFailed:Ljava/lang/CharSequence;

.field private mIntent:Landroid/content/Intent;

.field private mLanguage:Ljava/lang/CharSequence;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mTitleText:Ljava/lang/CharSequence;

.field private mbShow:Z

.field final synthetic this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;


# direct methods
.method static synthetic access$1600(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;IZZII)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 402
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->createNotification(IZZII)V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;IZI)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 402
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->createNotificationForNegative(IZI)V

    return-void
.end method

.method private createNotification(IZZII)V
    .locals 5
    .param p1, "serviceId"    # I
    .param p2, "update"    # Z
    .param p3, "onGoing"    # Z
    .param p4, "maximum"    # I
    .param p5, "current"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 438
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-static {v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$1500(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 440
    if-nez p2, :cond_1

    .line 443
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mbShow:Z

    if-eqz v1, :cond_2

    .line 446
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mIntent:Landroid/content/Intent;

    if-nez v1, :cond_3

    .line 447
    .local v0, "downloadIntent":Landroid/app/PendingIntent;
    :goto_1
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    .line 448
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mAppName:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mLanguage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 449
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 450
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 451
    if-nez p3, :cond_4

    .line 457
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    const v2, 0x1080082

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 458
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mTitleText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 459
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v4, v4, v4}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 460
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 462
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-static {v2}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$600(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 463
    return-void

    .line 439
    .end local v0    # "downloadIntent":Landroid/app/PendingIntent;
    :cond_0
    return-void

    .line 441
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 444
    :cond_2
    return-void

    .line 446
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mIntent:Landroid/content/Intent;

    const/high16 v3, 0x8000000

    invoke-static {v1, v4, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_1

    .line 452
    .restart local v0    # "downloadIntent":Landroid/app/PendingIntent;
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    const v2, 0x1080081

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 453
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v3, p5, 0x64

    div-int/2addr v3, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "% "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mDownloadingText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 454
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, p4, p5, v4}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 455
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    goto :goto_2
.end method

.method private createNotificationForNegative(IZI)V
    .locals 5
    .param p1, "serviceId"    # I
    .param p2, "update"    # Z
    .param p3, "status"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 465
    if-eqz p3, :cond_0

    .line 468
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-static {v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$1500(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 470
    if-nez p2, :cond_2

    .line 473
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mbShow:Z

    if-eqz v1, :cond_3

    .line 476
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mIntent:Landroid/content/Intent;

    if-nez v1, :cond_4

    .line 477
    .local v0, "downloadIntent":Landroid/app/PendingIntent;
    :goto_1
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    .line 478
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mAppName:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mLanguage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 479
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 480
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 481
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    const v2, 0x1080082

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 482
    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    const/4 v1, 0x2

    if-eq p3, v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mFailed:Ljava/lang/CharSequence;

    :goto_2
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 483
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 484
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->this$0:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-static {v2}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->access$600(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 485
    return-void

    .line 466
    .end local v0    # "downloadIntent":Landroid/app/PendingIntent;
    :cond_0
    return-void

    .line 469
    :cond_1
    return-void

    .line 471
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 474
    :cond_3
    return-void

    .line 476
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mIntent:Landroid/content/Intent;

    const/high16 v3, 0x8000000

    invoke-static {v1, v4, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_1

    .line 482
    .restart local v0    # "downloadIntent":Landroid/app/PendingIntent;
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->mCanceled:Ljava/lang/CharSequence;

    goto :goto_2
.end method
