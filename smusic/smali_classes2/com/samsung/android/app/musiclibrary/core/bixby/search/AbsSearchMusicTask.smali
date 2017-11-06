.class public abstract Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;
.super Landroid/os/AsyncTask;
.source "AbsSearchMusicTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$GroupNameResultAssemblerImpl;,
        Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$GroupNameQueryArgs;,
        Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$GroupIdResultAssemblerImpl;,
        Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$AllTrackResultAssemblerImpl;,
        Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$Searcher;,
        Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;,
        Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$BaseQueryArgs;,
        Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssembler;,
        Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;,
        Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchMusicListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mKeywords:[Ljava/lang/String;

.field protected final mListType:I

.field private final mResultListener:Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchMusicListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchMusicListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "keyword"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "listType"    # I
    .param p4, "l"    # Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchMusicListener;

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 55
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AbsSearchMusicTask() - keyword: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", listType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->mContext:Landroid/content/Context;

    .line 57
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->mKeywords:[Ljava/lang/String;

    .line 58
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->mListType:I

    .line 59
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->mResultListener:Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchMusicListener;

    .line 60
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected static getDebugKeyword([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "keywords"    # [Ljava/lang/String;

    .prologue
    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 357
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 359
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 360
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private search()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->getAllSearchQueryArgs()Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$BaseQueryArgs;

    move-result-object v9

    .line 110
    .local v9, "queryArgs":Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$BaseQueryArgs;
    iget-object v1, v9, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$BaseQueryArgs;->uri:Landroid/net/Uri;

    .line 111
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, v9, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$BaseQueryArgs;->projection:[Ljava/lang/String;

    .line 112
    .local v2, "projection":[Ljava/lang/String;
    iget-object v3, v9, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$BaseQueryArgs;->selection:Ljava/lang/String;

    .line 113
    .local v3, "selection":Ljava/lang/String;
    iget-object v4, v9, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$BaseQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 115
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->mContext:Landroid/content/Context;

    .line 116
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 117
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 118
    :cond_0
    sget-object v10, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "search() - cursor: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez v6, :cond_3

    const-string v0, "null"

    :goto_0
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 129
    if-eqz v6, :cond_1

    if-eqz v5, :cond_4

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    move-object v8, v5

    :cond_2
    :goto_2
    return-object v8

    .line 118
    :cond_3
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 121
    :cond_5
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 122
    .local v7, "count":I
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "search() - count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 125
    .local v8, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 126
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 115
    .end local v7    # "count":I
    .end local v8    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catch_1
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 129
    :catchall_0
    move-exception v5

    move-object v12, v5

    move-object v5, v0

    move-object v0, v12

    :goto_4
    if-eqz v6, :cond_6

    if-eqz v5, :cond_9

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_6
    :goto_5
    throw v0

    .restart local v7    # "count":I
    .restart local v8    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_7
    if-eqz v6, :cond_2

    if-eqz v5, :cond_8

    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v7    # "count":I
    .end local v8    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catch_3
    move-exception v10

    invoke-virtual {v5, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x0

    .line 68
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->mListType:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->search()Ljava/util/List;

    move-result-object v0

    .line 70
    .local v0, "audioIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 80
    .end local v0    # "audioIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    return-object v3

    .line 73
    .restart local v0    # "audioIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doInBackground() - size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;-><init>()V

    .line 75
    .local v1, "searchResult":Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;
    iput-object v0, v1, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;->ids:Ljava/util/List;

    .line 76
    iput-object v0, v1, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;->audioIds:Ljava/util/List;

    move-object v3, v1

    .line 77
    goto :goto_0

    .line 79
    .end local v0    # "audioIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v1    # "searchResult":Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->mListType:I

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->getSearcher(Landroid/content/Context;I)Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$Searcher;

    move-result-object v2

    .line 80
    .local v2, "searcher":Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$Searcher;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$Searcher;->search()Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;

    move-result-object v3

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->doInBackground([Ljava/lang/Void;)Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getAllSearchQueryArgs()Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$BaseQueryArgs;
.end method

.method protected abstract getSearcher(Landroid/content/Context;I)Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$Searcher;
.end method

.method protected onPostExecute(Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;)V
    .locals 4
    .param p1, "searchResult"    # Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;

    .prologue
    const/4 v2, 0x0

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->mResultListener:Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchMusicListener;

    if-nez v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 90
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;->ids:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;->ids:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 91
    :cond_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->TAG:Ljava/lang/String;

    const-string v1, "onPostExecute() - There is a no search result."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->mResultListener:Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchMusicListener;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->mListType:I

    invoke-interface {v0, v1, v2, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchMusicListener;->onSearchFinished(ILjava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 96
    :cond_2
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute() - ids: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;->ids:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", audioIds: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;->audioIds:Ljava/util/List;

    if-nez v0, :cond_3

    const-string v0, "null"

    .line 97
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mKeywords: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->mKeywords:[Ljava/lang/String;

    .line 98
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->getDebugKeyword([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mListType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->mListType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->mResultListener:Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchMusicListener;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->mListType:I

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;->ids:Ljava/util/List;

    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;->audioIds:Ljava/util/List;

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchMusicListener;->onSearchFinished(ILjava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 96
    :cond_3
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;->audioIds:Ljava/util/List;

    .line 97
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->onPostExecute(Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;)V

    return-void
.end method
