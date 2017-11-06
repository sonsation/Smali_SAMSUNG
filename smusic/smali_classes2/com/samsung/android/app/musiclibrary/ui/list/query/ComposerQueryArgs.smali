.class public Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerQueryArgs;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "ComposerQueryArgs.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerQueryArgs;-><init>(I)V

    .line 15
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "filterOption"    # I

    .prologue
    const/4 v2, 0x0

    .line 17
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 18
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Composers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerQueryArgs;->uri:Landroid/net/Uri;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .local v0, "projectionBuilder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    const-string v1, "composer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    const-string v1, "album_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    const-string v1, "dummy"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    const-string v1, "number_of_tracks"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    const-string/jumbo v1, "total_duration"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->REGIONAL_CHN_PINYIN_ENABLED:Z

    if-eqz v1, :cond_0

    .line 27
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Composers;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerQueryArgs;->projection:[Ljava/lang/String;

    .line 30
    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerQueryArgs;->selection:Ljava/lang/String;

    .line 31
    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 32
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 33
    const-string v1, "number_of_tracks DESC"

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerQueryArgs;->orderBy:Ljava/lang/String;

    .line 39
    :goto_0
    return-void

    .line 34
    :cond_1
    if-nez p1, :cond_2

    .line 35
    const-string v1, "max_date_added DESC"

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerQueryArgs;->orderBy:Ljava/lang/String;

    goto :goto_0

    .line 37
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Composers;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " COLLATE LOCALIZED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerQueryArgs;->orderBy:Ljava/lang/String;

    goto :goto_0
.end method
