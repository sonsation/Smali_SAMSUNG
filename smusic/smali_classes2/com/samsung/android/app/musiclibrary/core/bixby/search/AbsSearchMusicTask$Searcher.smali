.class public final Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$Searcher;
.super Ljava/lang/Object;
.source "AbsSearchMusicTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Searcher"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mQueryArgs:Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "args"    # Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$Searcher;->mContext:Landroid/content/Context;

    .line 214
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$Searcher;->mQueryArgs:Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;

    .line 215
    return-void
.end method


# virtual methods
.method public final search()Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 218
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$Searcher;->mQueryArgs:Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;

    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;->uri:Landroid/net/Uri;

    .line 219
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$Searcher;->mQueryArgs:Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;->projection:[Ljava/lang/String;

    .line 220
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$Searcher;->mQueryArgs:Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;->selection:Ljava/lang/String;

    .line 221
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$Searcher;->mQueryArgs:Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 223
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$Searcher;->mContext:Landroid/content/Context;

    .line 224
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 225
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 226
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "search() - cursor: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v6, :cond_2

    const-string v0, "null"

    :goto_0
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 231
    if-eqz v6, :cond_1

    if-eqz v5, :cond_3

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    return-object v5

    .line 226
    :cond_2
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 229
    :cond_4
    :try_start_3
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "search() - count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$Searcher;->mQueryArgs:Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;->access$100(Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssemblerQueryArgs;)Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssembler;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssembler;->getResult(Landroid/database/Cursor;)Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 231
    if-eqz v6, :cond_5

    if-eqz v5, :cond_6

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :cond_5
    :goto_2
    move-object v5, v0

    goto :goto_1

    :catch_1
    move-exception v7

    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 223
    :catch_2
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 231
    :catchall_0
    move-exception v5

    move-object v9, v5

    move-object v5, v0

    move-object v0, v9

    :goto_3
    if-eqz v6, :cond_7

    if-eqz v5, :cond_8

    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_7
    :goto_4
    throw v0

    :catch_3
    move-exception v7

    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3
.end method
