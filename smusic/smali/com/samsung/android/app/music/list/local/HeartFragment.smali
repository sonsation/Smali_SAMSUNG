.class public Lcom/samsung/android/app/music/list/local/HeartFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "HeartFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/util/ShortCutUtils$ShortcutAddable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;,
        Lcom/samsung/android/app/music/list/local/HeartFragment$HeartDeleteable;,
        Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList;,
        Lcom/samsung/android/app/music/list/local/HeartFragment$SpaceItemDecoration;,
        Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;,
        Lcom/samsung/android/app/music/list/local/HeartFragment$ReorderableImpl;,
        Lcom/samsung/android/app/music/list/local/HeartFragment$ActionModeOptionsMenu;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
        "<",
        "Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;",
        ">;",
        "Lcom/samsung/android/app/music/common/util/ShortCutUtils$ShortcutAddable;"
    }
.end annotation


# static fields
.field private static final SPAN_COUNT_LANDSCAPE:I = 0x2

.field private static final SPAN_COUNT_PORT:I = 0x1


# instance fields
.field private final mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mIsMultiWindowMode:Z

.field private mIsMyMusicMode:Z

.field private mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

.field private final mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

.field private final mOnMultiWindowModeChangedListener:Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable$OnMultiWindowModeChangedListener;

.field private mOnMultiWindowModeObservable:Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable;

.field private final mOnNetworkStateChangedListener:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

.field private final mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mIsMultiWindowMode:Z

    .line 154
    new-instance v0, Lcom/samsung/android/app/music/list/local/HeartFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$1;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mOnMultiWindowModeChangedListener:Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable$OnMultiWindowModeChangedListener;

    .line 265
    new-instance v0, Lcom/samsung/android/app/music/list/local/HeartFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$2;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 446
    new-instance v0, Lcom/samsung/android/app/music/list/local/HeartFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$3;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    .line 1602
    new-instance v0, Lcom/samsung/android/app/music/list/local/HeartFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$4;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    .line 1614
    new-instance v0, Lcom/samsung/android/app/music/list/local/HeartFragment$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$5;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mOnNetworkStateChangedListener:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/list/local/HeartFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/HeartFragment;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mIsMultiWindowMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/list/local/HeartFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/HeartFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mIsMultiWindowMode:Z

    return p1
.end method

