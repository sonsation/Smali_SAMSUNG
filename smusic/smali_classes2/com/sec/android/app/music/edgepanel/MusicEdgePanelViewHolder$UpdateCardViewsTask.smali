.class Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;
.super Ljava/lang/Object;
.source "MusicEdgePanelViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateCardViewsTask"
.end annotation


# instance fields
.field private mCardItemList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEdgeBuilder:Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

.field private mHelpBuilder:Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;

.field private mOOBEFlag:Z

.field private mQueryArgs:Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

.field private mStop:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "edgeBuilder"    # Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;
    .param p3, "helpBuilder"    # Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;
    .param p4, "queryArgs"    # Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    .prologue
    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mOOBEFlag:Z

    .line 580
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mStop:Z

    .line 584
    iput-object p1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mContext:Landroid/content/Context;

    .line 585
    iput-object p2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mEdgeBuilder:Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

    .line 586
    iput-object p3, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mHelpBuilder:Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;

    .line 587
    iput-object p4, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mQueryArgs:Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    .line 588
    return-void
.end method

.method private getCardAlbumClickViewId(J)I
    .locals 3
    .param p1, "listItemId"    # J

    .prologue
    .line 701
    const-wide/16 v0, -0xe

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 702
    const v0, 0x7f120183

    .line 711
    :goto_0
    return v0

    .line 703
    :cond_0
    const-wide/16 v0, -0xc

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 704
    const v0, 0x7f120189

    goto :goto_0

    .line 705
    :cond_1
    const-wide/16 v0, -0xd

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 706
    const v0, 0x7f12018d

    goto :goto_0

    .line 707
    :cond_2
    const-wide/16 v0, -0xb

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 708
    const v0, 0x7f120191

    goto :goto_0

    .line 710
    :cond_3
    const-string v0, "EdgePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getCardAlbumClickViewId() please check para1 id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private reloadCardViewItems()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 596
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mCardItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 597
    iget-boolean v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mStop:Z

    if-eqz v0, :cond_1

    .line 631
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mQueryArgs:Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mQueryArgs:Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mQueryArgs:Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    iget-object v3, v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mQueryArgs:Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    iget-object v4, v4, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mQueryArgs:Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    iget-object v5, v5, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    .line 601
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 600
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 603
    if-eqz v7, :cond_6

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 605
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mStop:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_4

    .line 630
    if-eqz v7, :cond_0

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 608
    :cond_4
    :try_start_2
    const-string v0, "number_of_tracks"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 610
    .local v8, "numTracks":I
    new-instance v6, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;

    invoke-direct {v6}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;-><init>()V

    .line 611
    .local v6, "cardViewItemData":Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;
    const-string v0, "_id"

    .line 612
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 611
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v6, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;->id:J

    .line 613
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mContext:Landroid/content/Context;

    iget-wide v2, v6, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;->id:J

    .line 614
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/common/util/ListUtils;->getListItemTextResId(J)I

    move-result v2

    .line 613
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;->name:Ljava/lang/String;

    .line 615
    iput v8, v6, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;->numTracks:I

    .line 616
    const-string v0, "album_id"

    .line 617
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 616
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v6, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;->albumId:J

    .line 618
    if-lez v8, :cond_7

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v6, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;->enableView:Z

    .line 619
    iget-wide v2, v6, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;->id:J

    const-wide/16 v4, -0xe

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5

    iget-boolean v0, v6, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;->enableView:Z

    if-eqz v0, :cond_5

    .line 621
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mOOBEFlag:Z

    .line 623
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mCardItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    const-string v0, "EdgePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reloadCardViewItems() cardViewItemData.name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v6, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " numTracks:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    .line 630
    .end local v6    # "cardViewItemData":Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;
    .end local v8    # "numTracks":I
    :cond_6
    if-eqz v7, :cond_0

    if-eqz v1, :cond_8

    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .restart local v6    # "cardViewItemData":Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;
    .restart local v8    # "numTracks":I
    :cond_7
    move v0, v9

    .line 618
    goto :goto_1

    .line 630
    .end local v6    # "cardViewItemData":Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;
    .end local v8    # "numTracks":I
    :cond_8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 600
    :catch_2
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 630
    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_2
    if-eqz v7, :cond_9

    if-eqz v1, :cond_a

    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_9
    :goto_3
    throw v0

    :catch_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private setCardViewPendingIntent(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;)V
    .locals 4
    .param p1, "item"    # Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;

    .prologue
    .line 715
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mEdgeBuilder:Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

    iget-wide v2, p1, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;->id:J

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->getCardAlbumClickViewId(J)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->setCardViewPlayPendingIntent(ILcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;)V

    .line 716
    return-void
