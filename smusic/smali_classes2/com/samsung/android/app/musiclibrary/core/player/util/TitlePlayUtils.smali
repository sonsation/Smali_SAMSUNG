.class public final Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils;
.super Ljava/lang/Object;
.source "TitlePlayUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayUtils"

.field private static final sEmptyList:Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;-><init>(Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$1;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils;->sEmptyList:Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;

    .line 66
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils;->sEmptyList:Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;

    new-array v1, v2, [J

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;->list:[J

    .line 67
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils;->sEmptyList:Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;

    iput v2, v0, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;->position:I

    .line 68
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method private static fillUpQueries(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "isFirstItem"    # Z

    .prologue
    .line 166
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x0

    .line 176
    :goto_0
    return v0

    .line 169
    :cond_0
    if-nez p3, :cond_1

    .line 170
    const-string v0, " AND "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v0, " LIKE \"%"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v0, "%\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getAudioIds(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[J
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "album"    # Ljava/lang/String;
    .param p3, "artist"    # Ljava/lang/String;
    .param p4, "genre"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 130
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    const-string v0, "PlayUtils"

    const-string v1, "getAudioIds but all parameter was null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/AudioIdUtils;->getAudioIds(Landroid/database/Cursor;)[J

    move-result-object v0

    .line 142
    :cond_0
    :goto_0
    return-object v0

    .line 135
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils;->getSelection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 136
    .local v7, "selection":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 139
    invoke-static {v8}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->buildCpAttrSelection(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    .line 136
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 141
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/AudioIdUtils;->getAudioIds(Landroid/database/Cursor;)[J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 142
    if-eqz v6, :cond_0

    if-eqz v4, :cond_3

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 138
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " AND "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 142
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 136
    :catch_1
    move-exception v4

    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    if-eqz v4, :cond_5

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_2
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method private static getSelection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "album"    # Ljava/lang/String;
    .param p2, "artist"    # Ljava/lang/String;
    .param p3, "genre"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 147
    const/4 v6, 0x4

    new-array v4, v6, [Landroid/util/Pair;

    new-instance v6, Landroid/util/Pair;

    const-string/jumbo v7, "title"

    invoke-direct {v6, v7, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v4, v5

    const/4 v6, 0x1

    new-instance v7, Landroid/util/Pair;

    const-string v8, "album"

    invoke-direct {v7, v8, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v4, v6

    const/4 v6, 0x2

    new-instance v7, Landroid/util/Pair;

    const-string v8, "artist"

    invoke-direct {v7, v8, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v4, v6

    const/4 v6, 0x3

    new-instance v7, Landroid/util/Pair;

    const-string v8, "genre_name"

    invoke-direct {v7, v8, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v4, v6

    .line 153
    .local v4, "pairs":[Landroid/util/Pair;, "[Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 154
    .local v1, "isFirstItem":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v0, "builder":Ljava/lang/StringBuilder;
    array-length v8, v4

    move v7, v5

    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v3, v4, v7

    .line 156
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v0, v5, v6, v1}, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils;->fillUpQueries(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 157
    .local v2, "isSuccess":Z
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 158
    const/4 v1, 0x0

    .line 155
    :cond_0
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_0

    .line 161
    .end local v2    # "isSuccess":Z
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static getSongList(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;
    .locals 11
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 71
    if-nez p0, :cond_0

    .line 72
    sget-object v7, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils;->sEmptyList:Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;

    .line 111
    :goto_0
    return-object v7

    .line 75
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 76
    .local v4, "len":I
    if-nez v4, :cond_1

    .line 77
    sget-object v7, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils;->sEmptyList:Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;

    goto :goto_0

    .line 80
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 84
    :try_start_0
    const-string v8, "audio_id"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 88
    .local v3, "index":I
    :goto_1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 90
    .local v0, "columnIdx":I
    new-array v5, v4, [J

    .line 91
    .local v5, "list":[J
    const/4 v6, -0x1

    .line 92
    .local v6, "position":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v4, :cond_3

    .line 93
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    aput-wide v8, v5, v2

    .line 98
    if-gez v6, :cond_2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 99
    move v6, v2

    .line 101
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 85
    .end local v0    # "columnIdx":I
    .end local v2    # "i":I
    .end local v3    # "index":I
    .end local v5    # "list":[J
    .end local v6    # "position":I
    :catch_0
    move-exception v1

    .line 86
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string v8, "_id"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .restart local v3    # "index":I
    goto :goto_1

    .line 104
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "columnIdx":I
    .restart local v2    # "i":I
    .restart local v5    # "list":[J
    .restart local v6    # "position":I
    :cond_3
    if-gez v6, :cond_4

    .line 105
    const-string v8, "PlayUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " can\'t find request id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Please check if it is music or exist in MediaProvider"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_4
    new-instance v7, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;-><init>(Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$1;)V

    .line 109
    .local v7, "songList":Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;
    iput-object v5, v7, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;->list:[J

    .line 110
    if-gez v6, :cond_5

    const/4 v6, 0x0

    .end local v6    # "position":I
    :cond_5
    iput v6, v7, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;->position:I

    goto :goto_0
.end method

.method public static play(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 28
    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;

    invoke-direct {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;-><init>()V

    .line 30
    .local v6, "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    iget-object v1, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v3, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v4, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v5, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object v0, p0

    .line 31
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 33
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v0, "title"

    invoke-static {v7, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils;->getSongList(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 34
    .local v8, "songList":Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;
    if-eqz v7, :cond_0

    if-eqz v9, :cond_1

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 35
    :cond_0
    :goto_0
    iget-object v0, v8, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;->list:[J

    iget v1, v8, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;->position:I

    invoke-static {v9, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play(Ljava/lang/String;[JI)V

    .line 36
    return-void

    .line 34
    :catch_0
    move-exception v0

    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 30
    .end local v8    # "songList":Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_1
    if-eqz v7, :cond_2

    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    throw v0

    :catch_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v9

    goto :goto_1
.end method

.method public static playById(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 44
    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;

    invoke-direct {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;-><init>()V

    .line 46
    .local v6, "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    iget-object v1, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v3, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v4, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v5, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object v0, p0

    .line 47
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 49
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "_id"

    invoke-static {v7, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils;->getSongList(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 50
    .local v8, "songList":Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;
    if-eqz v7, :cond_0

    if-eqz v9, :cond_1

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    :cond_0
    :goto_0
    iget-object v0, v8, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;->list:[J

    iget v1, v8, Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;->position:I

    invoke-static {v9, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play(Ljava/lang/String;[JI)V

    .line 52
    return-void

    .line 50
    :catch_0
    move-exception v0

    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 46
    .end local v8    # "songList":Lcom/samsung/android/app/musiclibrary/core/player/util/TitlePlayUtils$SongList;
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_1
    if-eqz v7, :cond_2

    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    throw v0

    :catch_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v9

    goto :goto_1
.end method
