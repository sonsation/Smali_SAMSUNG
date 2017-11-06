.class public final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;
.super Ljava/lang/Object;
.source "LyricsParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser$Type;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-LyricsParser"

.field private static final TAG:Ljava/lang/String; = "LyricsParser"


# instance fields
.field private final mParserChains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ThreadLocal",
            "<+",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;->DEBUG:Z

    return-void
.end method

.method private varargs constructor <init>([Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<+",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 52
    .local p1, "supportParserTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;->mParserChains:Ljava/util/List;

    .line 53
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 54
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;>;"
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;->mParserChains:Ljava/util/List;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;->obtainThreadLocal(Ljava/lang/Class;)Ljava/lang/ThreadLocal;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    .end local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;>;"
    :cond_0
    return-void
.end method

.method public static varargs obtain([Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<+",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;",
            ">;)",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 48
    .local p0, "supportParserTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;>;"
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;-><init>([Ljava/lang/Class;)V

    return-object v0
.end method

.method private obtainParserChain()Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;
    .locals 5

    .prologue
    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, "firstChain":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;
    const/4 v2, 0x0

    .line 92
    .local v2, "lastChain":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;->mParserChains:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadLocal;

    .line 93
    .local v0, "c":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<+Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;>;"
    if-nez v1, :cond_0

    .line 94
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "firstChain":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;
    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;

    .line 95
    .restart local v1    # "firstChain":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;
    move-object v2, v1

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;->setNext(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;

    move-result-object v2

    goto :goto_0

    .line 100
    .end local v0    # "c":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<+Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;>;"
    :cond_1
    return-object v1
.end method

.method private static obtainThreadLocal(Ljava/lang/Class;)Ljava/lang/ThreadLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/ThreadLocal",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser$1;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public getLyric(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .locals 10
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 60
    if-nez p1, :cond_2

    .line 61
    sget-boolean v6, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 62
    const-string v6, "LyricsParser"

    const-string v7, "getLyric but filePath is null."

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    sget-object v6, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 86
    :cond_1
    :goto_0
    return-object v6

    .line 66
    :cond_2
    const-wide/16 v0, 0x0

    .line 67
    .local v0, "base":J
    sget-boolean v6, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 71
    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;->obtainParserChain()Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;

    move-result-object v3

    .line 72
    .local v3, "p":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;
    if-nez v3, :cond_4

    .line 73
    sget-object v6, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    sget-boolean v7, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v4, v8, v0

    .line 83
    .local v4, "takes":J
    const-string v7, "SMUSIC-LyricsParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getLyric Lyric parser takes: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms path: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    .end local v4    # "takes":J
    :cond_4
    :try_start_1
    invoke-virtual {v3, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;->getLyric(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 81
    sget-boolean v7, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v4, v8, v0

    .line 83
    .restart local v4    # "takes":J
    const-string v7, "SMUSIC-LyricsParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getLyric Lyric parser takes: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms path: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    .end local v3    # "p":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;
    .end local v4    # "takes":J
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    sget-boolean v6, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;->DEBUG:Z

    if-eqz v6, :cond_5

    .line 78
    const-string v6, "LyricsParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getLyric but error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    :cond_5
    sget-boolean v6, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;->DEBUG:Z

    if-eqz v6, :cond_6

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v4, v6, v0

    .line 83
    .restart local v4    # "takes":J
    const-string v6, "SMUSIC-LyricsParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getLyric Lyric parser takes: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .end local v4    # "takes":J
    :cond_6
    sget-object v6, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    goto/16 :goto_0

    .line 81
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    sget-boolean v7, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;->DEBUG:Z

    if-eqz v7, :cond_7

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v4, v8, v0

    .line 83
    .restart local v4    # "takes":J
    const-string v7, "SMUSIC-LyricsParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getLyric Lyric parser takes: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms path: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .end local v4    # "takes":J
    :cond_7
    throw v6
.end method
