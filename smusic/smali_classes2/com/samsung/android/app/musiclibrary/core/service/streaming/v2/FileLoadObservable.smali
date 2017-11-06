.class final Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;
.super Ljava/lang/Object;
.source "FileLoadObservable.java"


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
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 9
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;, "Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;->mListeners:Ljava/util/List;

    return-void
.end method

.method private hasItem(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;, "Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable<TT;>;"
    .local p1, "l":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;, "TT;"
    const/4 v2, 0x0

    .line 39
    if-nez p1, :cond_0

    .line 53
    :goto_0
    return v2

    .line 42
    :cond_0
    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 47
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;

    .line 49
    .local v0, "item":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;, "TT;"
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    const/4 v2, 0x1

    monitor-exit p0

    goto :goto_0

    .line 54
    .end local v0    # "item":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;, "TT;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 53
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
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
    .line 20
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

    .line 21
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;, "Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable<TT;>;"
    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 81
    monitor-exit p0

    .line 82
    return-void

    .line 81
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
    .line 85
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;, "Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable<TT;>;"
    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;->mListeners:Ljava/util/List;

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

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyObservers()V
    .locals 3

    .prologue
    .line 94
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;, "Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable<TT;>;"
    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 99
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;

    .line 101
    .local v0, "item":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;, "TT;"
    if-nez v0, :cond_0

    .line 102
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 107
    .end local v0    # "item":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;, "TT;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 104
    .restart local v0    # "item":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;, "TT;"
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;->onChangedFileLoad()V

    goto :goto_0

    .line 107
    .end local v0    # "item":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;, "TT;"
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    return-void
.end method

.method public registerObserver(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;, "Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable<TT;>;"
    .local p1, "l":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;, "TT;"
    if-nez p1, :cond_1

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;->hasItem(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    monitor-enter p0

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;, "Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable<TT;>;"
    .local p1, "l":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;, "TT;"
    if-nez p1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 61
    :cond_0
    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileLoadObservable;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 66
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 67
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;

    .line 68
    .local v0, "item":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;, "TT;"
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 72
    .end local v0    # "item":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/OnFileLoadListener;, "TT;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
