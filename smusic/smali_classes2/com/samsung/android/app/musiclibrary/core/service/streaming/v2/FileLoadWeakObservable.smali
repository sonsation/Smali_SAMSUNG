.class final Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadWeakObservable;
.super Ljava/lang/Object;
.source "FileLoadWeakObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerServer"

.field private static final SUB_TAG:Ljava/lang/String; = "FileLoadObservable"


# instance fields
.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 10
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadWeakObservable;, "Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadWeakObservable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadWeakObservable;->mListeners:Ljava/util/List;

    return-void
.end method

.method private hasItem(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadWeakObservable;, "Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadWeakObservable<TT;>;"
    .local p1, "l":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;, "TT;"
    const/4 v3, 0x0

    .line 40
    if-nez p1, :cond_0

    .line 55
    :goto_0
    return v3

    .line 43
    :cond_0
    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadWeakObservable;->mListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 48
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<TT;>;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 50
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;

    .line 51
    .local v0, "item":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;, "TT;"
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 52
    const/4 v3, 0x1

    monitor-exit p0

    goto :goto_0

    .line 56
    .end local v0    # "item":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;, "TT;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<TT;>;>;"
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 55
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<TT;>;>;"
    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static printInfoLog(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 21
    const-string v0, "SMUSIC-SV-PlayerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileLoadObservable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 79
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadWeakObservable;, "Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadWeakObservable<TT;>;"
    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadWeakObservable;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 84
    monitor-exit p0

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasObserver()Z
    .locals 1

    .prologue
    .line 88
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadWeakObservable;, "Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadWeakObservable<TT;>;"
    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadWeakObservable;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyObservers()V
    .locals 4

    .prologue
    .line 97
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadWeakObservable;, "Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadWeakObservable<TT;>;"
    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadWeakObservable;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 102
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<TT;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 104
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;

    .line 105
    .local v0, "item":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;, "TT;"
    if-nez v0, :cond_0

    .line 106
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 111
    .end local v0    # "item":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;, "TT;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<TT;>;>;"
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 108
    .restart local v0    # "item":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;, "TT;"
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<TT;>;>;"
    .restart local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;->onChangedFileLoad()V

    goto :goto_0

    .line 111
    .end local v0    # "item":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;, "TT;"
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    return-void
.end method

.method public registerObserver(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadWeakObservable;, "Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadWeakObservable<TT;>;"
    .local p1, "l":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;, "TT;"
    if-nez p1, :cond_1

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadWeakObservable;->hasItem(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadWeakObservable;->mListeners:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadWeakObservable;, "Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadWeakObservable<TT;>;"
    .local p1, "l":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;, "TT;"
    if-nez p1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 63
    :cond_0
    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadWeakObservable;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 68
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<TT;>;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 70
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;

    .line 71
    .local v0, "item":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;, "TT;"
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 75
    .end local v0    # "item":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;, "TT;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<TT;>;>;"
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<TT;>;>;"
    :cond_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
