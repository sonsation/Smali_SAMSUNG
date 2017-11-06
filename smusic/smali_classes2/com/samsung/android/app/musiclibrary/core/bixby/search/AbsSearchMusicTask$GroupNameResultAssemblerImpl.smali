.class public final Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$GroupNameResultAssemblerImpl;
.super Ljava/lang/Object;
.source "AbsSearchMusicTask.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssembler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupNameResultAssemblerImpl"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mQueryArgs:Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$GroupNameQueryArgs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$GroupNameQueryArgs;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "args"    # Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$GroupNameQueryArgs;

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$GroupNameResultAssemblerImpl;->mContext:Landroid/content/Context;

    .line 291
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$GroupNameResultAssemblerImpl;->mQueryArgs:Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$GroupNameQueryArgs;

    .line 292
    return-void
.end method

.method private getGroupIds(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "groupNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 312
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-object v5

    .line 316
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    .line 317
    .local v9, "groupNameCount":I
    const-string v3, ""

    .line 318
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v9, [Ljava/lang/String;

    .line 320
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v9, :cond_5

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$GroupNameResultAssemblerImpl;->mQueryArgs:Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$GroupNameQueryArgs;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$GroupNameQueryArgs;->access$200(Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$GroupNameQueryArgs;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 322
    add-int/lit8 v0, v9, -0x1

    if-eq v10, v0, :cond_2

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 326
    :cond_2
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 327
    .local v8, "groupName":Ljava/lang/String;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 328
    :cond_3
    const-string v8, "<unknown>"

    .line 330
    :cond_4
    aput-object v8, v4, v10

    .line 320
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 333
    .end local v8    # "groupName":Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$GroupNameResultAssemblerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$GroupNameResultAssemblerImpl;->mQueryArgs:Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$GroupNameQueryArgs;

    .line 334
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$GroupNameQueryArgs;->access$300(Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$GroupNameQueryArgs;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$GroupNameResultAssemblerImpl;->mQueryArgs:Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$GroupNameQueryArgs;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$GroupNameQueryArgs;->access$400(Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$GroupNameQueryArgs;)[Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 336
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_6

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_9

    .line 337
    :cond_6
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGroupIds() - cursor: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v6, :cond_7

    const-string v0, "null"

    .line 338
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 349
    if-eqz v6, :cond_0

    if-eqz v5, :cond_8

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 338
    :cond_7
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    goto :goto_2

    .line 349
    :cond_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 341
    :cond_9
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 342
    .local v7, "count":I
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGroupIds() - count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 345
    .local v11, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 346
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 333
    .end local v7    # "count":I
    .end local v11    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catch_1
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 349
    :catchall_0
    move-exception v1

    move-object v5, v0

    move-object v0, v1

    :goto_4
    if-eqz v6, :cond_a

    if-eqz v5, :cond_e

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_a
    :goto_5
    throw v0

    .restart local v7    # "count":I
    .restart local v11    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_b
    if-eqz v6, :cond_c

    if-eqz v5, :cond_d

    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    :cond_c
    :goto_6
    move-object v5, v11

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .end local v7    # "count":I
    .end local v11    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catch_3
    move-exception v1

    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4
.end method


# virtual methods
.method public getResult(Landroid/database/Cursor;)Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;
    .locals 6
    .param p1, "c"    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 296
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$GroupNameResultAssemblerImpl;->mQueryArgs:Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$GroupNameQueryArgs;

    if-eqz v3, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 297
    :cond_0
    const/4 v2, 0x0

    .line 308
    :goto_0
    return-object v2

    .line 299
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 300
    .local v0, "audioIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 301
    .local v1, "groupNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 302
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 305
    :cond_2
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;

    invoke-direct {v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;-><init>()V

    .line 306
    .local v2, "searchResult":Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$GroupNameResultAssemblerImpl;->getGroupIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;->ids:Ljava/util/List;

    .line 307
    iput-object v0, v2, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;->audioIds:Ljava/util/List;

    goto :goto_0
.end method
