.class public Lcom/samsung/android/app/music/common/contents/DlnaTabAsyncUpdater;
.super Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;
.source "DlnaTabAsyncUpdater.java"


# instance fields
.field private final mDlnaTabChangedListener:Lcom/samsung/android/app/music/common/contents/OnDlnaTabListener;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/samsung/android/app/music/common/contents/OnDlnaTabListener;)V
    .locals 6
    .param p1, "res"    # Landroid/content/ContentResolver;
    .param p2, "listener"    # Lcom/samsung/android/app/music/common/contents/OnDlnaTabListener;

    .prologue
    const/4 v4, 0x0

    .line 14
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$Server;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "count(*)"

    aput-object v1, v3, v0

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 15
    iput-object p2, p0, Lcom/samsung/android/app/music/common/contents/DlnaTabAsyncUpdater;->mDlnaTabChangedListener:Lcom/samsung/android/app/music/common/contents/OnDlnaTabListener;

    .line 16
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 20
    iget-object v1, p0, Lcom/samsung/android/app/music/common/contents/DlnaTabAsyncUpdater;->mDlnaTabChangedListener:Lcom/samsung/android/app/music/common/contents/OnDlnaTabListener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/contents/DlnaTabAsyncUpdater;->mObserverRegistered:Z

    if-nez v1, :cond_2

    .line 22
    :cond_0
    if-eqz p3, :cond_1

    .line 23
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 43
    :cond_1
    :goto_0
    return-void

    .line 28
    :cond_2
    const/4 v0, 0x0

    .line 30
    .local v0, "size":I
    if-eqz p3, :cond_3

    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 31
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 33
    :cond_3
    if-lez v0, :cond_4

    .line 34
    iget-object v1, p0, Lcom/samsung/android/app/music/common/contents/DlnaTabAsyncUpdater;->mDlnaTabChangedListener:Lcom/samsung/android/app/music/common/contents/OnDlnaTabListener;

    invoke-interface {v1}, Lcom/samsung/android/app/music/common/contents/OnDlnaTabListener;->onAddDmsTab()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :goto_1
    if-eqz p3, :cond_1

    .line 40
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 36
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/contents/DlnaTabAsyncUpdater;->mDlnaTabChangedListener:Lcom/samsung/android/app/music/common/contents/OnDlnaTabListener;

    invoke-interface {v1}, Lcom/samsung/android/app/music/common/contents/OnDlnaTabListener;->onRemoveDmsTab()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 39
    :catchall_0
    move-exception v1

    if-eqz p3, :cond_5

    .line 40
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method