.end method

.method private updateCardViewBackground(JZ)V
    .locals 5
    .param p1, "listItemId"    # J
    .param p3, "enabled"    # Z

    .prologue
    .line 644
    const/4 v0, -0x1

    .line 645
    .local v0, "viewId":I
    const-wide/16 v2, -0xe

    cmp-long v1, p1, v2

    if-nez v1, :cond_2

    .line 646
    const v0, 0x7f120183

    .line 654
    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 655
    if-eqz p3, :cond_5

    .line 656
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mEdgeBuilder:Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

    const v2, 0x7f020254

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->setViewBackgroundResource(II)V

    .line 661
    :cond_1
    :goto_1
    return-void

    .line 647
    :cond_2
    const-wide/16 v2, -0xc

    cmp-long v1, p1, v2

    if-nez v1, :cond_3

    .line 648
    const v0, 0x7f120189

    goto :goto_0

    .line 649
    :cond_3
    const-wide/16 v2, -0xd

    cmp-long v1, p1, v2

    if-nez v1, :cond_4

    .line 650
    const v0, 0x7f12018d

    goto :goto_0

    .line 651
    :cond_4
    const-wide/16 v2, -0xb

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    .line 652
    const v0, 0x7f120191

    goto :goto_0

    .line 658
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mEdgeBuilder:Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->setViewBackgroundResource(II)V

    goto :goto_1
.end method

