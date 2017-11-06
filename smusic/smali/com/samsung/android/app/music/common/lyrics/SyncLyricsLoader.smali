.class Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;
.super Ljava/lang/Object;
.source "SyncLyricsLoader.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricsLoader2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$Request;,
        Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$RequestCleaner;
    }
.end annotation


# static fields
.field private static final RADIO:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field private static final TTL_REQUEST:J = 0x1b58L


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCpLyricsLoaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser;",
            ">;"
        }
    .end annotation
.end field

.field private final mLyricsParser:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;

.field private final mRequestCleaner:Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$RequestCleaner;

.field private final mRequestMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser$Type;->LRC_FILE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser$Type;->XSYL_FILE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser$Type;->ID3_XSYL:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser$Type;->ID3_USLT:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser$Type;->MP4V2:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser$Type;->FLAC:Ljava/lang/Class;

    aput-object v3, v1, v2

    .line 46
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;->obtain([Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;->mLyricsParser:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;

    .line 50
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;->mCpLyricsLoaders:Landroid/util/SparseArray;

    .line 52
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;->mRequestMap:Landroid/util/LongSparseArray;

    .line 54
    new-instance v1, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$RequestCleaner;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$RequestCleaner;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;->mRequestCleaner:Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$RequestCleaner;

    .line 106
    iput-object p1, p0, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;->mContext:Landroid/content/Context;

    .line 107
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/DiskUtils;->getLyricsFolderPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "cpLyricsCachePath":Ljava/lang/String;
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;->mCpLyricsLoaders:Landroid/util/SparseArray;

    const/high16 v2, 0x80000

    new-instance v3, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser;

    invoke-direct {v3, p1, v0}, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpMilkLyricsParser;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;->mCpLyricsLoaders:Landroid/util/SparseArray;

    const/4 v2, -0x1

    new-instance v3, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpRadioLyricsParser;

    invoke-direct {v3, p1, v0}, Lcom/samsung/android/app/music/common/lyrics/data/loader/CpRadioLyricsParser;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;->notifyClients(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V

    return-void
.end method

.method private notifyClients(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "lyrics"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .prologue
    .line 167
    iget-object v2, p0, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;->mRequestMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$Request;

    .line 168
    .local v1, "r":Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$Request;
    if-eqz v1, :cond_0

    .line 169
    iget-object v2, v1, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$Request;->clients:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricsLoader2$OnLyricsLoadFinishedListener;

    .line 170
    .local v0, "l":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricsLoader2$OnLyricsLoadFinishedListener;
    invoke-interface {v0, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricsLoader2$OnLyricsLoadFinishedListener;->onLyricsLoadFinished(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V

    goto :goto_0

    .line 173
    .end local v0    # "l":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricsLoader2$OnLyricsLoadFinishedListener;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;->mRequestMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 174
    return-void
.end method


# virtual methods
.method public declared-synchronized requestLyric(IJLjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricsLoader2$OnLyricsLoadFinishedListener;Ljava/lang/Object;)V
    .locals 12
    .param p1, "cpAttrs"    # I
    .param p2, "mediaId"    # J
    .param p4, "filePath"    # Ljava/lang/String;
    .param p5, "l"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricsLoader2$OnLyricsLoadFinishedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "user"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    sget-object v9, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "requestLyrics : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v9, p0, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;->mRequestCleaner:Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$RequestCleaner;

    iget-object v10, p0, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;->mRequestMap:Landroid/util/LongSparseArray;

    invoke-virtual {v9, v10}, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$RequestCleaner;->postClean(Landroid/util/LongSparseArray;)V

    .line 120
    move-object/from16 v0, p6

    instance-of v9, v0, Landroid/os/Bundle;

    if-eqz v9, :cond_1

    move-object/from16 v0, p6

    check-cast v0, Landroid/os/Bundle;

    move-object v9, v0

    move-object v3, v9

    .line 121
    .local v3, "data":Landroid/os/Bundle;
    :goto_0
    iget-object v9, p0, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;->mRequestMap:Landroid/util/LongSparseArray;

    invoke-virtual {v9, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$Request;

    .line 122
    .local v7, "r":Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$Request;
    if-eqz v7, :cond_2

    .line 123
    iget-object v9, v7, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$Request;->clients:Ljava/util/Set;

    move-object/from16 v0, p5

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v9, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;->TAG:Ljava/lang/String;

    const-string v10, "already requested !, simply add callback! "

    invoke-static {v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 120
    .end local v3    # "data":Landroid/os/Bundle;
    .end local v7    # "r":Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$Request;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 127
    .restart local v3    # "data":Landroid/os/Bundle;
    .restart local v7    # "r":Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$Request;
    :cond_2
    :try_start_1
    new-instance v7, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$Request;

    .end local v7    # "r":Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$Request;
    const/4 v9, 0x0

    invoke-direct {v7, v9}, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$Request;-><init>(Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$1;)V

    .line 128
    .restart local v7    # "r":Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$Request;
    iget-object v9, v7, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$Request;->clients:Ljava/util/Set;

    move-object/from16 v0, p5

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v9, p0, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;->mRequestMap:Landroid/util/LongSparseArray;

    invoke-virtual {v9, p2, p3, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 130
    invoke-static {p1}, Lcom/samsung/android/app/music/provider/CpAttrs;->isOnline(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 132
    invoke-static {v3}, Lcom/samsung/android/app/music/common/lyrics/LyricsExtra;->isRadio(Landroid/os/Bundle;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 133
    const/4 v2, -0x1

    .line 137
    .local v2, "cp":I
    :goto_2
    iget-object v9, p0, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;->mCpLyricsLoaders:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser;

    .line 138
    .local v6, "p":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser;
    if-eqz v6, :cond_0

    .line 139
    new-instance v9, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$1;

    invoke-direct {v9, p0, p2, p3}, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$1;-><init>(Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;J)V

    move-object/from16 v0, p6

    invoke-virtual {v6, p2, p3, v9, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser;->requestLyrics(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$OnLyricsLoadFinishedListener;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 117
    .end local v2    # "cp":I
    .end local v3    # "data":Landroid/os/Bundle;
    .end local v6    # "p":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser;
    .end local v7    # "r":Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$Request;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 135
    .restart local v3    # "data":Landroid/os/Bundle;
    .restart local v7    # "r":Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$Request;
    :cond_3
    :try_start_2
    invoke-static {p1}, Lcom/samsung/android/app/music/provider/CpAttrs;->getCpName(I)I

    move-result v2

    .restart local v2    # "cp":I
    goto :goto_2

    .line 148
    .end local v2    # "cp":I
    :cond_4
    const v9, 0x80001

    if-ne p1, v9, :cond_6

    .line 149
    iget-object v9, p0, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->obtain(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;

    move-result-object v8

    .line 150
    .local v8, "server":Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;
    iget-object v9, p0, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;->mContext:Landroid/content/Context;

    move-object/from16 v0, p4

    invoke-interface {v8, v9, v0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object v5

    .line 152
    .local v5, "mdrmContent":Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getLyrics()[B

    move-result-object v1

    .line 153
    .local v1, "byteLyrics":[B
    if-nez v1, :cond_5

    .line 154
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 158
    .local v4, "lyrics":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    :goto_3
    invoke-interface {v8, v5}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;->close(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V

    .line 162
    .end local v1    # "byteLyrics":[B
    .end local v5    # "mdrmContent":Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    .end local v8    # "server":Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;
    :goto_4
    invoke-direct {p0, p2, p3, v4}, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;->notifyClients(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V

    goto :goto_1

    .line 156
    .end local v4    # "lyrics":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .restart local v1    # "byteLyrics":[B
    .restart local v5    # "mdrmContent":Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    .restart local v8    # "server":Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;
    :cond_5
    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v4, v9}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;-><init>(Ljava/lang/String;)V

    .restart local v4    # "lyrics":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    goto :goto_3

    .line 160
    .end local v1    # "byteLyrics":[B
    .end local v4    # "lyrics":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .end local v5    # "mdrmContent":Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    .end local v8    # "server":Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;
    :cond_6
    iget-object v9, p0, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;->mLyricsParser:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;->getLyric(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .restart local v4    # "lyrics":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    goto :goto_4
.end method
