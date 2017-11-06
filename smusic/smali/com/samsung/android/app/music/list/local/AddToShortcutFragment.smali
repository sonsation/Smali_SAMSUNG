.class public Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "AddToShortcutFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
        "<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsFavorite:Z

.field private final mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

.field private mPreviousListId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->mIsFavorite:Z

    .line 212
    new-instance v0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$2;-><init>(Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->mIsFavorite:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->sendHeartItemClickAnalytics(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->sendPlaylistsClickAnalytics(Ljava/lang/String;)V

    return-void
.end method

.method public static newInstance(I)Landroid/app/Fragment;
    .locals 3
    .param p0, "previousListType"    # I

    .prologue
    .line 68
    new-instance v1, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;-><init>()V

    .line 70
    .local v1, "fg":Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "extra_list_type"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->setArguments(Landroid/os/Bundle;)V

    .line 74
    return-object v1
.end method

.method private sendHeartItemClickAnalytics(ILjava/lang/String;)V
    .locals 6
    .param p1, "listType"    # I
    .param p2, "keyword"    # Ljava/lang/String;

    .prologue
    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, "eventValue":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 303
    const/4 v0, 0x0

    .line 306
    :goto_0
    if-eqz v0, :cond_0

    .line 307
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->getScreenId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1201"

    invoke-virtual {v1, v4, v5, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_0
    return-void

    .line 271
    :sswitch_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 272
    .local v2, "playListId":J
    const-wide/16 v4, -0xb

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 273
    const-string v0, "Track"

    goto :goto_0

    .line 275
    :cond_1
    const-string v0, "Playlist"

    .line 277
    goto :goto_0

    .line 279
    .end local v2    # "playListId":J
    :sswitch_1
    const-string v0, "Artist"

    .line 280
    goto :goto_0

    .line 282
    :sswitch_2
    const-string v0, "Album"

    .line 283
    goto :goto_0

    .line 285
    :sswitch_3
    const-string v0, "Album"

    .line 286
    goto :goto_0

    .line 288
    :sswitch_4
    const-string v0, "Artist"

    .line 289
    goto :goto_0

    .line 291
    :sswitch_5
    const-string v0, "Magazine"

    .line 292
    goto :goto_0

    .line 294
    :sswitch_6
    const-string v0, "Folder"

    .line 295
    goto :goto_0

    .line 297
    :sswitch_7
    const-string v0, "Genre"

    .line 298
    goto :goto_0

    .line 300
    :sswitch_8
    const-string v0, "Composer"

    .line 301
    goto :goto_0

    .line 269
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

.method private sendPlaylistsClickAnalytics(Ljava/lang/String;)V
    .locals 6
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 313
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 314
    .local v2, "playListId":J
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/common/util/ListUtils;->isDefaultPlayList(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, "eventValue":Ljava/lang/String;
    long-to-int v1, v2

    packed-switch v1, :pswitch_data_0

    .line 330
    const/4 v0, 0x0

    .line 333
    :goto_0
    if-eqz v0, :cond_0

    .line 334
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->getScreenId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1211"

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .end local v0    # "eventValue":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 318
    .restart local v0    # "eventValue":Ljava/lang/String;
    :pswitch_0
    const-string v0, "Recently added"

    .line 319
    goto :goto_0

    .line 321
    :pswitch_1
    const-string v0, "Most played"

    .line 322
    goto :goto_0

    .line 324
    :pswitch_2
    const-string v0, "Recently played"

    .line 325
    goto :goto_0

    .line 327
    :pswitch_3
    const-string v0, "Favorites"

    .line 328
    goto :goto_0

    .line 338
    .end local v0    # "eventValue":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->getScreenId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1212"

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 316
    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 181
    const/16 v0, 0x48

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onAttach(Landroid/app/Activity;)V

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_list_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->mPreviousListId:I

    .line 82
    iget v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->mPreviousListId:I

    const v1, 0x10030

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->mIsFavorite:Z

    .line 83
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->mIsFavorite:Z

    if-eqz v0, :cond_1

    .line 84
    const v0, 0x7f0a0183

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 85
    const-string v0, "115"

    const-string v1, "115"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->setScreenId(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :goto_1
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 88
    :cond_1
    const v0, 0x7f0a018a

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 89
    const-string v0, "117"

    const-string v1, "117"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->setScreenId(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onCreateAdapter()Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;
    .locals 3

    .prologue
    .line 142
    iget-boolean v1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->mIsFavorite:Z

    if-eqz v1, :cond_1

    .line 143
    new-instance v1, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    const-string v2, "favorite_name"

    .line 144
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;

    const-string v2, "category_type"

    .line 145
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;

    const-string v2, "data1"

    .line 146
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;->setData1Col(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;

    move-result-object v1

    const-string/jumbo v2, "sub_category_type"

    .line 147
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;->setSubCategoryCol(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;

    move-result-object v1

    const-string v2, "album_id"

    .line 148
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;

    const-string v2, "category_id"

    .line 149
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;->setKeywordCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;

    iget v2, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->mPreviousListId:I

    .line 150
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;->setPreviousListId(I)Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;

    move-result-object v0

    .line 151
    .local v0, "builder":Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v1, :cond_0

    .line 152
    const-string v1, "cp_attrs"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;->setCpAttrsCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 153
    const v1, 0x80002

    sget-object v2, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails;->MILK_ALBUM:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;->addThumbnailUri(ILandroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 155
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;->build()Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;

    move-result-object v1

    .line 161
    .end local v0    # "builder":Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;
    :goto_0
    return-object v1

    .line 158
    :cond_1
    new-instance v1, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;

    const-string v2, "_id"

    .line 159
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;

    const-string v2, "_id"

    .line 160
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;->setKeywordCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;

    iget v2, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->mPreviousListId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;->setPreviousListId(I)Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter$Builder;->build()Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->onCreateAdapter()Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 166
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
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
    .line 135
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;

    move-result-object v0

    check-cast v0, Landroid/content/AsyncTaskLoader;

    .line 136
    .local v0, "cl":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<Landroid/database/Cursor;>;"
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/AsyncTaskLoader;->setUpdateThrottle(J)V

    .line 137
    return-object v0
.end method

.method protected onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->mIsFavorite:Z

    if-eqz v0, :cond_0

    .line 172
    new-instance v0, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;-><init>()V

    .line 174
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;

    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_1
    invoke-direct {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;-><init>(I)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 8
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
    const/4 v6, 0x0

    .line 192
    if-nez p2, :cond_0

    .line 193
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 210
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->mIsFavorite:Z

    if-nez v3, :cond_2

    .line 198
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v7, 0x4

    new-array v7, v7, [J

    fill-array-data v7, :array_0

    invoke-static {v3, v7}, Lcom/samsung/android/app/music/common/util/ListUtils;->saveDynamicDefaultPlaylistIdsToPref(Landroid/content/Context;[J)V

    .line 202
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/common/util/ListUtils;->getDynamicDefaultPlaylistIdsFromPref(Landroid/content/Context;)[J

    move-result-object v2

    .line 203
    .local v2, "defaultPlaylistIds":[J
    new-instance v0, Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;-><init>(Landroid/app/Fragment;Landroid/database/Cursor;)V

    .line 204
    .local v0, "cursorBuilder":Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;
    array-length v7, v2

    move v3, v6

    :goto_1
    if-ge v3, v7, :cond_1

    aget-wide v4, v2, v3

    .line 205
    .local v4, "l":J
    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;->add(J)V

    .line 204
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 207
    .end local v4    # "l":J
    :cond_1
    new-instance v1, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;->build()Landroid/database/Cursor;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x1

    aput-object p2, v3, v6

    invoke-direct {v1, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local p2    # "data":Landroid/database/Cursor;
    .local v1, "data":Landroid/database/Cursor;
    move-object p2, v1

    .line 209
    .end local v0    # "cursorBuilder":Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;
    .end local v1    # "data":Landroid/database/Cursor;
    .end local v2    # "defaultPlaylistIds":[J
    .restart local p2    # "data":Landroid/database/Cursor;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    goto :goto_0

    .line 198
    :array_0
    .array-data 8
        -0xb
        -0xc
        -0xd
        -0xe
    .end array-data
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 58
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 98
    const v1, 0x7f0d01be

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->setListSpaceTop(I)Landroid/view/View;

    .line 99
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 102
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/app/Fragment;)V

    const v2, 0x7f020146

    .line 103
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setDivider(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v1

    const v2, 0x7f0d0174

    .line 104
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetLeft(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v1

    const v2, 0x7f0d04e9

    .line 105
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetRight(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$1;-><init>(Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;)V

    .line 106
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setDividerChecker(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object v0

    .line 124
    .local v0, "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;)V

    .line 125
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 127
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->setListShown(Z)V

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->getListType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->initListLoader(I)V

    .line 130
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemAnimator(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;)V

    .line 131
    return-void
.end method