.method private updateCardViews()V
    .locals 5

    .prologue
    .line 719
    const-string v1, "EdgePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " updateCardViews() start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    invoke-direct {p0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->reloadCardViewItems()V

    .line 723
    iget-boolean v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mStop:Z

    if-eqz v1, :cond_0

    .line 736
    :goto_0
    return-void

    .line 727
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->updateGuideViewVisible()V

    .line 729
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mCardItemList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;

    .line 730
    .local v0, "item":Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;
    iget-wide v2, v0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;->id:J

    iget-boolean v4, v0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;->enableView:Z

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->updateCardViewBackground(JZ)V

    .line 731
    invoke-direct {p0, v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->updateTextView(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;)V

    .line 732
    invoke-direct {p0, v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->setCardViewPendingIntent(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;)V

    goto :goto_1

    .line 735
    .end local v0    # "item":Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;
    :cond_1
    const-string v1, "EdgePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " updateCardViews() end"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateGuideViewVisible()V
    .locals 5

    .prologue
    const v4, 0x7f120187

    const v3, 0x7f120186

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 634
    iget-boolean v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mOOBEFlag:Z

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mEdgeBuilder:Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->setViewVisibility(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 636
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mEdgeBuilder:Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

    invoke-virtual {v0, v4, v2}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->setViewVisibility(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 641
    :goto_0
    return-void

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mEdgeBuilder:Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

    invoke-virtual {v0, v3, v2}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->setViewVisibility(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 639
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mEdgeBuilder:Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->setViewVisibility(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    goto :goto_0
.end method

.method private updateTextView(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;)V
    .locals 12
    .param p1, "item"    # Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;

    .prologue
    const v7, 0x7f1100ac

    const v11, 0x7f1100ab

    const v10, 0x7f0d0100

    const v6, 0x7f0d00ff

    const/4 v9, 0x0

    .line 664
    const/4 v0, -0x1

    .line 665
    .local v0, "mainText":I
    const/4 v1, -0x1

    .line 666
    .local v1, "subText":I
    iget-wide v2, p1, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;->id:J

    const-wide/16 v4, -0xe

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 667
    const v0, 0x7f120184

    .line 668
    const v1, 0x7f120185

    .line 680
    :cond_0
    :goto_0
    iget-boolean v2, p1, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;->enableView:Z

    if-eqz v2, :cond_4

    .line 681
    iget-object v2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mEdgeBuilder:Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

    iget-object v3, p1, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v6}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->setText(Ljava/lang/String;II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 682
    iget-object v2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mEdgeBuilder:Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

    iget-object v3, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mContext:Landroid/content/Context;

    .line 683
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v11, v9}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v3

    .line 682
    invoke-virtual {v2, v0, v3}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->setTextColor(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 684
    iget-object v2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mEdgeBuilder:Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

    iget-object v3, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0004

    iget v5, p1, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;->numTracks:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p1, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;->numTracks:I

    .line 685
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 684
    invoke-virtual {v2, v3, v1, v10}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->setText(Ljava/lang/String;II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 687
    iget-object v2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mEdgeBuilder:Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

    iget-object v3, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mContext:Landroid/content/Context;

    .line 688
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v11, v9}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v3

    .line 687
    invoke-virtual {v2, v1, v3}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->setTextColor(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 698
    :goto_1
    return-void

    .line 669
    :cond_1
    iget-wide v2, p1, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;->id:J

    const-wide/16 v4, -0xc

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 670
    const v0, 0x7f12018a

    .line 671
    const v1, 0x7f12018b

    goto :goto_0

    .line 672
    :cond_2
    iget-wide v2, p1, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;->id:J

    const-wide/16 v4, -0xd

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 673
    const v0, 0x7f12018e

    .line 674
    const v1, 0x7f12018f

    goto :goto_0

    .line 675
    :cond_3
    iget-wide v2, p1, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;->id:J

    const-wide/16 v4, -0xb

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 676
    const v0, 0x7f120192

    .line 677
    const v1, 0x7f120193

    goto :goto_0

    .line 690
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mEdgeBuilder:Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

    iget-object v3, p1, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$CardViewItemData;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v6}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->setText(Ljava/lang/String;II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 691
    iget-object v2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mEdgeBuilder:Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

    iget-object v3, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mContext:Landroid/content/Context;

    .line 692
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v7, v9}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v3

    .line 691
    invoke-virtual {v2, v0, v3}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->setTextColor(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 693
    iget-object v2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mEdgeBuilder:Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

    iget-object v3, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a013a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v10}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->setText(Ljava/lang/String;II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    .line 695
    iget-object v2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mEdgeBuilder:Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

    iget-object v3, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mContext:Landroid/content/Context;

    .line 696
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v7, v9}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v3

    .line 695
    invoke-virtual {v2, v1, v3}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->setTextColor(II)Lcom/samsung/android/app/music/service/remoteview/RemoteViewBuilder;

    goto :goto_1
.end method


# virtual methods
.method public cancelRunning()V
    .locals 3

    .prologue
    .line 591
    const-string v0, "EdgePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cancelRunning() UpdateCardViewsTask will be stop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mStop:Z

    .line 593
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->updateCardViews()V

    .line 741
    iget-boolean v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mStop:Z

    if-eqz v0, :cond_0

    .line 746
    :goto_0
    return-void

    .line 744
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mEdgeBuilder:Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;

    invoke-virtual {v0}, Lcom/sec/android/app/music/edgepanel/EdgeRemoteViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mHelpBuilder:Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder$UpdateCardViewsTask;->mHelpBuilder:Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;

    .line 745
    invoke-virtual {v0}, Lcom/sec/android/app/music/edgepanel/EdgeHelpRemoteViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 744
    :goto_1
    invoke-static {v1, v2, v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelViewHolder;->access$300(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    goto :goto_0

    .line 745
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
