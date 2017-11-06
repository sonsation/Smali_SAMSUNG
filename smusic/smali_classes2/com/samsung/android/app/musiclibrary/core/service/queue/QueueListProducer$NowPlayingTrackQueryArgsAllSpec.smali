.class Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;
.super Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.source "QueueListProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NowPlayingTrackQueryArgsAllSpec"
.end annotation


# static fields
.field private static final DEFAULT_PROJECTION:[Ljava/lang/String;

.field private static final DLNA_PROJECTION:[Ljava/lang/String;

.field private static final OTHER_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 169
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    const-string v1, "artist"

    aput-object v1, v0, v5

    const-string v1, "duration"

    aput-object v1, v0, v6

    const-string v1, "album"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "is_secretbox"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "sampling_rate"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "bit_depth"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "genre_name"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "cp_attrs"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;->DEFAULT_PROJECTION:[Ljava/lang/String;

    .line 179
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    const-string v1, "artist"

    aput-object v1, v0, v5

    const-string v1, "duration"

    aput-object v1, v0, v6

    const-string v1, "album"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "genre_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cp_attrs"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;->DLNA_PROJECTION:[Ljava/lang/String;

    .line 187
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    const-string v1, "artist"

    aput-object v1, v0, v5

    const-string v1, "duration"

    aput-object v1, v0, v6

    const-string v1, "album"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "album_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;->OTHER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 192
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 193
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;->getQueueProjection(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;->projection:[Ljava/lang/String;

    .line 194
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;->selection:Ljava/lang/String;

    .line 195
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;->selectionArgs:[Ljava/lang/String;

    .line 196
    const-string v0, "_id"

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;->orderBy:Ljava/lang/String;

    .line 197
    return-void
.end method


# virtual methods
.method getQueueProjection(Landroid/net/Uri;)[Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 200
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;->DEFAULT_PROJECTION:[Ljava/lang/String;

    .line 201
    :goto_0
    return-object v0

    .line 200
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$ServerContents;->CONTENT_URI:Landroid/net/Uri;

    .line 201
    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;->DLNA_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer$NowPlayingTrackQueryArgsAllSpec;->OTHER_PROJECTION:[Ljava/lang/String;

    goto :goto_0
.end method
