.class public Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;
.super Ljava/lang/Object;
.source "MilkDownloadNotificationAgent.java"


# static fields
.field private static final DOWNLOADING_NOTIFY_ID:I = 0x4104001

.field private static final GROUP_KEY_DOWNLOAD:Ljava/lang/String; = "milk_downloaded"

.field public static final LOG_TAG:Ljava/lang/String; = "DownloadNotificationAgent"


# instance fields
.field private mBuilder:Landroid/app/Notification$Builder;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

.field private mNotifyManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mNotifyManager:Landroid/app/NotificationManager;

    .line 48
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mBuilder:Landroid/app/Notification$Builder;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mHandler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;)Landroid/app/Notification$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mBuilder:Landroid/app/Notification$Builder;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mNotifyManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private static convertTrackIdToInt(Ljava/lang/String;)I
    .locals 5
    .param p0, "trackId"    # Ljava/lang/String;

    .prologue
    .line 235
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_1

    .line 236
    :cond_0
    const/4 v1, 0x0

    .line 251
    :goto_0
    return v1

    .line 239
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0xa

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x6

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const/4 v1, 0x0

    .line 246
    .local v1, "result":I
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method private getDownloadQueuerPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 255
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mContext:Landroid/content/Context;

    const-class v3, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 256
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    .line 257
    .local v1, "stackBuilder":Landroid/app/TaskStackBuilder;
    invoke-virtual {v1, v0}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 258
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-virtual {v1, v2, v3}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method private getTrackListPendingIntent()Landroid/app/PendingIntent;
    .locals 6

    .prologue
    .line 262
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mContext:Landroid/content/Context;

    const-class v3, Lcom/samsung/android/app/music/common/activity/TrackActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "extra_list_type"

    const v3, 0x100004

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    const-string v2, "extra_key_word"

    const-wide/16 v4, -0xe

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const-string v2, "extra_title"

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0158

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    .line 268
    .local v1, "stackBuilder":Landroid/app/TaskStackBuilder;
    const-class v2, Lcom/samsung/android/app/music/common/activity/TrackActivity;

    invoke-virtual {v1, v2}, Landroid/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/app/TaskStackBuilder;

    .line 269
    invoke-virtual {v1, v0}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 270
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-virtual {v1, v2, v3}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method private notifyOnMainLooper()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent$1;-><init>(Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 207
    const-string v0, "DownloadNotificationAgent"

    const-string v1, "DownloadNotificationAgent.cancel Stop foreground"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mNotifyManager:Landroid/app/NotificationManager;

    const v1, 0x4104001

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 209
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mNotifyManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 213
    const-string v0, "DownloadNotificationAgent"

    const-string v1, "DownloadNotificationAgent.clear Error! failed to use DownloadNotificationAgent"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    const-string v0, "DownloadNotificationAgent"

    const-string v1, "DownloadNotificationAgent.clear Stop foreground"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mNotifyManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    goto :goto_0
.end method

.method public done()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mNotifyManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 224
    const-string v0, "DownloadNotificationAgent"

    const-string v1, "DownloadNotificationAgent.cancel Error! failed to use DownloadNotificationAgent"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    const-string v0, "DownloadNotificationAgent"

    const-string v1, "DownloadNotificationAgent.done Stop foreground"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mNotifyManager:Landroid/app/NotificationManager;

    const v1, 0x4104001

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method public error()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mContext:Landroid/content/Context;

    const v2, 0x7f0a02c5

    .line 91
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f02023a

    .line 92
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->getDownloadQueuerPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mBuilder:Landroid/app/Notification$Builder;

    const-string v1, "milk_downloaded"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    .line 98
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mBuilder:Landroid/app/Notification$Builder;

    const-string/jumbo v1, "recommendation"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mNotifyManager:Landroid/app/NotificationManager;

    const v1, 0x4104001

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mNotifyManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->convertTrackIdToInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 138
    return-void
.end method

.method public getItem()Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    return-object v0
.end method

.method public progress(I)V
    .locals 6
    .param p1, "percent"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param

    .prologue
    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mBuilder:Landroid/app/Notification$Builder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mContext:Landroid/content/Context;

    const v3, 0x7f0a02be

    .line 82
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 81
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f02023a

    .line 83
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->notifyOnMainLooper()V

    .line 86
    return-void
.end method

.method public start(Z)V
    .locals 8
    .param p1, "isStopped"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 53
    const/4 v1, 0x0

    .line 54
    .local v1, "percent":I
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getDownloadedSize()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getSize()J

    move-result-wide v4

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 58
    :cond_0
    const-string v2, "DownloadNotificationAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadNotificationAgent.star file size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", downloaded size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    .line 59
    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getDownloadedSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", percent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 58
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    if-eqz p1, :cond_2

    .line 63
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mContext:Landroid/content/Context;

    const v4, 0x7f0a02bf

    .line 64
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 63
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "contentText":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x7f02023a

    .line 71
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->getDownloadQueuerPendingIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 74
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 75
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mBuilder:Landroid/app/Notification$Builder;

    const-string v3, "progress"

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 77
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->notifyOnMainLooper()V

    .line 78
    return-void

    .line 66
    .end local v0    # "contentText":Ljava/lang/String;
    :cond_2
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mContext:Landroid/content/Context;

    const v4, 0x7f0a02be

    .line 67
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 66
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "contentText":Ljava/lang/String;
    goto :goto_0
.end method

.method public success()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mContext:Landroid/content/Context;

    const v2, 0x7f0a02bd

    .line 143
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 144
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->getTrackListPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 145
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mBuilder:Landroid/app/Notification$Builder;

    const-string v1, "milk_downloaded"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    .line 148
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mBuilder:Landroid/app/Notification$Builder;

    const-string/jumbo v1, "recommendation"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mNotifyManager:Landroid/app/NotificationManager;

    const v1, 0x4104001

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mNotifyManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mItem:Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/purchase/DownloadTrack;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->convertTrackIdToInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 190
    return-void
.end method

.method public waiting(I)V
    .locals 6
    .param p1, "percent"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param

    .prologue
    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mBuilder:Landroid/app/Notification$Builder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->mContext:Landroid/content/Context;

    const v3, 0x7f0a02bf

    .line 194
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 193
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 195
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadNotificationAgent;->notifyOnMainLooper()V

    .line 196
    return-void
.end method