.method static synthetic access$2000(ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->sendPlayIconClickAnalytics(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/list/local/HeartFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/HeartFragment;

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->isActionMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/list/local/HeartFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/HeartFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->setReorderEnabled(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/list/local/HeartFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/HeartFragment;

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->isActionMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/list/local/HeartFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/HeartFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->setReorderEnabled(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/list/local/HeartFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/HeartFragment;
    .param p1, "x1"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->enterInHeartTabLogging(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/list/local/HeartFragment;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/HeartFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/HeartFragment;->sendListItemClickAnalytics(ILjava/lang/String;)V

    return-void
.end method

.method private enterInHeartTabLogging(I)V
    .locals 3
    .param p1, "listType"    # I

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "HTIT"

    const-string v2, "Touch item"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    packed-switch p1, :pswitch_data_0

    .line 444
    :goto_0
    :pswitch_0
    return-void

    .line 418
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "EIHT"

    const-string v2, "Playlists"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 422
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "EIHT"

    const-string v2, "Artists"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 426
    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "EIHT"

    const-string v2, "Albums"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 430
    :pswitch_4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "EIHT"

    const-string v2, "Genres"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 434
    :pswitch_5
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "EIHT"

    const-string v2, "Folders"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 438
    :pswitch_6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "EIHT"

    const-string v2, "Composers"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 416
    nop

    :pswitch_data_0
    .packed-switch 0x10002
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private sendListItemClickAnalytics(ILjava/lang/String;)V
    .locals 6
    .param p1, "listType"    # I
    .param p2, "keyword"    # Ljava/lang/String;

    .prologue
    .line 507
    const/4 v0, 0x0

    .line 508
    .local v0, "eventId":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 542
    const/4 v0, 0x0

    .line 545
    :goto_0
    if-eqz v0, :cond_0

    .line 546
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getScreenId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :cond_0
    return-void

    .line 510
    :sswitch_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 511
    .local v2, "playListId":J
    const-wide/16 v4, -0xb

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 512
    const-string v0, "1001"

    goto :goto_0

    .line 514
    :cond_1
    const-string v0, "1002"

    .line 516
    goto :goto_0

    .line 518
    .end local v2    # "playListId":J
    :sswitch_1
    const-string v0, "1004"

    .line 519
    goto :goto_0

    .line 521
    :sswitch_2
    const-string v0, "1003"

    .line 522
    goto :goto_0

    .line 524
    :sswitch_3
    const-string v0, "1003"

    .line 525
    goto :goto_0

    .line 527
    :sswitch_4
    const-string v0, "1004"

    .line 528
    goto :goto_0

    .line 530
    :sswitch_5
    const-string v0, "1501"

    .line 531
    goto :goto_0

    .line 533
    :sswitch_6
    const-string v0, "1005"

    .line 534
    goto :goto_0

    .line 536
    :sswitch_7
    const-string v0, "1006"

    .line 537
    goto :goto_0

    .line 539
    :sswitch_8
    const-string v0, "1007"

    .line 540
    goto :goto_0

    .line 508
    nop

    :sswitch_data_0
    .sparse-switch
        0x54 -> :sswitch_4
        0x55 -> :sswitch_3
        0x56 -> :sswitch_5
        0x10002 -> :sswitch_2
        0x10003 -> :sswitch_1
        0x10004 -> :sswitch_0
        0x10006 -> :sswitch_7
        0x10007 -> :sswitch_6
        0x10008 -> :sswitch_8
    .end sparse-switch
.end method

.method private static sendPlayIconClickAnalytics(ILjava/lang/String;)V
    .locals 6
    .param p0, "listType"    # I
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 551
    const/4 v0, 0x0

    .line 552
    .local v0, "eventValue":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    .line 586
    const/4 v0, 0x0

    .line 589
    :goto_0
    if-eqz v0, :cond_0

    .line 590
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v4, "101"

    const-string v5, "1008"

    .line 591
    invoke-virtual {v1, v4, v5, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    :cond_0
    return-void

    .line 554
    :sswitch_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 555
    .local v2, "playListId":J
    const-wide/16 v4, -0xb

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 556
    const-string v0, "Track"

    goto :goto_0

    .line 558
    :cond_1
    const-string v0, "Playlist"

    .line 560
    goto :goto_0

    .line 562
    .end local v2    # "playListId":J
    :sswitch_1
    const-string v0, "Artist"

    .line 563
    goto :goto_0

    .line 565
    :sswitch_2
    const-string v0, "Album"

    .line 566
    goto :goto_0

    .line 568
    :sswitch_3
    const-string v0, "Album"

    .line 569
    goto :goto_0

    .line 571
    :sswitch_4
    const-string v0, "Artist"

    .line 572
    goto :goto_0

    .line 574
    :sswitch_5
    const-string v0, "Magazine"

    .line 575
    goto :goto_0

    .line 577
    :sswitch_6
    const-string v0, "Folder"

    .line 578
    goto :goto_0

    .line 580
    :sswitch_7
    const-string v0, "Genre"

    .line 581
    goto :goto_0

    .line 583
    :sswitch_8
    const-string v0, "Composer"

    .line 584
    goto :goto_0

    .line 552
    nop

    :sswitch_data_0
    .sparse-switch
        0x54 -> :sswitch_4
        0x55 -> :sswitch_3
        0x56 -> :sswitch_5
        0x10002 -> :sswitch_2
        0x10003 -> :sswitch_1
        0x10004 -> :sswitch_0
        0x10006 -> :sswitch_7
        0x10007 -> :sswitch_6
        0x10008 -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public addShortcut()V
    .locals 11

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 382
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v7

    .line 383
    .local v7, "sp":Landroid/util/SparseBooleanArray;
    if-nez v7, :cond_1

    const/4 v6, 0x0

    .line 385
    .local v6, "size":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    .line 387
    .local v0, "adapter":Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_2

    .line 388
    invoke-virtual {v7, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 389
    invoke-virtual {v7, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    .line 390
    .local v5, "position":I
    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 391
    .local v4, "listType":I
    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object v3

    .line 392
    .local v3, "keyword":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->getText2(I)Ljava/lang/String;

    move-result-object v9

    .line 393
    .local v9, "title":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->getSubCategory(I)I

    move-result v8

    .line 395
    .local v8, "subCategoryType":I
    invoke-static {v1, v4, v3}, Lcom/samsung/android/app/music/common/util/ListUtils;->getMatchedTrackListType(Landroid/content/Context;ILjava/lang/String;)I

    move-result v10

    .line 394
    invoke-static {v1, v10, v3, v9, v8}, Lcom/samsung/android/app/music/common/util/ShortCutUtils;->installShortcutIcon(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)V

    .line 387
    .end local v3    # "keyword":Ljava/lang/String;
    .end local v4    # "listType":I
    .end local v5    # "position":I
    .end local v8    # "subCategoryType":I
    .end local v9    # "title":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 383
    .end local v0    # "adapter":Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;
    .end local v2    # "i":I
    .end local v6    # "size":I
    :cond_1
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    goto :goto_0

    .line 399
    .restart local v0    # "adapter":Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;
    .restart local v2    # "i":I
    .restart local v6    # "size":I
    :cond_2
    return-void
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 362
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 356
    const v0, 0x10030

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onAttach(Landroid/app/Activity;)V

    .line 167
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 168
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mOnMultiWindowModeObservable:Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable;

    .line 171
    :cond_0
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_1

    .line 172
    instance-of v0, p1, Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_1

    .line 173
    check-cast p1, Lcom/samsung/android/app/music/network/NetworkManager;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    .line 177
    :cond_1
    const-string v0, "101"

    const-string v1, "102"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->setScreenId(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method protected onCreateAdapter()Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;
    .locals 3

    .prologue
    .line 308
    new-instance v1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    const-string v2, "category_type"

    .line 309
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;

    const-string v2, "favorite_name"

    .line 310
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;

    const-string v2, "data1"

    .line 311
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;->setData1Col(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;

    move-result-object v1

    const-string v2, "data2"

    .line 312
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;->setData2Col(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;

    move-result-object v1

    const-string v2, "album_id"

    .line 313
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;

    const-string v2, "cp_attrs"

    .line 314
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;->setCpAttrsCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;

    const-string v2, "category_id"

    .line 315
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;->setKeywordCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;

    const/4 v2, 0x0

    .line 316
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;->setLargerFontSizeEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;

    .line 318
    .local v0, "builder":Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v1, :cond_0

    .line 319
    const v1, 0x80002

    sget-object v2, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails;->MILK_THUMBNAIL:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;->addThumbnailUri(ILandroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 322
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$Builder;->build()Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->onCreateAdapter()Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 599
    invoke-static {}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->isActionMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    new-instance v0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const v1, 0x7f13000f

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mContextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 601
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    check-cast v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->getText2(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 604
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 605
    return-void
.end method

.method protected onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 4

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 328
    .local v0, "a":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 329
    .local v1, "context":Landroid/content/Context;
    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/widget/GridLayoutManager;

    .line 330
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isLandscape(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    :goto_0
    invoke-direct {v3, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-object v3

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;

    move-result-object v0

    check-cast v0, Landroid/content/AsyncTaskLoader;

    .line 302
    .local v0, "cl":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<Landroid/database/Cursor;>;"
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/AsyncTaskLoader;->setUpdateThrottle(J)V

    .line 303
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    .line 368
    .local v0, "adapter":Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->getItemCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 369
    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const v2, 0x7f13001c

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mMusicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 373
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 374
    return-void

    .line 371
    :cond_1
    new-instance v1, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const v2, 0x7f13001e

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mMusicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    goto :goto_0
.end method

.method protected onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 335
    new-instance v0, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;-><init>()V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 183
    const v0, 0x7f0401f4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 4

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getCheckBoxAnimator()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object v0

    .line 286
    .local v0, "checkBoxAnimator":Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;
    if-eqz v0, :cond_0

    .line 287
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->removeCheckBoxAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 289
    :cond_0
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v1, :cond_1

    .line 290
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v3, "my_music_mode"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v1, :cond_1

    .line 293
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mOnNetworkStateChangedListener:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/network/NetworkManager;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 296
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onDestroyView()V

    .line 297
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 10
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 340
    if-eqz p2, :cond_0

    .line 341
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 342
    .local v1, "count":I
    if-lez v1, :cond_0

    const/4 v5, 0x3

    if-ge v1, v5, :cond_0

    .line 343
    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v4, v8

    .line 344
    .local v4, "projection":[Ljava/lang/String;
    new-instance v3, Landroid/database/MatrixCursor;

    invoke-direct {v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 345
    .local v3, "guideCursor":Landroid/database/MatrixCursor;
    new-instance v0, Ljava/util/ArrayList;

    array-length v5, v4

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 346
    .local v0, "columnValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-wide/16 v6, -0x3f1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-virtual {v3, v0}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 348
    new-instance v2, Landroid/database/MergeCursor;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/database/Cursor;

    aput-object p2, v5, v8

    aput-object v3, v5, v9

    invoke-direct {v2, v5}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local p2    # "data":Landroid/database/Cursor;
    .local v2, "data":Landroid/database/Cursor;
    move-object p2, v2

    .line 351
    .end local v0    # "columnValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v1    # "count":I
    .end local v2    # "data":Landroid/database/Cursor;
    .end local v3    # "guideCursor":Landroid/database/MatrixCursor;
    .end local v4    # "projection":[Ljava/lang/String;
    .restart local p2    # "data":Landroid/database/Cursor;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 352
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 139
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/HeartFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mOnMultiWindowModeObservable:Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mOnMultiWindowModeObservable:Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mOnMultiWindowModeChangedListener:Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable$OnMultiWindowModeChangedListener;

    .line 260
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable;->removeOnMultiWindowModeListener(Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable$OnMultiWindowModeChangedListener;)V

    .line 262
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onPause()V

    .line 263
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 242
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onResume()V

    .line 243
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mOnMultiWindowModeObservable:Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mOnMultiWindowModeObservable:Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mOnMultiWindowModeChangedListener:Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable$OnMultiWindowModeChangedListener;

    .line 245
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable;->addOnMultiWindowModeListener(Lcom/samsung/android/app/musiclibrary/ui/OnMultiWindowModeObservable$OnMultiWindowModeChangedListener;)V

    .line 248
    :cond_0
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mIsMyMusicMode:Z

    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 249
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mIsMyMusicMode:Z

    .line 250
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mIsMyMusicMode:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->setMyMusicMode(Z)V

    .line 254
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 188
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v2

    .line 191
    .local v2, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v2, :cond_0

    .line 192
    sget-boolean v4, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v4, :cond_4

    const-string v4, "Music"

    :goto_0
    new-array v6, v5, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    new-instance v7, Lcom/samsung/android/app/music/bixby/executor/local/FinishActionModeExecutor;

    invoke-direct {v7, p0, p0}, Lcom/samsung/android/app/music/bixby/executor/local/FinishActionModeExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;)V

    aput-object v7, v6, v8

    invoke-interface {v2, v4, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 197
    :cond_0
    sget-boolean v4, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v4, :cond_1

    .line 198
    new-instance v4, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/HeartFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 201
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 202
    .local v0, "a":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v3

    .line 204
    .local v3, "recyclerView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/HeartFragment;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 206
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0a0184

    invoke-direct {v4, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/HeartFragment;->setSelectAll(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    .line 207
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/HeartFragment;->setChoiceMode(I)V

    .line 208
    new-instance v4, Lcom/samsung/android/app/music/list/local/HeartFragment$ActionModeOptionsMenu;

    invoke-direct {v4, p0, v9}, Lcom/samsung/android/app/music/list/local/HeartFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;Lcom/samsung/android/app/music/list/local/HeartFragment$1;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/HeartFragment;->setActionModeMenu(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 210
    new-instance v4, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList;

    invoke-direct {v4, p0, v3}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/HeartFragment;->setCheckableList(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;)V

    .line 211
    new-instance v4, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/HeartFragment;->setSelectedItemPlayable(Lcom/samsung/android/app/musiclibrary/ui/list/SelectedItemPlayable;)V

    .line 212
    new-instance v4, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartDeleteable;

    invoke-direct {v4, p0, v9}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartDeleteable;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;Lcom/samsung/android/app/music/list/local/HeartFragment$1;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/HeartFragment;->setDeleteable(Lcom/samsung/android/app/musiclibrary/ui/Deleteable;)V

    .line 213
    new-instance v4, Lcom/samsung/android/app/music/list/ListShareableImpl;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/list/ListShareableImpl;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/HeartFragment;->setShareable(Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V

    .line 214
    new-instance v4, Lcom/samsung/android/app/music/list/local/HeartFragment$ReorderableImpl;

    invoke-direct {v4, p0, v9}, Lcom/samsung/android/app/music/list/local/HeartFragment$ReorderableImpl;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;Lcom/samsung/android/app/music/list/local/HeartFragment$1;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/HeartFragment;->setReorderable(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;)V

    .line 216
    invoke-virtual {v3, v8}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setAutoFitEnabled(Z)V

    .line 217
    new-instance v6, Lcom/samsung/android/app/music/list/local/HeartFragment$SpaceItemDecoration;

    .line 218
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isLandscape(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x2

    :goto_1
    invoke-direct {v6, p0, v4}, Lcom/samsung/android/app/music/list/local/HeartFragment$SpaceItemDecoration;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;I)V

    .line 217
    invoke-virtual {v3, v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;)V

    .line 220
    invoke-virtual {p0, v8}, Lcom/samsung/android/app/music/list/local/HeartFragment;->setListShown(Z)V

    .line 221
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getListType()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/HeartFragment;->initListLoader(I)V

    .line 223
    new-instance v4, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/HeartFragment;->setEmptyView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 225
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getCheckBoxAnimator()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object v1

    .line 226
    .local v1, "checkBoxAnimator":Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;
    if-eqz v1, :cond_2

    .line 227
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->addCheckBoxAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 230
    :cond_2
    sget-boolean v4, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v4, :cond_3

    .line 231
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v7, "my_music_mode"

    invoke-virtual {v4, v6, v7, v5}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;Z)V

    .line 233
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mIsMyMusicMode:Z

    .line 234
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v4, :cond_3

    .line 235
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mOnNetworkStateChangedListener:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {v4, v5}, Lcom/samsung/android/app/music/network/NetworkManager;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 238
    :cond_3
    return-void

    .line 192
    .end local v0    # "a":Landroid/app/Activity;
    .end local v1    # "checkBoxAnimator":Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;
    .end local v3    # "recyclerView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    :cond_4
    const-string v4, "GlobalMusic"

    goto/16 :goto_0

    .restart local v0    # "a":Landroid/app/Activity;
    .restart local v3    # "recyclerView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    :cond_5
    move v4, v5

    .line 218
    goto :goto_1
.end method

.method public setUserVisibleHint(Z)V
    .locals 2
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 403
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->setUserVisibleHint(Z)V

    .line 405
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mIsMyMusicMode:Z

    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 406
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mIsMyMusicMode:Z

    .line 407
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment;->mIsMyMusicMode:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->setMyMusicMode(Z)V

    .line 411
    :cond_0
    return-void
.end method
