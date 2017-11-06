.class Lcom/samsung/android/app/music/list/local/HeartFragment$3;
.super Ljava/lang/Object;
.source "HeartFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/HeartFragment;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$3;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 449
    const-string v6, "UiList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " onItemClick() | position: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " | id: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " | view: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$3;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    .line 453
    .local v8, "adapter":Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$3;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 454
    .local v2, "activity":Landroid/app/Activity;
    move/from16 v0, p2

    invoke-virtual {v8, v0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 455
    .local v9, "listType":I
    move/from16 v0, p2

    invoke-virtual {v8, v0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object v3

    .line 456
    .local v3, "keyword":Ljava/lang/String;
    move/from16 v0, p2

    invoke-virtual {v8, v0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->getText2(I)Ljava/lang/String;

    move-result-object v4

    .line 457
    .local v4, "title":Ljava/lang/String;
    move/from16 v0, p2

    invoke-virtual {v8, v0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->getSubCategory(I)I

    move-result v5

    .line 459
    .local v5, "subCategoryType":I
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$3;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-static {v6, v9}, Lcom/samsung/android/app/music/list/local/HeartFragment;->access$800(Lcom/samsung/android/app/music/list/local/HeartFragment;I)V

    .line 461
    const v6, 0x10004

    if-ne v9, v6, :cond_0

    .line 462
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/common/util/ListUtils;->isDefaultPlayList(J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 463
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$3;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/samsung/android/app/music/common/util/ListUtils;->getListItemTextResId(J)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 466
    :cond_0
    sparse-switch v9, :sswitch_data_0

    .line 499
    invoke-static {v9}, Lcom/samsung/android/app/music/common/util/ListUtils;->getMatchedTrackListType(I)I

    move-result v6

    .line 498
    invoke-static {v2, v6, v3, v4}, Lcom/samsung/android/app/music/common/util/LaunchUtils;->startTrackActivity(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    .line 502
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$3;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-static {v6, v9, v3}, Lcom/samsung/android/app/music/list/local/HeartFragment;->access$900(Lcom/samsung/android/app/music/list/local/HeartFragment;ILjava/lang/String;)V

    .line 503
    return-void

    .line 468
    :sswitch_0
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 469
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IZI)V

    goto :goto_0

    .line 473
    :sswitch_1
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v11, 0x0

    invoke-static {v2, v6, v7, v4, v11}, Lcom/samsung/android/app/music/list/local/AlbumDetailsActivity;->startActivity(Landroid/app/Activity;JLjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 476
    :sswitch_2
    sget-boolean v6, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v6, :cond_1

    .line 477
    sget-object v6, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->ALBUM:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    invoke-static {v2, v6, v3}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;)Z

    goto :goto_0

    .line 481
    :sswitch_3
    sget-boolean v6, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v6, :cond_1

    .line 482
    sget-object v6, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->ARTIST:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    invoke-static {v2, v6, v3}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;)Z

    goto :goto_0

    .line 486
    :sswitch_4
    sget-boolean v6, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v6, :cond_1

    .line 487
    sget-object v6, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->PICK_DETAIL:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    invoke-static {v2, v6, v3}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;)Z

    goto :goto_0

    .line 491
    :sswitch_5
    const v10, 0x100004

    .line 492
    .local v10, "playlistTrackListType":I
    const v6, 0x100050

    if-ne v5, v6, :cond_2

    .line 493
    const v10, 0x100050

    .line 495
    :cond_2
    invoke-static {v2, v10, v3, v4}, Lcom/samsung/android/app/music/common/util/LaunchUtils;->startTrackActivity(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 466
    :sswitch_data_0
    .sparse-switch
        0x54 -> :sswitch_3
        0x55 -> :sswitch_2
        0x56 -> :sswitch_4
        0x10002 -> :sswitch_1
        0x10003 -> :sswitch_0
        0x10004 -> :sswitch_5
    .end sparse-switch
.end method
