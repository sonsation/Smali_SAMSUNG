.class public final Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$AllTrackResultAssemblerImpl;
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
    name = "AllTrackResultAssemblerImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult(Landroid/database/Cursor;)Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 239
    .local v0, "audioIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 242
    :cond_0
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;-><init>()V

    .line 243
    .local v1, "searchResult":Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;
    iput-object v0, v1, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;->ids:Ljava/util/List;

    .line 244
    iput-object v0, v1, Lcom/samsung/android/app/musiclibrary/core/bixby/search/AbsSearchMusicTask$SearchResult;->audioIds:Ljava/util/List;

    .line 245
    return-object v1
.end method
