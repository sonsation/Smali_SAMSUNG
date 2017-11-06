.class Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$2;
.super Ljava/lang/Object;
.source "DownloadQueueFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 287
    const-string v4, "DownloadQueueFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " onItemClick() | position: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | view: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v4, "DownloadQueueFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " view id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v6, 0x7f1202a4

    if-ne v4, v6, :cond_4

    .line 292
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;

    invoke-virtual {v4, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 293
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 294
    const-string/jumbo v4, "track_id"

    .line 295
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, "trackid":Ljava/lang/String;
    const-string/jumbo v4, "track_type"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 297
    .local v2, "trackType":I
    const-string v4, "is_downloading"

    .line 298
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v1, :cond_2

    .line 301
    .local v1, "isDownloading":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 303
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getMilkDownloadService()Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->stopItem(Ljava/lang/String;I)I

    .line 304
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v4

    const-string v5, "935"

    const-string v6, "9383"

    const-string v7, "OFF"

    .line 305
    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .end local v1    # "isDownloading":Z
    .end local v2    # "trackType":I
    .end local v3    # "trackid":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->access$100(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)V

    .line 346
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_2
    return-void

    .restart local v0    # "c":Landroid/database/Cursor;
    .restart local v2    # "trackType":I
    .restart local v3    # "trackid":Ljava/lang/String;
    :cond_2
    move v1, v5

    .line 298
    goto :goto_0

    .line 310
    .restart local v1    # "isDownloading":Z
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getMilkDownloadService()Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->startItem(Ljava/lang/String;I)I

    .line 311
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v4

    const-string v5, "935"

    const-string v6, "9383"

    const-string v7, "ON"

    .line 312
    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 319
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "isDownloading":Z
    .end local v2    # "trackType":I
    .end local v3    # "trackid":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v6, 0x7f1202a3

    if-ne v4, v6, :cond_6

    .line 321
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;

    invoke-virtual {v4, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 322
    .restart local v0    # "c":Landroid/database/Cursor;
    if-eqz v0, :cond_5

    .line 323
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getMilkDownloadService()Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;

    move-result-object v4

    const-string/jumbo v5, "track_id"

    .line 324
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "track_type"

    .line 325
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 323
    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->removeItem(Ljava/lang/String;I)I

    .line 327
    :cond_5
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v4

    const-string v5, "935"

    const-string v6, "9382"

    .line 328
    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 330
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v6, 0x7f120221

    if-ne v4, v6, :cond_1

    .line 331
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->access$200(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)I

    move-result v4

    if-nez v4, :cond_7

    .line 332
    const-string v4, "DownloadQueueFragment"

    const-string v5, "onClick stopAllDownload"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-static {v4, v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->access$202(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;I)I

    .line 334
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getMilkDownloadService()Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->stopAll()I

    .line 340
    :goto_3
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->access$300(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-static {v5}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->access$200(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;->setButtonView(I)Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueHeaderBuilder;

    .line 342
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v4

    const-string v5, "935"

    const-string v6, "9381"

    .line 343
    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 336
    :cond_7
    const-string v4, "DownloadQueueFragment"

    const-string v6, "onClick startAllDownload"

    invoke-static {v4, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->access$202(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;I)I

    .line 338
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->getMilkDownloadService()Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadServiceHelper;->startAll(Z)I

    goto :goto_3
.end method
