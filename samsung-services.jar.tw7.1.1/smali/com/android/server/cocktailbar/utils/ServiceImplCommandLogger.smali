.class public Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;
.super Ljava/lang/Object;
.source "ServiceImplCommandLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$1;,
        Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;
    }
.end annotation


# static fields
.field private static final MAX_LOGGING_CLIENT:I = 0xa

.field private static final MAX_LOGGING_HISTORY:I = 0x14


# instance fields
.field private mHostDumpInfoCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$1;

    .line 19
    const/16 v1, 0xa

    .line 18
    invoke-direct {v0, p0, v1}, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$1;-><init>(Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;I)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->mHostDumpInfoCache:Landroid/util/LruCache;

    .line 12
    return-void
.end method


# virtual methods
.method public recordHostCommand(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 51
    iget-object v5, p0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->mHostDumpInfoCache:Landroid/util/LruCache;

    monitor-enter v5

    .line 52
    :try_start_0
    iget-object v4, p0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->mHostDumpInfoCache:Landroid/util/LruCache;

    invoke-virtual {v4, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;

    .line 53
    .local v2, "dumpInfo":Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;
    if-nez v2, :cond_0

    .line 54
    new-instance v2, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;

    .end local v2    # "dumpInfo":Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;
    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;-><init>(Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;)V

    .line 55
    .restart local v2    # "dumpInfo":Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;
    iget-object v4, p0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->mHostDumpInfoCache:Landroid/util/LruCache;

    invoke-virtual {v4, p1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .local v0, "commandString":Ljava/lang/StringBuffer;
    :try_start_1
    new-instance v1, Landroid/icu/text/SimpleDateFormat;

    const-string v4, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v4}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 60
    .local v1, "dateFormat":Landroid/icu/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v4}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .end local v1    # "dateFormat":Landroid/icu/text/SimpleDateFormat;
    :goto_0
    :try_start_2
    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 66
    iget-object v4, v2, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;->mCommandHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :goto_1
    iget-object v4, v2, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;->mCommandHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v6, 0x14

    if-le v4, v6, :cond_1

    .line 68
    iget-object v4, v2, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;->mCommandHistory:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 51
    .end local v0    # "commandString":Ljava/lang/StringBuffer;
    .end local v2    # "dumpInfo":Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 61
    .restart local v0    # "commandString":Ljava/lang/StringBuffer;
    .restart local v2    # "dumpInfo":Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;
    :catch_0
    move-exception v3

    .line 62
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    monitor-exit v5

    .line 50
    return-void
.end method

.method public recordHostEnd(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 74
    iget-object v3, p0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->mHostDumpInfoCache:Landroid/util/LruCache;

    invoke-virtual {v3, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;

    .line 75
    .local v1, "dumpInfo":Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;
    if-nez v1, :cond_0

    .line 76
    new-instance v1, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;

    .end local v1    # "dumpInfo":Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;
    invoke-direct {v1, v4}, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;-><init>(Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;)V

    .line 77
    .restart local v1    # "dumpInfo":Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;
    iget-object v3, p0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->mHostDumpInfoCache:Landroid/util/LruCache;

    invoke-virtual {v3, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_0
    :try_start_0
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    const-string v3, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v3}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "dateFormat":Landroid/icu/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;->mEndTime:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v0    # "dateFormat":Landroid/icu/text/SimpleDateFormat;
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v2

    .line 83
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;->mEndTime:Ljava/lang/String;

    goto :goto_0
.end method

.method public recordHostStart(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 37
    new-instance v1, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;-><init>(Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;)V

    .line 39
    .local v1, "dumpInfo":Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;
    :try_start_0
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    const-string v3, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v3}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "dateFormat":Landroid/icu/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;->mStratTime:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v0    # "dateFormat":Landroid/icu/text/SimpleDateFormat;
    :goto_0
    iget-object v4, p0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->mHostDumpInfoCache:Landroid/util/LruCache;

    monitor-enter v4

    .line 46
    :try_start_1
    iget-object v3, p0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->mHostDumpInfoCache:Landroid/util/LruCache;

    invoke-virtual {v3, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 36
    return-void

    .line 41
    :catch_0
    move-exception v2

    .line 42
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;->mStratTime:Ljava/lang/String;

    goto :goto_0

    .line 45
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 91
    iget-object v7, p0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->mHostDumpInfoCache:Landroid/util/LruCache;

    if-eqz v7, :cond_2

    .line 92
    iget-object v8, p0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->mHostDumpInfoCache:Landroid/util/LruCache;

    monitor-enter v8

    .line 93
    :try_start_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    .local v4, "hostDumpInfoString":Ljava/lang/StringBuffer;
    iget-object v7, p0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;->mHostDumpInfoCache:Landroid/util/LruCache;

    invoke-virtual {v7}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    .line 95
    .local v0, "cacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "item$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 96
    .local v5, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;

    .line 97
    .local v3, "dumpInfo":Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;
    const-string v7, "HostDump: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v9, " s="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 98
    iget-object v9, v3, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;->mStratTime:Ljava/lang/String;

    .line 97
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 98
    const-string v9, " e="

    .line 97
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 98
    iget-object v9, v3, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;->mEndTime:Ljava/lang/String;

    .line 97
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 99
    const-string v9, "\ncmd="

    .line 97
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    iget-object v7, v3, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;->mCommandHistory:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "command$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 101
    .local v1, "command":Ljava/lang/String;
    const-string v7, "    "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v9, "\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 92
    .end local v0    # "cacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;>;"
    .end local v1    # "command":Ljava/lang/String;
    .end local v2    # "command$iterator":Ljava/util/Iterator;
    .end local v3    # "dumpInfo":Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;
    .end local v4    # "hostDumpInfoString":Ljava/lang/StringBuffer;
    .end local v5    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;>;"
    .end local v6    # "item$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 104
    .restart local v0    # "cacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;>;"
    .restart local v4    # "hostDumpInfoString":Ljava/lang/StringBuffer;
    .restart local v6    # "item$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    monitor-exit v8

    return-object v7

    .line 107
    .end local v0    # "cacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;>;"
    .end local v4    # "hostDumpInfoString":Ljava/lang/StringBuffer;
    .end local v6    # "item$iterator":Ljava/util/Iterator;
    :cond_2
    const-string v7, ""

    return-object v7
.end method
