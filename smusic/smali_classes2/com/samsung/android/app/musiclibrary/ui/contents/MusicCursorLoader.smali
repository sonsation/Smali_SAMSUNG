.class public Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;
.super Landroid/content/AsyncTaskLoader;
.source "MusicCursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader$OnCreateQueryArgsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final CURSOR_MAX_COUNT:I = 0x1388

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mCancellationSignal:Landroid/os/CancellationSignal;

.field mCursor:Landroid/database/Cursor;

.field final mObserver:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field mProjection:[Ljava/lang/String;

.field mSelection:Ljava/lang/String;

.field mSelectionArgs:[Ljava/lang/String;

.field mSortOrder:Ljava/lang/String;

.field mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 180
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 196
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    .line 197
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mUri:Landroid/net/Uri;

    .line 198
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mProjection:[Ljava/lang/String;

    .line 199
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mSelection:Ljava/lang/String;

    .line 200
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 201
    iput-object p6, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mSortOrder:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "args"    # Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    .prologue
    .line 184
    iget-object v2, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v3, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v4, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v5, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v6, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method


# virtual methods
.method public cancelLoadInBackground()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->cancelLoadInBackground()V

    .line 144
    monitor-enter p0

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 148
    :cond_0
    monitor-exit p0

    .line 149
    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deliverResult(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    if-eqz p1, :cond_0

    .line 157
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 162
    .local v0, "oldCursor":Landroid/database/Cursor;
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 168
    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 299
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/AsyncTaskLoader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 300
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 301
    const-string v0, "mUri="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 303
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 304
    const-string v0, "mProjection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mProjection:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 307
    const-string v0, "mSelection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mSelection:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 310
    const-string v0, "mSelectionArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mSelectionArgs:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 313
    const-string v0, "mSortOrder="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mSortOrder:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 316
    const-string v0, "mCursor="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 320
    return-void
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mSelection:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mSelectionArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mSortOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/PermissionCheckUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 67
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->TAG:Ljava/lang/String;

    const-string v3, "loadInBackground : no Permission."

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :goto_0
    return-object v0

    .line 71
    :cond_0
    monitor-enter p0

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->isLoadInBackgroundCanceled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    new-instance v2, Landroid/os/OperationCanceledException;

    invoke-direct {v2}, Landroid/os/OperationCanceledException;-><init>()V

    throw v2

    .line 76
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 75
    :cond_1
    :try_start_1
    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 76
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->loadInBackgroundInternal()Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 79
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 82
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 83
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 91
    :cond_2
    monitor-enter p0

    .line 92
    const/4 v2, 0x0

    :try_start_4
    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 93
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 86
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 91
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v2

    monitor-enter p0

    .line 92
    const/4 v3, 0x0

    :try_start_6
    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 93
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v2

    :catchall_3
    move-exception v2

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v2
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected loadInBackgroundInternal()Landroid/database/Cursor;
    .locals 13
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/16 v12, 0x1388

    const/4 v11, 0x1

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 102
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 104
    .local v9, "indexOfCursor":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v8, "cursorArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->hasLimitParam(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mSelection:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mSelectionArgs:[Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mSortOrder:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 111
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_0
    :goto_0
    if-le v9, v11, :cond_1

    .line 134
    new-instance v7, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    .line 135
    .end local v7    # "cursor":Landroid/database/Cursor;
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/database/Cursor;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/database/Cursor;

    invoke-direct {v7, v2}, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 137
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_1
    return-object v7

    .line 114
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_2
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%d,%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    mul-int/lit16 v6, v9, 0x1388

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 115
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    .line 114
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 116
    .local v10, "limit":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mUri:Landroid/net/Uri;

    invoke-static {v2, v10}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getLimitAppendedUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 117
    .local v1, "limitUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mSelection:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mSelectionArgs:[Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mSortOrder:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 122
    .restart local v7    # "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 125
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadInBackground limit : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cursor.getCount() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 126
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v9, v9, 0x1

    .line 129
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v2, v12, :cond_2

    goto :goto_0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 231
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 234
    :cond_0
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 238
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 241
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->onStopLoading()V

    .line 243
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 246
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 247
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 216
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->forceLoad()V

    .line 218
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->cancelLoad()Z

    .line 227
    return-void
.end method

.method public setProjection([Ljava/lang/String;)V
    .locals 0
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mProjection:[Ljava/lang/String;

    .line 263
    return-void
.end method

.method public setQueryArgs(Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)V
    .locals 1
    .param p1, "args"    # Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    .prologue
    .line 282
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mUri:Landroid/net/Uri;

    .line 283
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mProjection:[Ljava/lang/String;

    .line 284
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mSelection:Ljava/lang/String;

    .line 285
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 286
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mSortOrder:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public setSelection(Ljava/lang/String;)V
    .locals 0
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mSelection:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setSelectionArgs([Ljava/lang/String;)V
    .locals 0
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 279
    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 0
    .param p1, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mSortOrder:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->mUri:Landroid/net/Uri;

    .line 255
    return-void
.end method
