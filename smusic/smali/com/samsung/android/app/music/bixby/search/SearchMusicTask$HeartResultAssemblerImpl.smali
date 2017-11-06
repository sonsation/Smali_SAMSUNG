.class final Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$HeartResultAssemblerImpl;
.super Ljava/lang/Object;
.source "SearchMusicTask.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$ResultAssembler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/search/SearchMusicTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HeartResultAssemblerImpl"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$HeartResultAssemblerImpl;->mContext:Landroid/content/Context;

    .line 275
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$1;

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$HeartResultAssemblerImpl;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getResult(Landroid/database/Cursor;)Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;
    .locals 12
    .param p1, "c"    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x0

    .line 279
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 280
    .local v2, "count":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 281
    .local v3, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-array v6, v2, [Ljava/lang/String;

    .line 282
    .local v6, "keywords":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 283
    .local v4, "index":I
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 284
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    const/4 v9, 0x1

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v4

    move v4, v5

    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_0

    .line 287
    :cond_0
    new-instance v7, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;

    invoke-direct {v7}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;-><init>()V

    .line 288
    .local v7, "searchResult":Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;
    iput-object v3, v7, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;->ids:Ljava/util/List;

    .line 290
    iget-object v9, p0, Lcom/samsung/android/app/music/bixby/search/SearchMusicTask$HeartResultAssemblerImpl;->mContext:Landroid/content/Context;

    invoke-static {v9, v6}, Lcom/samsung/android/app/music/common/util/HeartsUtils;->getAudioIds(Landroid/content/Context;[Ljava/lang/String;)[J

    move-result-object v1

    .line 291
    .local v1, "audioIds":[J
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v7, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;->audioIds:Ljava/util/List;

    .line 292
    array-length v9, v1

    :goto_1
    if-ge v8, v9, :cond_1

    aget-wide v10, v1, v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 293
    .local v0, "audioId":Ljava/lang/Long;
    iget-object v10, v7, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;->audioIds:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 295
    .end local v0    # "audioId":Ljava/lang/Long;
    :cond_1
    return-object v7
.end method
