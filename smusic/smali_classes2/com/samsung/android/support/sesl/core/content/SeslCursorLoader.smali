.class public Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;
.super Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;
.source "SeslCursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field mCancellationSignal:Landroid/os/CancellationSignal;

.field mCursor:Landroid/database/Cursor;

.field final mObserver:Lcom/samsung/android/support/sesl/core/content/SeslLoader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/content/SeslLoader",
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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 129
    new-instance v0, Lcom/samsung/android/support/sesl/core/content/SeslLoader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/content/SeslLoader$ForceLoadContentObserver;-><init>(Lcom/samsung/android/support/sesl/core/content/SeslLoader;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mObserver:Lcom/samsung/android/support/sesl/core/content/SeslLoader$ForceLoadContentObserver;

    .line 130
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
    .line 140
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 141
    new-instance v0, Lcom/samsung/android/support/sesl/core/content/SeslLoader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/content/SeslLoader$ForceLoadContentObserver;-><init>(Lcom/samsung/android/support/sesl/core/content/SeslLoader;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mObserver:Lcom/samsung/android/support/sesl/core/content/SeslLoader$ForceLoadContentObserver;

    .line 142
    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mUri:Landroid/net/Uri;

    .line 143
    iput-object p3, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mProjection:[Ljava/lang/String;

    .line 144
    iput-object p4, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mSelection:Ljava/lang/String;

    .line 145
    iput-object p5, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 146
    iput-object p6, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mSortOrder:Ljava/lang/String;

    .line 147
    return-void
.end method


# virtual methods
.method public cancelLoadInBackground()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->cancelLoadInBackground()V

    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 97
    :cond_0
    monitor-exit p0

    .line 98
    return-void

    .line 97
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
    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    if-eqz p1, :cond_0

    .line 106
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 111
    .local v0, "oldCursor":Landroid/database/Cursor;
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 117
    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 237
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 238
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUri="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 239
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mProjection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mProjection:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mSelection:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelectionArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mSelectionArgs:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSortOrder="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mSortOrder:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCursor="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 246
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mContentChanged:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 247
    return-void
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mSelection:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mSelectionArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mSortOrder:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 10

    .prologue
    .line 52
    monitor-enter p0

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->isLoadInBackgroundCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Landroid/os/OperationCanceledException;

    invoke-direct {v0}, Landroid/os/OperationCanceledException;-><init>()V

    throw v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 56
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 57
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mSelection:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mSelectionArgs:[Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mSortOrder:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v7

    .line 62
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 65
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    .line 66
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mObserver:Lcom/samsung/android/support/sesl/core/content/SeslLoader$ForceLoadContentObserver;

    invoke-interface {v7, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 83
    :cond_1
    monitor-enter p0

    .line 84
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 85
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 72
    return-object v7

    .line 67
    :catch_0
    move-exception v9

    .line 68
    .local v9, "ex":Ljava/lang/RuntimeException;
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 69
    throw v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 73
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v8

    .line 74
    .local v8, "e":Ljava/lang/Exception;
    :try_start_6
    instance-of v0, v8, Landroid/os/OperationCanceledException;

    if-eqz v0, :cond_2

    .line 77
    new-instance v0, Landroid/os/OperationCanceledException;

    invoke-direct {v0}, Landroid/os/OperationCanceledException;-><init>()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 83
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    monitor-enter p0

    .line 84
    const/4 v1, 0x0

    :try_start_7
    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 85
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .restart local v7    # "cursor":Landroid/database/Cursor;
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    .line 80
    .end local v7    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_9
    throw v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 85
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 177
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_0
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0}, Lcom/samsung/android/support/sesl/core/content/SeslAsyncTaskLoader;->onReset()V

    .line 187
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->onStopLoading()V

    .line 189
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 192
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 193
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 162
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->forceLoad()V

    .line 164
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->cancelLoad()Z

    .line 173
    return-void
.end method

.method public setProjection([Ljava/lang/String;)V
    .locals 0
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mProjection:[Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setSelection(Ljava/lang/String;)V
    .locals 0
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mSelection:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setSelectionArgs([Ljava/lang/String;)V
    .locals 0
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 0
    .param p1, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mSortOrder:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/content/SeslCursorLoader;->mUri:Landroid/net/Uri;

    .line 201
    return-void
.end method
