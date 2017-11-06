.class public Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;
.super Ljava/lang/Object;
.source "OnlinePlaylistDeletable.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
.implements Lcom/samsung/android/app/musiclibrary/ui/Deleteable;


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

.field private mContext:Landroid/content/Context;

.field private final mFragment:Landroid/app/Fragment;

.field private mLocalIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOnlineIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "recyclerView"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->mContext:Landroid/content/Context;

    .line 56
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->mActivity:Ljava/lang/ref/WeakReference;

    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->mFragment:Landroid/app/Fragment;

    .line 58
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    .line 59
    iput-object p2, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->mLocalIds:Landroid/util/SparseArray;

    .line 62
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->mOnlineIds:Landroid/util/SparseArray;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->mLocalIds:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->mOnlineIds:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;Landroid/app/Activity;[J[J)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # [J
    .param p3, "x3"    # [J

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->deleteLocalItems(Landroid/app/Activity;[J[J)V

    return-void
.end method

.method private deleteLocalItems(Landroid/app/Activity;[J[J)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "localIds"    # [J
    .param p3, "onlineIds"    # [J

    .prologue
    const/4 v3, 0x0

    .line 126
    if-eqz p2, :cond_0

    .line 127
    new-instance v1, Lcom/samsung/android/app/music/common/util/task/DeletePlaylistTask;

    invoke-direct {v1, p1, p2, v3}, Lcom/samsung/android/app/music/common/util/task/DeletePlaylistTask;-><init>(Landroid/app/Activity;[JZ)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/util/task/DeletePlaylistTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 129
    :cond_0
    if-eqz p3, :cond_1

    .line 130
    new-instance v1, Lcom/samsung/android/app/music/common/util/task/DeleteOnlinePlaylistTask;

    invoke-direct {v1, p1, p3, v3}, Lcom/samsung/android/app/music/common/util/task/DeleteOnlinePlaylistTask;-><init>(Landroid/app/Activity;[JZ)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/util/task/DeleteOnlinePlaylistTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 132
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getItemAnimator()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    move-result-object v0

    .line 133
    .local v0, "itemAnimator":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    if-eqz v1, :cond_2

    .line 134
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    .end local v0    # "itemAnimator":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->setDeleteRequested()V

    .line 136
    :cond_2
    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->mActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showDeletePopup(IZLandroid/content/DialogInterface$OnClickListener;)V
    .locals 6
    .param p1, "count"    # I
    .param p2, "withOutOnline"    # Z
    .param p3, "l"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 139
    if-eqz p2, :cond_0

    const v0, 0x7f0c0013

    .line 142
    .local v0, "messageResId":I
    :goto_0
    new-instance v1, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->mContext:Landroid/content/Context;

    .line 143
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0146

    .line 144
    invoke-virtual {v1, v2, p3}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a008a

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setNegativeButton(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->create()Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->mFragment:Landroid/app/Fragment;

    .line 145
    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "playlistDelete"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 146
    return-void

    .line 139
    .end local v0    # "messageResId":I
    :cond_0
    const v0, 0x7f0c000f

    goto :goto_0
.end method


# virtual methods
.method public deleteItems()V
    .locals 15

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getCheckedItemIds(I)[J

    move-result-object v7

    .line 73
    .local v7, "checkedItemIds":[J
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v11, "localIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v12, "onlineIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v13, "onlineSourceIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "_id"

    .line 77
    invoke-static {v0, v7}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->convertAudioIdsToSelection(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "source_playlist_id"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "is_sync"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "c":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 81
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_3

    const/4 v10, 0x1

    .line 84
    .local v10, "isSync":Z
    :goto_0
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 85
    .local v8, "id":J
    if-eqz v10, :cond_4

    .line 86
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 93
    .end local v8    # "id":J
    .end local v10    # "isSync":Z
    :cond_1
    if-eqz v6, :cond_2

    if-eqz v1, :cond_6

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    :cond_2
    :goto_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 95
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 96
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    new-instance v2, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable$1;

    invoke-direct {v2, p0, v13, v11, v12}, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable$1;-><init>(Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->showDeletePopup(IZLandroid/content/DialogInterface$OnClickListener;)V

    .line 123
    :goto_3
    return-void

    .line 83
    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    .line 89
    .restart local v8    # "id":J
    .restart local v10    # "isSync":Z
    :cond_4
    :try_start_2
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 78
    .end local v8    # "id":J
    .end local v10    # "isSync":Z
    :catch_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    :catchall_0
    move-exception v1

    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    :goto_4
    if-eqz v6, :cond_5

    if-eqz v1, :cond_7

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_5
    :goto_5
    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 108
    :cond_8
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    new-instance v2, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable$2;

    invoke-direct {v2, p0, v11}, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable$2;-><init>(Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;Ljava/util/ArrayList;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->showDeletePopup(IZLandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_3

    .line 116
    :cond_9
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    new-instance v2, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable$3;

    invoke-direct {v2, p0, v11}, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable$3;-><init>(Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;Ljava/util/ArrayList;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->showDeletePopup(IZLandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_3

    .line 93
    :catchall_1
    move-exception v0

    goto :goto_4
.end method

.method public onApiCalled(II)V
    .locals 3
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 150
    const-string v0, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onApiCallback reqId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reqType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 155
    const-string v2, "UiList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onApiHandled reqId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reqType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rspType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    if-nez p3, :cond_1

    .line 159
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 160
    iget-object v2, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->mLocalIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 161
    .local v0, "localIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->mOnlineIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 162
    .local v1, "onlineIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->toPrimitive(Ljava/util/ArrayList;)[J

    move-result-object v3

    .line 163
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->toPrimitive(Ljava/util/ArrayList;)[J

    move-result-object v4

    .line 162
    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->deleteLocalItems(Landroid/app/Activity;[J[J)V

    .line 164
    if-eqz v0, :cond_0

    .line 165
    iget-object v2, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->mLocalIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 167
    :cond_0
    if-eqz v1, :cond_1

    .line 168
    iget-object v2, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;->mOnlineIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 174
    .end local v0    # "localIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v1    # "onlineIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_1
    :goto_0
    return-void

    .line 171
    :cond_2
    const-string v2, "UiList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " OnApiHandled activity is null!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
