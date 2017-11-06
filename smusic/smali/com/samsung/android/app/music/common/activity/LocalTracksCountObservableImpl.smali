.class public Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl;
.super Ljava/lang/Object;
.source "LocalTracksCountObservableImpl.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl$OnLocalTracksCountChangedObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mLocalTracksCount:I

.field private final mObserver:Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl$OnLocalTracksCountChangedObserver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl;->mLocalTracksCount:I

    .line 23
    new-instance v0, Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl$OnLocalTracksCountChangedObserver;

    invoke-direct {v0, v2}, Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl$OnLocalTracksCountChangedObserver;-><init>(Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl;->mObserver:Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl$OnLocalTracksCountChangedObserver;

    .line 27
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl;->mActivity:Landroid/app/Activity;

    .line 28
    invoke-virtual {p1}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x309

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 29
    return-void
.end method


# virtual methods
.method public getLocalTracksCount()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl;->mLocalTracksCount:I

    return v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
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
    const/4 v5, 0x0

    .line 52
    new-instance v7, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;

    invoke-direct {v7}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;-><init>()V

    .line 53
    .local v7, "songCountQueryArgs":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v7, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "count(*)"

    aput-object v6, v3, v4

    iget-object v4, v7, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
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
    .line 59
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 61
    .local v0, "count":I
    iget v1, p0, Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl;->mLocalTracksCount:I

    if-eq v1, v0, :cond_0

    .line 62
    iput v0, p0, Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl;->mLocalTracksCount:I

    .line 63
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl;->mObserver:Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl$OnLocalTracksCountChangedObserver;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl$OnLocalTracksCountChangedObserver;->notifyLocalTracksCountChanged()V

    .line 66
    .end local v0    # "count":I
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public setOnLocalTracksCountChangedListener(Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;

    .prologue
    .line 33
    if-eqz p1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl;->mObserver:Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl$OnLocalTracksCountChangedObserver;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl$OnLocalTracksCountChangedObserver;->register(Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;)V

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl;->mObserver:Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl$OnLocalTracksCountChangedObserver;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl$OnLocalTracksCountChangedObserver;->unregister(Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;)V

    goto :goto_0
.end method

.method public updateLocalTrackCount()V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x309

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 48
    return-void
.end method
