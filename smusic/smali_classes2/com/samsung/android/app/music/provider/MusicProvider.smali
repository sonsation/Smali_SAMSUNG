.class public final Lcom/samsung/android/app/music/provider/MusicProvider;
.super Landroid/content/ContentProvider;
.source "MusicProvider.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/MusicProvider$PlaylistBackupAndRestoreUtil;,
        Lcom/samsung/android/app/music/provider/MusicProvider$Method;
    }
.end annotation


# static fields
.field private static final AUDIO_ALBUMART:I = 0x460

.field private static final AUDIO_ALBUMART_ID:I = 0x461

.field private static final AUDIO_ALBUMS:I = 0x45e

.field private static final AUDIO_ALBUMS_ID:I = 0x45f

.field private static final AUDIO_ARTISTS:I = 0x45b

.field private static final AUDIO_ARTISTS_ID:I = 0x45c

.field private static final AUDIO_BASE_ALBUMS:I = 0x45d

.field private static final AUDIO_BASE_ARTISTS:I = 0x45a

.field private static final AUDIO_BIXBY_SEARCH_TOTAL:I = 0x194

.field private static final AUDIO_COMPOSERS:I = 0x465

.field private static final AUDIO_FOLDERS:I = 0x464

.field private static final AUDIO_GENRES:I = 0x463

.field public static final AUDIO_MEDIA:I = 0x44d

.field private static final AUDIO_MEDIA_BASE:I = 0x3e8

.field public static final AUDIO_MEDIA_ID:I = 0x44e

.field public static final AUDIO_MEDIA_SELETED_GROUP:I = 0x454

.field private static final AUDIO_MEDIA_SYNC_LOCAL_UPDATE:I = 0x12c

.field private static final AUDIO_MOST_PLAYED_RANK:I = 0x477

.field private static final AUDIO_MUSIC_ALBUM_ARTIST:I = 0x478

.field private static final AUDIO_MUSIC_HEARTS:I = 0x474

.field private static final AUDIO_MUSIC_HEARTS_ID:I = 0x475

.field private static final AUDIO_MUSIC_RAW_SQL_STATEMENT:I = 0x3f2

.field private static final AUDIO_NOW_PLAYING_QUEUE:I = 0x453

.field private static final AUDIO_NOW_PLAYING_QUEUE_UNIQUE:I = 0x468

.field public static final AUDIO_PLAYLISTS:I = 0x44f

.field public static final AUDIO_PLAYLISTS_ID:I = 0x450

.field public static final AUDIO_PLAYLISTS_ID_MEMBERS:I = 0x451

.field public static final AUDIO_PLAYLISTS_ID_MEMBERS_ID:I = 0x452

.field private static final AUDIO_PLAYLISTS_META:I = 0x466

.field private static final AUDIO_PLAYLISTS_META_CARDVIEW:I = 0x467

.field private static final AUDIO_PLAYLISTS_SYNC_ALL_BULK_INSERT_ID:I = 0x456

.field private static final AUDIO_PLAYLISTS_SYNC_PLAYLIST_QUEUE:I = 0x457

.field private static final AUDIO_SEARCH_FANCY:I = 0x192

.field private static final AUDIO_SEARCH_FANCY_WITH_TYPE:I = 0x193

.field private static final AUDIO_STREAMING_CACHES:I = 0x476

.field private static final BULK_UPDATE_ALBUM_ART:I = 0x515

.field private static final BULK_UPDATE_AUDIO_MEDIA:I = 0x514

.field private static final BULK_UPDATE_MDRM:I = 0x516

.field static final DEBUG:Z = false

.field private static final DLNA:I = 0x4

.field private static final DLNA_ALBUMART:I = 0xb

.field private static final DLNA_ALL:I = 0xa

.field private static final DLNA_ALL_TABLE_NAME:Ljava/lang/String; = "dlna_all_table"

.field private static final DLNA_AVPLAYER:I = 0x7

.field private static final DLNA_ID:I = 0x5

.field private static final DLNA_OPEN_INTENT_CONTENTS:I = 0x8

.field private static final DLNA_OPEN_INTENT_CONTENTS_ID:I = 0x9

.field private static final DLNA_PROVIDER:I = 0x6

.field private static final DUMMY_SOURCE_ID:I = 0x1

.field private static final MEDIASTORE_CONTENT_AUTHORITY:Ljava/lang/String; = "content://media/external"

.field private static final MEDIA_STORE_ALBUM_ART_URI:Landroid/net/Uri;

.field private static final MUSIC_DB_INFO_SYNC:I = 0xc8

.field private static final RESTORE_CONTENTS_LIST:I = 0xc9

.field private static final TAG:Ljava/lang/String;

.field private static final UNIQUE_KEY_FORMAT:Ljava/lang/String; = "si:%s_md:%s_ca:%d"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field private static final sLocks:Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMdrmAlbumArtToken:Ljava/lang/Object;


# instance fields
.field final mAlbumCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbumSyncHandler:Landroid/os/Handler;

.field final mArtistCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentsProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mDB:Landroid/database/sqlite/SQLiteDatabase;

.field private mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mPlaylistChangeObserver:Landroid/database/ContentObserver;

.field private final mQueryDelegators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/provider/QueryDelegatable;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchColsFancy:[Ljava/lang/String;

.field private mSrcProviderAlbumChangeObserver:Landroid/database/ContentObserver;

.field private mSrcProviderObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x44d

    const/16 v6, 0x194

    const/16 v5, 0x193

    const/16 v4, 0x192

    .line 91
    const-class v0, Lcom/samsung/android/app/music/provider/MusicProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    .line 120
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 232
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "db_info/sync"

    const/16 v3, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 233
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "db_info/restore"

    const/16 v3, 0xc9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 236
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string/jumbo v2, "sync/local/update"

    const/16 v3, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 239
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 240
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/#"

    const/16 v3, 0x44e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 241
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/selected/*"

    const/16 v3, 0x454

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 243
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/playlists"

    const/16 v3, 0x44f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 244
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/playlists/#"

    const/16 v3, 0x450

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 245
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/playlists/#/members"

    const/16 v3, 0x451

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 246
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/playlists/#/members/#"

    const/16 v3, 0x452

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 248
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/playlists/now_playing_queue"

    const/16 v3, 0x453

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 249
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/playlists/now_playing_queue_unique"

    const/16 v3, 0x468

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 251
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/playlists/sync_all_bulk_insert/#"

    const/16 v3, 0x456

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 252
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/playlists/sync_playlist_queue"

    const/16 v3, 0x457

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 254
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/playlists/meta"

    const/16 v3, 0x466

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 255
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/playlists/meta/cardview"

    const/16 v3, 0x467

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 257
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/base_artists"

    const/16 v3, 0x45a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 258
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/music_artists_album_id"

    const/16 v3, 0x45b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 259
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/music_artists_album_id/#"

    const/16 v3, 0x45c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 261
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/base_albums"

    const/16 v3, 0x45d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 262
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/music_albums"

    const/16 v3, 0x45e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 263
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/music_albums/#"

    const/16 v3, 0x45f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 264
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/albumart"

    const/16 v3, 0x460

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 265
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/albumart/#"

    const/16 v3, 0x461

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 267
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/music_genres"

    const/16 v3, 0x463

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 268
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/music_folders"

    const/16 v3, 0x464

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 269
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/music_composers"

    const/16 v3, 0x465

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 272
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/search/fancy"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 273
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/search/fancy/*"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 274
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/search/#/type"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 275
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/search/#/type/*"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 278
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/search/bixby_total"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 279
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/search/bixby_total/*"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 281
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/raw_sql/*"

    const/16 v3, 0x3f2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 284
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/hearts"

    const/16 v3, 0x474

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 285
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/hearts/#"

    const/16 v3, 0x475

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 288
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/music_albumartist"

    const/16 v3, 0x478

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 291
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/online/caches/streaming"

    const/16 v3, 0x476

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 294
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "dlna_dms_contents_table"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 295
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "dlna_dms_contents_table/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 296
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "dlna_album_art"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 297
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "dlna_dms_table"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 298
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "dlna_dmr_table"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 299
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "dlna_open_intent_table"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 300
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "dlna_open_intent_table/#"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 301
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "dlna_all_table"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 304
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 307
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "audio/media/most_played_rank"

    const/16 v3, 0x477

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 932
    const-string v0, "content://media/external/audio/albumart"

    .line 933
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->MEDIA_STORE_ALBUM_ART_URI:Landroid/net/Uri;

    .line 937
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;

    const-wide/16 v2, 0x7d0

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;-><init>(J)V

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->sLocks:Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;

    .line 994
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->sMdrmAlbumArtToken:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 226
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mContentsProviders:Ljava/util/List;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mQueryDelegators:Ljava/util/List;

    .line 347
    new-instance v0, Lcom/samsung/android/app/music/provider/MusicProvider$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/provider/MusicProvider$1;-><init>(Lcom/samsung/android/app/music/provider/MusicProvider;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 417
    new-instance v0, Lcom/samsung/android/app/music/provider/MusicProvider$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/provider/MusicProvider$2;-><init>(Lcom/samsung/android/app/music/provider/MusicProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mSrcProviderObserver:Landroid/database/ContentObserver;

    .line 454
    new-instance v0, Lcom/samsung/android/app/music/provider/MusicProvider$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/provider/MusicProvider$3;-><init>(Lcom/samsung/android/app/music/provider/MusicProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mPlaylistChangeObserver:Landroid/database/ContentObserver;

    .line 489
    new-instance v0, Lcom/samsung/android/app/music/provider/MusicProvider$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/provider/MusicProvider$4;-><init>(Lcom/samsung/android/app/music/provider/MusicProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mSrcProviderAlbumChangeObserver:Landroid/database/ContentObserver;

    .line 504
    new-instance v0, Lcom/samsung/android/app/music/provider/MusicProvider$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/provider/MusicProvider$5;-><init>(Lcom/samsung/android/app/music/provider/MusicProvider;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mAlbumSyncHandler:Landroid/os/Handler;

    .line 1227
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "null AS dummy_album_art"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "cp_attrs"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mSearchColsFancy:[Ljava/lang/String;

    .line 2613
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mAlbumCache:Ljava/util/HashMap;

    .line 2615
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mArtistCache:Ljava/util/HashMap;

    .line 227
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/provider/MusicProvider;I)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/provider/MusicProvider;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicProvider;->getMusicDBCount(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/provider/MusicProvider;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/provider/MusicProvider;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getMediaDBCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/provider/MusicProvider;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/provider/MusicProvider;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mAlbumSyncHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/provider/MusicProvider;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/provider/MusicProvider;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/provider/MusicProvider;->getCount(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)I

    move-result v0

    return v0
.end method

.method static appendSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "selection"    # Ljava/lang/String;
    .param p1, "appendSelection"    # Ljava/lang/String;

    .prologue
    .line 2004
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object p0, p1

    .line 2010
    .end local p0    # "selection":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0

    .line 2007
    .restart local p0    # "selection":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private bulkInsertInternal(Landroid/net/Uri;[Landroid/content/ContentValues;I)I
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;
    .param p3, "match"    # I

    .prologue
    .line 1356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1357
    .local v2, "time1":J
    iget-object v7, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1358
    const/4 v1, 0x0

    .line 1360
    .local v1, "numInserted":I
    :try_start_0
    array-length v8, p2

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v6, p2, v7

    .line 1361
    .local v6, "value":Landroid/content/ContentValues;
    if-eqz v6, :cond_0

    .line 1362
    invoke-direct {p0, p1, p3, v6}, Lcom/samsung/android/app/music/provider/MusicProvider;->insertInternal(Landroid/net/Uri;ILandroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1363
    .local v0, "newUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 1364
    add-int/lit8 v1, v1, 0x1

    .line 1360
    .end local v0    # "newUri":Landroid/net/Uri;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1368
    .end local v6    # "value":Landroid/content/ContentValues;
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1370
    iget-object v7, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1376
    .local v4, "time2":J
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/music/provider/MusicProvider;->notifyMultipleChanges(Landroid/net/Uri;I)V

    .line 1377
    return v1

    .line 1370
    .end local v4    # "time2":J
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7
.end method

.method private bulkInsertOnlineCaches([Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 8
    .param p1, "values"    # [Landroid/content/ContentValues;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1880
    const/4 v0, 0x0

    .line 1881
    .local v0, "numInserted":I
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1883
    :try_start_0
    array-length v5, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, p1, v4

    .line 1884
    .local v1, "value":Landroid/content/ContentValues;
    const-string/jumbo v6, "streaming_cache_table"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 1885
    .local v2, "rowId":J
    add-int/lit8 v0, v0, 0x1

    .line 1883
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1887
    .end local v1    # "value":Landroid/content/ContentValues;
    .end local v2    # "rowId":J
    :cond_0
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1889
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1891
    return v0

    .line 1889
    :catchall_0
    move-exception v4

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method private bulkUpdate(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 3262
    sget-object v5, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    const-string v6, "bulkUpdate() is called."

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3264
    const/16 v2, 0x514

    .line 3265
    .local v2, "match":I
    const-string v5, "match"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3266
    .local v1, "keyValue":Ljava/lang/String;
    const-string v5, "albumArt"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3267
    const/16 v2, 0x515

    .line 3272
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3273
    const/4 v3, 0x0

    .line 3275
    .local v3, "numUpdated":I
    :try_start_0
    array-length v6, p2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v4, p2, v5

    .line 3276
    .local v4, "value":Landroid/content/ContentValues;
    if-eqz v4, :cond_1

    .line 3277
    invoke-direct {p0, v2, v4}, Lcom/samsung/android/app/music/provider/MusicProvider;->bulkUpdateInternal(ILandroid/content/ContentValues;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    add-int/2addr v3, v7

    .line 3275
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3268
    .end local v3    # "numUpdated":I
    .end local v4    # "value":Landroid/content/ContentValues;
    :cond_2
    const-string v5, "mdrm"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3269
    const/16 v2, 0x516

    goto :goto_0

    .line 3280
    .restart local v3    # "numUpdated":I
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3287
    iget-object v5, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3291
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->MUSIC_PROVIDER_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    .line 3292
    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3293
    return v3

    .line 3281
    :catch_0
    move-exception v0

    .line 3285
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const/4 v3, 0x0

    .line 3287
    iget-object v5, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method

.method private bulkUpdateInternal(ILandroid/content/ContentValues;)I
    .locals 5
    .param p1, "match"    # I
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x0

    .line 3298
    const/4 v0, 0x0

    .line 3299
    .local v0, "count":I
    packed-switch p1, :pswitch_data_0

    .line 3322
    :goto_0
    return v0

    .line 3302
    :pswitch_0
    const-string/jumbo v2, "source_id"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "source_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "source_id"

    .line 3304
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3309
    .local v1, "selection":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v2, p2, v1, v4}, Lcom/samsung/android/app/music/provider/MusicProvider;->updateAudioFile(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3310
    goto :goto_0

    .line 3306
    .end local v1    # "selection":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    .line 3307
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "selection":Ljava/lang/String;
    goto :goto_1

    .line 3312
    .end local v1    # "selection":Ljava/lang/String;
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "source_album_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "source_album_id"

    .line 3313
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3314
    .restart local v1    # "selection":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "album_art"

    invoke-virtual {v2, v3, p2, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3315
    goto :goto_0

    .line 3317
    .end local v1    # "selection":Ljava/lang/String;
    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v2, p2}, Lcom/samsung/android/app/music/provider/MusicProvider;->updateMdrmInfo(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I

    move-result v0

    .line 3318
    goto :goto_0

    .line 3299
    :pswitch_data_0
    .packed-switch 0x514
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private checkNeedUpdateOrNot(Landroid/database/Cursor;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "isAlbum"    # Z
    .param p3, "nameField"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "sourceIdField"    # Ljava/lang/String;
    .param p6, "sourceNameId"    # Ljava/lang/String;
    .param p7, "albumArtist"    # Ljava/lang/String;

    .prologue
    .line 3185
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3186
    .local v1, "currentName":Ljava/lang/String;
    invoke-interface {p1, p5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 3187
    .local v2, "currentSourceId":J
    const-string v5, "<unknown>"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz p4, :cond_3

    const-string v5, "<unknown>"

    .line 3188
    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v4, 0x1

    .line 3189
    .local v4, "needUpdate":Z
    :goto_0
    if-nez v4, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-nez v5, :cond_4

    if-eqz p6, :cond_4

    .line 3190
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    const/4 v4, 0x1

    .line 3191
    :goto_1
    const/4 v0, 0x0

    .line 3192
    .local v0, "currentAlbumArtist":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 3193
    const-string v5, "album_artist"

    .line 3194
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3195
    if-nez v4, :cond_1

    if-nez v0, :cond_5

    if-eqz p7, :cond_5

    :cond_1
    const/4 v4, 0x1

    .line 3203
    :cond_2
    :goto_2
    return v4

    .line 3188
    .end local v0    # "currentAlbumArtist":Ljava/lang/String;
    .end local v4    # "needUpdate":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 3190
    .restart local v4    # "needUpdate":Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 3195
    .restart local v0    # "currentAlbumArtist":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method

.method static combine(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "userArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "prepend":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 1211
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 1212
    .local v2, "preSize":I
    if-nez v2, :cond_0

    .line 1224
    .end local p1    # "userArgs":[Ljava/lang/String;
    :goto_0
    return-object p1

    .line 1216
    .restart local p1    # "userArgs":[Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    array-length v3, p1

    .line 1217
    .local v3, "userSize":I
    :goto_1
    add-int v4, v2, v3

    new-array v0, v4, [Ljava/lang/String;

    .line 1218
    .local v0, "combined":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 1219
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v1

    .line 1218
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "combined":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v3    # "userSize":I
    :cond_1
    move v3, v5

    .line 1216
    goto :goto_1

    .line 1221
    .restart local v0    # "combined":[Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v3    # "userSize":I
    :cond_2
    if-eqz p1, :cond_3

    .line 1222
    invoke-static {p1, v5, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    move-object p1, v0

    .line 1224
    goto :goto_0
.end method

.method private computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 7
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 2834
    const-string v5, "bucket_id"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2835
    .local v1, "bucketId":Ljava/lang/String;
    const-string v5, "bucket_display_name"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2837
    .local v0, "bucketDisplayName":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    .line 2838
    :cond_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 2839
    .local v3, "parentFile":Ljava/io/File;
    if-nez v3, :cond_1

    .line 2840
    new-instance v3, Ljava/io/File;

    .end local v3    # "parentFile":Ljava/io/File;
    const-string v5, "/"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2842
    .restart local v3    # "parentFile":Ljava/io/File;
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 2843
    .local v4, "path":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2846
    .local v2, "name":Ljava/lang/String;
    const-string v5, "bucket_id"

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2847
    const-string v5, "bucket_display_name"

    invoke-virtual {p2, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2849
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "parentFile":Ljava/io/File;
    .end local v4    # "path":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private computeComposer(Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 2852
    const-string v1, "composer"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2853
    .local v0, "composer":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 2854
    :cond_0
    const-string v1, "composer"

    const-string v2, "<unknown>"

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2856
    :cond_1
    return-void
.end method

.method private computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 2825
    if-nez p1, :cond_1

    const-string v1, ""

    .line 2826
    .local v1, "s":Ljava/lang/String;
    :goto_0
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2827
    .local v0, "idx":I
    if-ltz v0, :cond_0

    .line 2828
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2830
    :cond_0
    const-string v2, "_display_name"

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2831
    return-void

    .end local v0    # "idx":I
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    move-object v1, p1

    .line 2825
    goto :goto_0
.end method

.method private computeLocalTrackId(Landroid/content/ContentValues;)V
    .locals 11
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    .line 3517
    const-string/jumbo v7, "track"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "track"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3518
    .local v1, "track":I
    :goto_0
    const-string v7, "_size"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string v7, "_size"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 3519
    .local v4, "size":J
    :goto_1
    const-string v7, "duration"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v7, "duration"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 3520
    .local v2, "duration":J
    :goto_2
    if-nez v1, :cond_3

    cmp-long v7, v4, v8

    if-nez v7, :cond_3

    cmp-long v7, v2, v8

    if-nez v7, :cond_3

    .line 3525
    const-string v6, "_data"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3526
    .local v0, "data":Ljava/lang/String;
    const-string v6, "local_track_id"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3531
    .end local v0    # "data":Ljava/lang/String;
    :goto_3
    return-void

    .end local v1    # "track":I
    .end local v2    # "duration":J
    .end local v4    # "size":J
    :cond_0
    move v1, v6

    .line 3517
    goto :goto_0

    .restart local v1    # "track":I
    :cond_1
    move-wide v4, v8

    .line 3518
    goto :goto_1

    .restart local v4    # "size":J
    :cond_2
    move-wide v2, v8

    .line 3519
    goto :goto_2

    .line 3528
    .restart local v2    # "duration":J
    :cond_3
    const-string v7, "local_track_id"

    const-string v8, "%d@%d@%d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    const/4 v6, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v6

    const/4 v6, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private computePinyinInternal(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "originColumn"    # Ljava/lang/String;
    .param p3, "pinyinColumn"    # Ljava/lang/String;

    .prologue
    .line 2908
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2909
    .local v0, "originValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2910
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/PinyinUtil;->computeChineseSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2912
    :cond_0
    return-void
.end method

.method private computePinyinValues(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 2891
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->REGIONAL_CHN_PINYIN_ENABLED:Z

    if-nez v0, :cond_0

    .line 2904
    :goto_0
    return-void

    .line 2894
    :cond_0
    const-string/jumbo v0, "title"

    const-string/jumbo v1, "title_pinyin"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->computePinyinInternal(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 2895
    const-string v0, "music_album_artist"

    const-string v1, "music_album_artist_pinyin"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->computePinyinInternal(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 2897
    const-string v0, "genre_name"

    const-string v1, "genre_name_pinyin"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->computePinyinInternal(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 2899
    const-string v0, "composer"

    const-string v1, "composer_pinyin"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->computePinyinInternal(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 2901
    const-string v0, "_display_name"

    const-string v1, "_display_name_pinyin"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->computePinyinInternal(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 2902
    const-string v0, "bucket_display_name"

    const-string v1, "bucket_display_name_pinyin"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->computePinyinInternal(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private computePlaylistNamePinyinAndSortKey(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 4
    .param p1, "initialValues"    # Landroid/content/ContentValues;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 2409
    const-string v0, "name"

    .line 2410
    .local v0, "nameColumn":Ljava/lang/String;
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->REGIONAL_CHN_PINYIN_ENABLED:Z

    if-eqz v2, :cond_1

    .line 2411
    const-string v2, "name_pinyin"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2412
    .local v1, "namePinyin":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2413
    const-string v2, "name_pinyin"

    .line 2414
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/PinyinUtil;->computeChineseSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2416
    :cond_0
    const-string v0, "name_pinyin"

    .line 2419
    .end local v1    # "namePinyin":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private computeSortKeyInternal(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "originColumn"    # Ljava/lang/String;
    .param p3, "keyColumn"    # Ljava/lang/String;

    .prologue
    .line 2951
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2952
    .local v0, "originValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2953
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/MusicDatabaseUtil;->getCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2955
    :cond_0
    return-void
.end method

.method private computeSortKeyValues(Landroid/content/ContentValues;)V
    .locals 7
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 2925
    sget-boolean v6, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->REGIONAL_CHN_PINYIN_ENABLED:Z

    if-eqz v6, :cond_0

    .line 2926
    const-string/jumbo v5, "title_pinyin"

    .line 2927
    .local v5, "title":Ljava/lang/String;
    const-string v4, "music_album_artist_pinyin"

    .line 2928
    .local v4, "musicAlbumArtist":Ljava/lang/String;
    const-string v3, "genre_name_pinyin"

    .line 2929
    .local v3, "genreName":Ljava/lang/String;
    const-string v1, "composer_pinyin"

    .line 2930
    .local v1, "composer":Ljava/lang/String;
    const-string v2, "_display_name_pinyin"

    .line 2931
    .local v2, "displayName":Ljava/lang/String;
    const-string v0, "bucket_display_name_pinyin"

    .line 2941
    .local v0, "bucketDisplayName":Ljava/lang/String;
    :goto_0
    const-string/jumbo v6, "title_key"

    invoke-direct {p0, p1, v5, v6}, Lcom/samsung/android/app/music/provider/MusicProvider;->computeSortKeyInternal(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 2947
    return-void

    .line 2933
    .end local v0    # "bucketDisplayName":Ljava/lang/String;
    .end local v1    # "composer":Ljava/lang/String;
    .end local v2    # "displayName":Ljava/lang/String;
    .end local v3    # "genreName":Ljava/lang/String;
    .end local v4    # "musicAlbumArtist":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "title"

    .line 2934
    .restart local v5    # "title":Ljava/lang/String;
    const-string v4, "music_album_artist"

    .line 2935
    .restart local v4    # "musicAlbumArtist":Ljava/lang/String;
    const-string v3, "genre_name"

    .line 2936
    .restart local v3    # "genreName":Ljava/lang/String;
    const-string v1, "composer"

    .line 2937
    .restart local v1    # "composer":Ljava/lang/String;
    const-string v2, "_display_name"

    .line 2938
    .restart local v2    # "displayName":Ljava/lang/String;
    const-string v0, "bucket_display_name"

    .restart local v0    # "bucketDisplayName":Ljava/lang/String;
    goto :goto_0
.end method

.method private computeTitleUnique(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "cpAttrs"    # Ljava/lang/Integer;

    .prologue
    .line 2882
    const-string/jumbo v1, "source_id"

    .line 2883
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/samsung/android/app/music/provider/MusicProvider;->makeUniqueKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 2884
    .local v0, "uniqueKey":Ljava/lang/String;
    const-string/jumbo v1, "title_unique_key"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2885
    return-void
.end method

.method private convertYearToYearName(Landroid/content/ContentValues;)V
    .locals 7
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v5, 0x4

    .line 2859
    const-string/jumbo v4, "year_name"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "year"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2879
    :cond_0
    :goto_0
    return-void

    .line 2863
    :cond_1
    const-string/jumbo v4, "year"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2864
    .local v2, "yearStr":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2866
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2867
    .local v1, "year":I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 2868
    .local v3, "year_name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_2

    .line 2869
    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2871
    :cond_2
    const-string/jumbo v4, "year_name"

    .line 2872
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x76c

    if-lt v5, v6, :cond_3

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    .line 2873
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 2871
    .end local v3    # "year_name":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2874
    .end local v1    # "year":I
    :catch_0
    move-exception v0

    .line 2875
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertYearToYearName yearStr "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2876
    const-string/jumbo v4, "year_name"

    const-string v5, "<unknown>"

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2873
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "year":I
    .restart local v3    # "year_name":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v3, "<unknown>"
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private deleteAudioMedia(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 2016
    const/16 v21, 0x0

    .line 2017
    .local v21, "where":Ljava/lang/String;
    const-string/jumbo v3, "syncFlow"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2020
    .local v20, "syncAction":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 2021
    .local v16, "sb":Ljava/lang/StringBuilder;
    if-eqz p4, :cond_0

    .line 2022
    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2024
    :cond_0
    const-string v3, "("

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->buildCpAttrSelection(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    .line 2025
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2026
    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "group_concat(_id,\',\')"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "group_concat(source_id,\',\')"

    aput-object v4, v5, v3

    .line 2029
    .local v5, "projection":[Ljava/lang/String;
    const/4 v15, 0x0

    .line 2030
    .local v15, "idsIndex":I
    const/16 v19, 0x1

    .line 2032
    .local v19, "sourceIdsIndex":I
    const-string v4, "audio_meta"

    .line 2033
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p2

    move-object/from16 v7, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2032
    .local v11, "c":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 2035
    if-eqz v11, :cond_2

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2037
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2038
    .local v14, "ids":Ljava/lang/String;
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 2039
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v14, v2}, Lcom/samsung/android/app/music/provider/MusicProvider;->deleteFromTablesWithAudioIds(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    :cond_1
    const-string v3, "no_action"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2044
    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2045
    .local v18, "sourceIds":Ljava/lang/String;
    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 2046
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v3, "_id"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2047
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    .local v17, "sb":Ljava/lang/StringBuilder;
    :try_start_1
    const-string v3, " IN("

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2048
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v21

    move-object/from16 v16, v17

    .line 2053
    .end local v14    # "ids":Ljava/lang/String;
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    .end local v18    # "sourceIds":Ljava/lang/String;
    .restart local v16    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    if-eqz v11, :cond_3

    if-eqz v4, :cond_5

    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 2056
    :cond_3
    :goto_0
    const-string v3, "audio_meta"

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 2059
    .local v12, "count":I
    if-eqz v21, :cond_4

    .line 2060
    const-string v3, "external"

    .line 2061
    invoke-static {v3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v3, v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 2062
    .local v13, "deleted":I
    sget-object v3, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteAudioMedia : source provider - deleted "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", where : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2064
    if-lez v13, :cond_4

    .line 2065
    const/16 v3, 0xe

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->sync(Landroid/content/Context;I)V

    .line 2068
    .end local v13    # "deleted":I
    :cond_4
    return v12

    .line 2053
    .end local v12    # "count":I
    :catch_0
    move-exception v3

    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2032
    :catch_1
    move-exception v3

    :goto_1
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2053
    :catchall_0
    move-exception v4

    move-object/from16 v22, v4

    move-object v4, v3

    move-object/from16 v3, v22

    :goto_2
    if-eqz v11, :cond_6

    if-eqz v4, :cond_7

    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_6
    :goto_3
    throw v3

    :catch_2
    move-exception v6

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v3

    goto :goto_2

    .end local v16    # "sb":Ljava/lang/StringBuilder;
    .restart local v14    # "ids":Ljava/lang/String;
    .restart local v17    # "sb":Ljava/lang/StringBuilder;
    .restart local v18    # "sourceIds":Ljava/lang/String;
    :catchall_2
    move-exception v3

    move-object/from16 v16, v17

    .end local v17    # "sb":Ljava/lang/StringBuilder;
    .restart local v16    # "sb":Ljava/lang/StringBuilder;
    goto :goto_2

    .line 2032
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    .restart local v17    # "sb":Ljava/lang/StringBuilder;
    :catch_3
    move-exception v3

    move-object/from16 v16, v17

    .end local v17    # "sb":Ljava/lang/StringBuilder;
    .restart local v16    # "sb":Ljava/lang/StringBuilder;
    goto :goto_1
.end method

.method private deleteFromTablesWithAudioIds(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "audioIds"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "syncAction"    # Ljava/lang/String;

    .prologue
    .line 2073
    const-string v4, "no_action"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2074
    sget-object v4, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    const-string v5, "deleteFromTablesWithAudioIds : not delete audio_playlists_map because of SYNC_FLOW_NO_ACTION"

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2087
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mContentsProviders:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;

    .line 2088
    .local v1, "provider":Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;
    invoke-interface {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;->deleteFromTablesWithAudioIds(Ljava/lang/String;)V

    goto :goto_1

    .line 2077
    .end local v1    # "provider":Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "audio_id"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2078
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v4, " IN("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") AND audio_data IS NOT NULL AND audio_data NOT LIKE \'dummy%\'"

    .line 2079
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2080
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2081
    .local v3, "where":Ljava/lang/String;
    const-string v4, "audio_playlists_map"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2082
    .local v0, "deleted":I
    sget-object v4, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteFromTablesWithAudioIds : audio_playlists_map - deleted "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", where:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2090
    .end local v0    # "deleted":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "where":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private dlnaContentsBulkInsert([Landroid/content/ContentValues;)I
    .locals 14
    .param p1, "values"    # [Landroid/content/ContentValues;

    .prologue
    const/4 v13, 0x0

    const/4 v3, 0x0

    .line 1838
    array-length v11, p1

    .line 1839
    .local v11, "length":I
    const/4 v10, 0x0

    .line 1841
    .local v10, "lastAlbumId":I
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "dlna_album_art"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "album_id"

    aput-object v4, v2, v13

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1844
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1845
    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z

    .line 1846
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result v10

    .line 1848
    :cond_0
    if-eqz v9, :cond_1

    if-eqz v3, :cond_2

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1850
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1852
    :try_start_2
    array-length v1, p1

    move v0, v13

    :goto_1
    if-ge v0, v1, :cond_5

    aget-object v12, p1, v0

    .line 1853
    .local v12, "value":Landroid/content/ContentValues;
    add-int/lit8 v10, v10, 0x1

    .line 1855
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1856
    .local v8, "albumArtValue":Landroid/content/ContentValues;
    const-string v2, "album_id"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1858
    const-string v2, "album_art"

    const-string v3, "album_art"

    .line 1859
    invoke-virtual {v12, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1858
    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "dlna_album_art"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1864
    const-string v2, "_size"

    const-string v3, "_size"

    .line 1865
    invoke-virtual {v12, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1864
    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    const-string v2, "album_id"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1868
    const-string v2, "album_art"

    invoke-virtual {v12, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1870
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "dlna_dms_contents_table"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1852
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1848
    .end local v8    # "albumArtValue":Landroid/content/ContentValues;
    .end local v12    # "value":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1841
    :catch_1
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1848
    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_2
    if-eqz v9, :cond_3

    if-eqz v3, :cond_4

    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 1872
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1874
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1876
    return v11

    .line 1874
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 1848
    :catchall_2
    move-exception v0

    goto :goto_2
.end method

.method private doAudioSearch(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;
    .locals 19
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "qb"    # Landroid/database/sqlite/SQLiteQueryBuilder;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projectionIn"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "sort"    # Ljava/lang/String;
    .param p8, "uriMatch"    # I
    .param p9, "limit"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1023
    sget-object v2, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doAudioSearch : uriMatch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v15, ""

    .line 1025
    .local v15, "mSearchString":Ljava/lang/String;
    :goto_0
    const-string v2, "  "

    const-string v3, " "

    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 1028
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, " "

    invoke-virtual {v15, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 1029
    .local v17, "searchWords":[Ljava/lang/String;
    :goto_1
    move-object/from16 v0, v17

    array-length v2, v0

    new-array v6, v2, [Ljava/lang/String;

    .line 1030
    .local v6, "wildcardWords":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v14, v0

    .line 1031
    .local v14, "len":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v14, :cond_2

    .line 1032
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v17, v12

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v12

    .line 1031
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1024
    .end local v6    # "wildcardWords":[Ljava/lang/String;
    .end local v12    # "i":I
    .end local v14    # "len":I
    .end local v15    # "mSearchString":Ljava/lang/String;
    .end local v17    # "searchWords":[Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    .line 1028
    .restart local v15    # "mSearchString":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v17, v0

    goto :goto_1

    .line 1035
    .restart local v6    # "wildcardWords":[Ljava/lang/String;
    .restart local v12    # "i":I
    .restart local v14    # "len":I
    .restart local v17    # "searchWords":[Ljava/lang/String;
    :cond_2
    const-string v5, ""

    .line 1036
    .local v5, "where":Ljava/lang/String;
    const/4 v12, 0x0

    :goto_3
    move-object/from16 v0, v17

    array-length v2, v0

    if-ge v12, v2, :cond_4

    .line 1037
    if-nez v12, :cond_3

    .line 1038
    const-string v5, "match LIKE ? ESCAPE \'\\\'"

    .line 1036
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1040
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND match LIKE ? ESCAPE \'\\\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 1045
    :cond_4
    const/16 v2, 0x192

    move/from16 v0, p8

    if-ne v0, v2, :cond_6

    .line 1046
    const-string/jumbo v18, "search"

    .line 1062
    .local v18, "tableName":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1063
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mSearchColsFancy:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object/from16 v10, p9

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1064
    .local v11, "c":Landroid/database/Cursor;
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v8, p9

    .line 1065
    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/app/music/provider/MusicProvider;->makeSearchSectionIndexExtras(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    .line 1066
    .local v13, "indexBundle":Landroid/os/Bundle;
    if-eqz v11, :cond_5

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_5

    .line 1067
    invoke-interface {v11, v13}, Landroid/database/Cursor;->setExtras(Landroid/os/Bundle;)V

    .line 1069
    :cond_5
    return-object v11

    .line 1049
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v13    # "indexBundle":Landroid/os/Bundle;
    .end local v18    # "tableName":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1048
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1050
    .local v16, "searchType":I
    packed-switch v16, :pswitch_data_0

    .line 1059
    const-string/jumbo v18, "search_track"

    .restart local v18    # "tableName":Ljava/lang/String;
    goto :goto_5

    .line 1052
    .end local v18    # "tableName":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v18, "search_artist"

    .line 1053
    .restart local v18    # "tableName":Ljava/lang/String;
    goto :goto_5

    .line 1055
    .end local v18    # "tableName":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v18, "search_album"

    .line 1056
    .restart local v18    # "tableName":Ljava/lang/String;
    goto :goto_5

    .line 1050
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private doBixbySearch(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "qb"    # Landroid/database/sqlite/SQLiteQueryBuilder;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projectionIn"    # [Ljava/lang/String;
    .param p5, "sort"    # Ljava/lang/String;
    .param p6, "limit"    # Ljava/lang/String;

    .prologue
    .line 1074
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doBixbySearch : uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v9, ""

    .line 1076
    .local v9, "searchString":Ljava/lang/String;
    :goto_0
    const-string v0, "  "

    const-string v1, " "

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 1078
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, " "

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1080
    .local v10, "searchWords":[Ljava/lang/String;
    :goto_1
    array-length v8, v10

    .line 1081
    .local v8, "len":I
    if-nez v8, :cond_2

    .line 1082
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    const-string v1, "doBixbySearch "

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    const/4 v6, 0x0

    .line 1102
    :goto_2
    return-object v6

    .line 1075
    .end local v8    # "len":I
    .end local v9    # "searchString":Ljava/lang/String;
    .end local v10    # "searchWords":[Ljava/lang/String;
    :cond_0
    invoke-virtual {p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 1078
    .restart local v9    # "searchString":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    new-array v10, v0, [Ljava/lang/String;

    goto :goto_1

    .line 1086
    .restart local v8    # "len":I
    .restart local v10    # "searchWords":[Ljava/lang/String;
    :cond_2
    new-array v3, v8, [Ljava/lang/String;

    .line 1087
    .local v3, "wildcardWords":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v8, :cond_3

    .line 1088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v10, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    .line 1087
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    .line 1091
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/MusicProvider;->doBixbySearchInternalStep1(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1092
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1093
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    const-string v1, "doBixbySearch : step1 return result"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1096
    :cond_4
    if-eqz v6, :cond_5

    .line 1097
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    .line 1100
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/MusicProvider;->doBixbySearchInternalStep2(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1101
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    const-string v1, "doBixbySearch : step2 return result"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private doBixbySearchInternalStep1(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 19
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "projectionIn"    # [Ljava/lang/String;
    .param p3, "wildcardWords"    # [Ljava/lang/String;
    .param p4, "sort"    # Ljava/lang/String;
    .param p5, "limit"    # Ljava/lang/String;

    .prologue
    .line 1123
    const/4 v1, 0x3

    new-array v15, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "title"

    aput-object v2, v15, v1

    const/4 v1, 0x1

    const-string v2, "artist"

    aput-object v2, v15, v1

    const/4 v1, 0x2

    const-string v2, "album"

    aput-object v2, v15, v1

    .line 1125
    .local v15, "matchColumns":[Ljava/lang/String;
    array-length v11, v15

    .line 1126
    .local v11, "columnLength":I
    move-object/from16 v0, p3

    array-length v14, v0

    .line 1128
    .local v14, "keywordLength":I
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1129
    .local v18, "selectionArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    mul-int v17, v14, v11

    .line 1130
    .local v17, "selectionArgsLength":I
    move/from16 v0, v17

    new-array v5, v0, [Ljava/lang/String;

    .line 1131
    .local v5, "selectionArgs":[Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 1132
    .local v16, "sb":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v11, :cond_3

    .line 1133
    const-string v1, "("

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    if-ge v13, v14, :cond_1

    .line 1135
    if-nez v13, :cond_0

    .line 1136
    aget-object v1, v15, v12

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIKE ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    :goto_2
    mul-int v1, v12, v14

    add-int/2addr v1, v13

    aget-object v2, p3, v13

    aput-object v2, v5, v1

    .line 1134
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1138
    :cond_0
    const-string v1, " AND "

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v15, v12

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIKE ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1146
    :cond_1
    add-int/lit8 v1, v11, -0x1

    if-ne v12, v1, :cond_2

    .line 1147
    const-string v1, ")"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1149
    :cond_2
    const-string v1, ") OR "

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1153
    .end local v13    # "j":I
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    .line 1154
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->buildCpAttrSelection(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1156
    .local v4, "selection":Ljava/lang/String;
    const-string v2, "audio"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 1157
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1159
    .local v10, "c":Landroid/database/Cursor;
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doBixbySearchInternalStep1 return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1160
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", where "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", selectionArgs :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1159
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    return-object v10
.end method

.method private doBixbySearchInternalStep2(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "projectionIn"    # [Ljava/lang/String;
    .param p3, "wildcardWords"    # [Ljava/lang/String;
    .param p4, "sort"    # Ljava/lang/String;
    .param p5, "limit"    # Ljava/lang/String;

    .prologue
    .line 1168
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1169
    .local v11, "selectionArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, ""

    .line 1170
    .local v3, "where":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v0, p3

    if-ge v10, v0, :cond_1

    .line 1171
    if-nez v10, :cond_0

    .line 1172
    const-string v3, "match LIKE ? ESCAPE \'\\\'"

    .line 1170
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1174
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND match LIKE ? ESCAPE \'\\\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1181
    :cond_1
    const-string v1, "bixby_total_search"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v4, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1183
    .local v9, "c":Landroid/database/Cursor;
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doBixbySearchInternalStep2 return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", selectionArgs :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    return-object v9
.end method

.method private doBixbySearchInternalStep3(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "projectionIn"    # [Ljava/lang/String;
    .param p3, "wildcardWords"    # [Ljava/lang/String;
    .param p4, "sort"    # Ljava/lang/String;
    .param p5, "limit"    # Ljava/lang/String;

    .prologue
    .line 1190
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1191
    .local v11, "selectionArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, ""

    .line 1192
    .local v3, "where":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v0, p3

    if-ge v10, v0, :cond_1

    .line 1193
    if-nez v10, :cond_0

    .line 1194
    const-string v3, "match LIKE ? ESCAPE \'\\\'"

    .line 1192
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1196
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR match LIKE ? ESCAPE \'\\\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1203
    :cond_1
    const-string v1, "bixby_total_search"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v4, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1205
    .local v9, "c":Landroid/database/Cursor;
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doBixbySearchInternalStep3 return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", selectionArgs :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    return-object v9
.end method

.method private findMatchedProvider(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 3496
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mContentsProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;

    .line 3497
    .local v0, "provider":Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;->isMatchUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3501
    .end local v0    # "provider":Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findMatchedProvider(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 3506
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mContentsProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;

    .line 3507
    .local v0, "provider":Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;->isMatchMethod(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3511
    .end local v0    # "provider":Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAlbumHashValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "albumArtist"    # Ljava/lang/String;
    .param p2, "directoryPath"    # Ljava/lang/String;

    .prologue
    .line 2694
    if-eqz p1, :cond_0

    .line 2695
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 2701
    .local v0, "hashValue":I
    :goto_0
    return v0

    .line 2697
    .end local v0    # "hashValue":I
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string p2, "<unknown>"

    .line 2699
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .restart local v0    # "hashValue":I
    goto :goto_0
.end method

.method private getAlbumIdFromOnlineContentValues(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;ZI)J
    .locals 25
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "updateAlbum"    # Z
    .param p4, "cpAttrs"    # I

    .prologue
    .line 1781
    const-string v2, "album"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1782
    .local v4, "album":Ljava/lang/String;
    const-string v2, "album_artist"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1783
    .local v5, "albumArtist":Ljava/lang/String;
    const-string v2, "album_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1793
    .local v3, "sourceAlbumId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mAlbumCache:Ljava/util/HashMap;

    monitor-enter v8

    .line 1794
    const/4 v6, 0x0

    move-object/from16 v2, p0

    move/from16 v7, p4

    :try_start_0
    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/music/provider/MusicProvider;->makeAlbumUniqueKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 1795
    .local v15, "albumUniqueKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mAlbumCache:Ljava/util/HashMap;

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    .line 1796
    .local v24, "tempAlbumId":Ljava/lang/Long;
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1797
    if-eqz v24, :cond_0

    if-eqz p3, :cond_1

    .line 1798
    :cond_0
    const-string v8, "albums"

    const-string v9, "album_unique_key"

    const-string v10, "album_key"

    const-string v11, "album"

    const-string/jumbo v13, "source_album_id"

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mAlbumCache:Ljava/util/HashMap;

    move-object/from16 v18, v0

    .line 1802
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object v12, v4

    move-object v14, v3

    move-object/from16 v16, v5

    move-object/from16 v20, p2

    move/from16 v21, p3

    .line 1799
    invoke-direct/range {v6 .. v21}, Lcom/samsung/android/app/music/provider/MusicProvider;->getKeyIdForName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Integer;Landroid/content/ContentValues;Z)J

    move-result-wide v22

    .line 1810
    .local v22, "albumRowId":J
    :goto_0
    return-wide v22

    .line 1796
    .end local v15    # "albumUniqueKey":Ljava/lang/String;
    .end local v22    # "albumRowId":J
    .end local v24    # "tempAlbumId":Ljava/lang/Long;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1804
    .restart local v15    # "albumUniqueKey":Ljava/lang/String;
    .restart local v24    # "tempAlbumId":Ljava/lang/Long;
    :cond_1
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .restart local v22    # "albumRowId":J
    goto :goto_0
.end method

.method private getArtistIdFromOnlineContentValues(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;ZI)J
    .locals 21
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "updateArtist"    # Z
    .param p4, "cpAttrs"    # I

    .prologue
    .line 1816
    const-string v2, "artist"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1821
    .local v8, "artist":Ljava/lang/String;
    const-string v2, "artist_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1822
    .local v10, "sourceArtistId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mArtistCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 1823
    :try_start_0
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v8, v2}, Lcom/samsung/android/app/music/provider/MusicProvider;->makeUniqueKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v11

    .line 1824
    .local v11, "artistUniqueKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mArtistCache:Ljava/util/HashMap;

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    .line 1825
    .local v20, "tempArtistId":Ljava/lang/Long;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1826
    if-eqz v20, :cond_0

    if-eqz p3, :cond_1

    .line 1827
    :cond_0
    const-string v4, "artists"

    const-string v5, "artist_unique_key"

    const-string v6, "artist_key"

    const-string v7, "artist"

    const-string/jumbo v9, "source_artist_id"

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mArtistCache:Ljava/util/HashMap;

    .line 1830
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v13, v8

    move-object/from16 v16, p2

    move/from16 v17, p3

    .line 1827
    invoke-direct/range {v2 .. v17}, Lcom/samsung/android/app/music/provider/MusicProvider;->getKeyIdForName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Integer;Landroid/content/ContentValues;Z)J

    move-result-wide v18

    .line 1834
    .local v18, "artistId":J
    :goto_0
    return-wide v18

    .line 1825
    .end local v11    # "artistUniqueKey":Ljava/lang/String;
    .end local v18    # "artistId":J
    .end local v20    # "tempArtistId":Ljava/lang/Long;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1832
    .restart local v11    # "artistUniqueKey":Ljava/lang/String;
    .restart local v20    # "tempArtistId":Ljava/lang/Long;
    :cond_1
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .restart local v18    # "artistId":J
    goto :goto_0
.end method

.method private getCount(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)I
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "args"    # Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 527
    iget-object v1, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v7

    iget-object v3, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v4, p2, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    move-object v0, p1

    .line 528
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 530
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_4

    .line 534
    :cond_0
    if-eqz v6, :cond_1

    if-eqz v5, :cond_3

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    move v0, v7

    :cond_2
    :goto_1
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 533
    :cond_4
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    .line 534
    if-eqz v6, :cond_2

    if-eqz v5, :cond_5

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 527
    :catch_2
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 534
    :catchall_0
    move-exception v1

    move-object v5, v0

    move-object v0, v1

    :goto_2
    if-eqz v6, :cond_6

    if-eqz v5, :cond_7

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_6
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private getCurrentPlaylistMembersLocalCount(Landroid/database/sqlite/SQLiteDatabase;IJ)I
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sourceCount"    # I
    .param p3, "playlistId"    # J

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1615
    const-string v1, "audio_playlists_map, audio"

    .line 1616
    .local v1, "table":Ljava/lang/String;
    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v3

    .line 1617
    .local v2, "columns":[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v0, "audio_id=audio._id AND "

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1618
    .local v10, "selectionBuilder":Ljava/lang/StringBuilder;
    const-string v0, "playlist_id"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1619
    invoke-virtual {v10, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1620
    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->buildCpAttrSelection(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1622
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentPlaylistMembersLocalCount : cp_attrs - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1623
    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->buildCpAttrSelection(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1622
    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1627
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1628
    :cond_0
    const/4 v0, 0x1

    sget-object v3, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    const-string v5, "getCurrentPlaylistMembersLocalCount : query error"

    invoke-static {v0, v3, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1629
    const/4 v9, -0x1

    .line 1632
    if-eqz v8, :cond_1

    if-eqz v4, :cond_2

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1635
    :cond_1
    :goto_0
    return v9

    .line 1632
    :catch_0
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1631
    :cond_3
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v9

    .line 1632
    .local v9, "localCount":I
    if-eqz v8, :cond_4

    if-eqz v4, :cond_5

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 1633
    :cond_4
    :goto_1
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentPlaylistMembersLocalCount : playlistId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sourceCount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", localCount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1632
    :catch_1
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1625
    .end local v9    # "localCount":I
    :catch_2
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1632
    :catchall_0
    move-exception v3

    move-object v4, v0

    move-object v0, v3

    :goto_2
    if-eqz v8, :cond_6

    if-eqz v4, :cond_7

    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_6
    :goto_3
    throw v0

    :catch_3
    move-exception v3

    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private getFileTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2809
    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 2810
    .local v1, "lastSlash":I
    if-ltz v1, :cond_0

    .line 2811
    add-int/lit8 v1, v1, 0x1

    .line 2812
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2813
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2817
    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2818
    .local v0, "lastDot":I
    if-lez v0, :cond_1

    .line 2819
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 2821
    :cond_1
    return-object p1
.end method

.method private getKeyIdForName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Integer;Landroid/content/ContentValues;Z)J
    .locals 32
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "uniqueKeyField"    # Ljava/lang/String;
    .param p4, "keyField"    # Ljava/lang/String;
    .param p5, "nameField"    # Ljava/lang/String;
    .param p6, "rawName"    # Ljava/lang/String;
    .param p7, "sourceIdField"    # Ljava/lang/String;
    .param p8, "sourceNameId"    # Ljava/lang/String;
    .param p9, "uniqueKey"    # Ljava/lang/String;
    .param p10, "albumArtist"    # Ljava/lang/String;
    .param p11, "artist"    # Ljava/lang/String;
    .param p13, "cpAttrs"    # Ljava/lang/Integer;
    .param p14, "values"    # Landroid/content/ContentValues;
    .param p15, "forceUpdate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Integer;",
            "Landroid/content/ContentValues;",
            "Z)J"
        }
    .end annotation

    .prologue
    .line 3014
    .local p12, "cache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz p8, :cond_0

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    if-nez p13, :cond_3

    .line 3015
    :cond_1
    const/4 v6, 0x1

    sget-object v7, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    const-string v8, "getKeyIdForName : sourceNameId is invalid -> don\'t insert album table"

    invoke-static {v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 3017
    const-wide/16 v12, -0x1

    .line 3099
    :cond_2
    :goto_0
    return-wide v12

    .line 3021
    :cond_3
    if-eqz p6, :cond_4

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    .line 3022
    :cond_4
    const-string p6, "<unknown>"

    .line 3024
    :cond_5
    const-string v6, "albums"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    .line 3025
    .local v26, "isAlbum":Z
    const-string v6, "<unknown>"

    move-object/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    .line 3027
    .local v27, "isUnknown":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3029
    .local v9, "selection":Ljava/lang/String;
    const/4 v8, 0x0

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p9, v10, v6

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 3030
    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 3029
    .local v25, "c":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 3031
    :try_start_0
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 3082
    sget-object v6, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Multiple entries in table "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " for unique key "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p9

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3084
    const-wide/16 v12, -0x1

    .line 3087
    .local v12, "rowId":J
    :cond_6
    :goto_1
    if-eqz v25, :cond_7

    if-eqz v7, :cond_e

    :try_start_1
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 3089
    :cond_7
    :goto_2
    if-eqz p12, :cond_2

    if-nez v27, :cond_2

    .line 3090
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p12

    move-object/from16 v1, p9

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .end local v12    # "rowId":J
    :pswitch_0
    move-object/from16 v10, p0

    move/from16 v11, v26

    move-object/from16 v12, p3

    move-object/from16 v13, p9

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    move-object/from16 v17, p8

    move-object/from16 v18, p13

    move-object/from16 v19, p10

    move-object/from16 v20, p14

    .line 3035
    :try_start_2
    invoke-direct/range {v10 .. v20}, Lcom/samsung/android/app/music/provider/MusicProvider;->makeContentValueForGivenTable(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v28

    .line 3038
    .local v28, "otherValues":Landroid/content/ContentValues;
    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v12

    .line 3039
    .restart local v12    # "rowId":J
    const-wide/16 v10, 0x0

    cmp-long v6, v12, v10

    if-lez v6, :cond_6

    .line 3040
    invoke-virtual/range {p13 .. p13}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/app/music/provider/CpAttrs;->isLocal(I)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v26, :cond_8

    .line 3041
    const-string v6, "album_art_location"

    .line 3042
    move-object/from16 v0, p14

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v14, p8

    .line 3041
    invoke-direct/range {v10 .. v15}, Lcom/samsung/android/app/music/provider/MusicProvider;->insertAlbumArt(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)V

    .line 3044
    :cond_8
    if-nez v26, :cond_6

    .line 3045
    invoke-virtual/range {p13 .. p13}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p8

    move-object/from16 v3, p14

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/samsung/android/app/music/provider/MusicProvider;->handleMultipleArtists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILandroid/content/ContentValues;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 3029
    .end local v12    # "rowId":J
    .end local v28    # "otherValues":Landroid/content/ContentValues;
    :catch_0
    move-exception v6

    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3087
    :catchall_0
    move-exception v7

    move-object/from16 v31, v7

    move-object v7, v6

    move-object/from16 v6, v31

    :goto_3
    if-eqz v25, :cond_9

    if-eqz v7, :cond_f

    :try_start_4
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_9
    :goto_4
    throw v6

    .line 3052
    :pswitch_1
    :try_start_5
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3053
    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 3056
    .restart local v12    # "rowId":J
    if-nez p15, :cond_a

    move-object/from16 v14, p0

    move-object/from16 v15, v25

    move/from16 v16, v26

    move-object/from16 v17, p5

    move-object/from16 v18, p6

    move-object/from16 v19, p7

    move-object/from16 v20, p8

    move-object/from16 v21, p10

    .line 3057
    invoke-direct/range {v14 .. v21}, Lcom/samsung/android/app/music/provider/MusicProvider;->checkNeedUpdateOrNot(Landroid/database/Cursor;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_a
    const/16 p15, 0x1

    .line 3059
    :goto_5
    if-eqz p15, :cond_6

    move-object/from16 v14, p0

    move/from16 v15, v26

    move-object/from16 v16, p3

    move-object/from16 v17, p9

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move-object/from16 v20, p6

    move-object/from16 v21, p8

    move-object/from16 v22, p13

    move-object/from16 v23, p10

    move-object/from16 v24, p14

    .line 3061
    invoke-direct/range {v14 .. v24}, Lcom/samsung/android/app/music/provider/MusicProvider;->makeContentValueForGivenTable(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v28

    .line 3064
    .restart local v28    # "otherValues":Landroid/content/ContentValues;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v26, :cond_d

    const-string v6, "album_id"

    :goto_6
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "=?"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 3066
    .local v30, "whereClaus":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/4 v6, 0x0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v29, v6

    .line 3067
    .local v29, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v28

    move-object/from16 v3, v30

    move-object/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    const/4 v8, 0x1

    if-ge v6, v8, :cond_b

    .line 3068
    sget-object v6, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getKeyIdForName can\'t update table : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", whereClaus : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", rowId : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3073
    :cond_b
    if-eqz v26, :cond_6

    .line 3074
    const-string v6, "album_art_location"

    .line 3075
    move-object/from16 v0, p14

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v14, p8

    .line 3074
    invoke-direct/range {v10 .. v15}, Lcom/samsung/android/app/music/provider/MusicProvider;->updateAlbumArt(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3087
    .end local v12    # "rowId":J
    .end local v28    # "otherValues":Landroid/content/ContentValues;
    .end local v29    # "whereArgs":[Ljava/lang/String;
    .end local v30    # "whereClaus":Ljava/lang/String;
    :catchall_1
    move-exception v6

    goto/16 :goto_3

    .line 3057
    .restart local v12    # "rowId":J
    :cond_c
    const/16 p15, 0x0

    goto/16 :goto_5

    .line 3064
    .restart local v28    # "otherValues":Landroid/content/ContentValues;
    :cond_d
    const-string v6, "artist_id"
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_6

    .line 3087
    .end local v28    # "otherValues":Landroid/content/ContentValues;
    :catch_1
    move-exception v6

    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_e
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .end local v12    # "rowId":J
    :catch_2
    move-exception v8

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_f
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 3031
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getMdrmAlbumArt(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "albumId"    # J
    .param p5, "albumArtData"    # Ljava/lang/String;
    .param p6, "mode"    # Ljava/lang/String;

    .prologue
    .line 998
    sget-object v4, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDcfAlbumArt : albumId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", albumArtData "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    const/4 v2, 0x0

    .line 1001
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    sget-object v5, Lcom/samsung/android/app/music/provider/MusicProvider;->sMdrmAlbumArtToken:Ljava/lang/Object;

    monitor-enter v5

    .line 1002
    if-eqz p5, :cond_0

    .line 1003
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1004
    .local v0, "file":Ljava/io/File;
    invoke-static {p6}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1006
    .local v1, "modeBits":I
    :try_start_1
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 1007
    :try_start_2
    monitor-exit v5

    move-object v3, v2

    .line 1016
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "modeBits":I
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-object v3

    .line 1008
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "modeBits":I
    .restart local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v4

    .line 1013
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "modeBits":I
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/app/music/provider/MilkAlbumArtWriter;->writeAlbumArtByAlbumId(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1015
    monitor-exit v5

    move-object v3, v2

    .line 1016
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    .line 1015
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method private getMediaDBCount()I
    .locals 8

    .prologue
    .line 541
    const/4 v6, 0x0

    .line 542
    .local v6, "c":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 545
    .local v7, "count":I
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(*)"

    aput-object v4, v2, v3

    const-string v3, "is_music=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 547
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 551
    :cond_0
    if-eqz v6, :cond_1

    .line 552
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 555
    :cond_1
    return v7

    .line 551
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 552
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private getMusicDBCount(I)I
    .locals 10
    .param p1, "cpAttrs"    # I

    .prologue
    .line 560
    const/4 v8, 0x0

    .line 561
    .local v8, "c":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 563
    .local v9, "count":I
    :try_start_0
    const-string v3, "cp_attrs = ? "

    .line 565
    .local v3, "selection":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->appendExtraConditionForDeleteMdrmContentsWhileSyncLocalContents(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 568
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 570
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "audio_meta"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "count(*)"

    aput-object v6, v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 573
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 577
    :cond_0
    if-eqz v8, :cond_1

    .line 578
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 581
    :cond_1
    return v9

    .line 577
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 578
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private handleMultipleArtists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILandroid/content/ContentValues;)V
    .locals 15
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sourceArtistIds"    # Ljava/lang/String;
    .param p3, "cpAttrs"    # I
    .param p4, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 3113
    if-nez p2, :cond_1

    .line 3160
    :cond_0
    return-void

    .line 3116
    :cond_1
    const-string v11, "::"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3117
    .local v4, "artistIds":[Ljava/lang/String;
    array-length v3, v4

    .line 3118
    .local v3, "artistCount":I
    const/4 v11, 0x1

    if-le v3, v11, :cond_0

    .line 3122
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    if-gt v6, v3, :cond_0

    .line 3123
    add-int/lit8 v11, v6, -0x1

    aget-object v9, v4, v11

    .line 3124
    .local v9, "sourceArtistId":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "multiple_artists_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3125
    .local v2, "artistContentKey":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3126
    .local v1, "artist":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 3127
    const/4 v11, 0x1

    sget-object v12, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleMultipleArtists : sourceArtistIds["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]\'s "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\'s value is null"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 3122
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3133
    :cond_2
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {p0, v9, v1, v11}, Lcom/samsung/android/app/music/provider/MusicProvider;->makeUniqueKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v10

    .line 3134
    .local v10, "uniqueKey":Ljava/lang/String;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 3135
    .local v7, "newValue":Landroid/content/ContentValues;
    const-string v11, "artist_unique_key"

    invoke-virtual {v7, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3136
    const-string v11, "artist"

    invoke-virtual {v7, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3137
    const-string/jumbo v11, "source_artist_id"

    invoke-virtual {v7, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3138
    const-string v11, "artist_cp_attrs"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3139
    move-object v5, v1

    .line 3140
    .local v5, "collateValue":Ljava/lang/String;
    sget-boolean v11, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->REGIONAL_CHN_PINYIN_ENABLED:Z

    if-eqz v11, :cond_3

    .line 3141
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/PinyinUtil;->computeChineseSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3142
    .local v8, "pinyin":Ljava/lang/String;
    const-string v11, "artist_pinyin"

    invoke-virtual {v7, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3143
    move-object v5, v8

    .line 3145
    .end local v8    # "pinyin":Ljava/lang/String;
    :cond_3
    const-string v11, "artist_key"

    .line 3146
    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/provider/MusicDatabaseUtil;->getCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3145
    invoke-virtual {v7, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3147
    const-string v11, "artists"

    const/4 v12, 0x0

    const/4 v13, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v7, v13}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_1
.end method

.method private insertAlbumArt(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "albumId"    # J
    .param p4, "sourceAlbumId"    # Ljava/lang/String;
    .param p5, "albumArtLocation"    # Ljava/lang/String;

    .prologue
    .line 2959
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2960
    .local v0, "newAlbumArt":Landroid/content/ContentValues;
    const-string v1, "album_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2961
    const-string/jumbo v1, "source_album_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2962
    const-string v1, "album_art_location"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2963
    const-string v1, "album_art"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2964
    return-void
.end method

.method private insertAudioFile(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 2618
    const-string/jumbo v0, "validity"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    .line 2619
    .local v11, "validity":Ljava/lang/Long;
    const-string/jumbo v0, "track_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2621
    .local v6, "trackId":Ljava/lang/String;
    const-string v0, "_data"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2622
    .local v8, "data":Ljava/lang/String;
    const-string v0, "cp_attrs"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 2623
    .local v7, "cpAttrs":Ljava/lang/Integer;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez v7, :cond_2

    .line 2624
    :cond_0
    const/4 v0, 0x1

    sget-object v1, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    const-string v4, "Necessary columns can\'t be null or empty."

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 2630
    const-wide/16 v2, -0x1

    .line 2658
    :cond_1
    :goto_0
    return-wide v2

    .line 2634
    :cond_2
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mdrm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    .line 2635
    .local v10, "isMdrmDrm":Z
    const-string v0, "drm_type"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 2637
    .local v9, "drmType":Ljava/lang/Integer;
    if-nez v9, :cond_3

    .line 2638
    if-eqz v10, :cond_6

    .line 2639
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 2643
    :goto_1
    const-string v0, "drm_type"

    invoke-virtual {p2, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2646
    :cond_3
    if-nez v11, :cond_4

    .line 2647
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->getValidity(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 2649
    :cond_4
    const-string/jumbo v0, "validity"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2650
    if-nez v6, :cond_5

    .line 2651
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/samsung/android/app/music/provider/sync/SyncMdrmContent;->getTrackId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2653
    :cond_5
    const-string/jumbo v0, "track_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2654
    invoke-direct {p0, p1, p2, v4}, Lcom/samsung/android/app/music/provider/MusicProvider;->insertAudioFileInternal(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Z)J

    move-result-wide v2

    .line 2655
    .local v2, "rowId":J
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 2656
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/provider/MusicProvider;->insertMdrmFile(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;)V

    goto :goto_0

    .line 2641
    .end local v2    # "rowId":J
    :cond_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_1
.end method

.method private insertAudioFileInternal(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Z)J
    .locals 45
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "initialValues"    # Landroid/content/ContentValues;
    .param p3, "forceUpdate"    # Z

    .prologue
    .line 2706
    new-instance v18, Landroid/content/ContentValues;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 2708
    .local v18, "values":Landroid/content/ContentValues;
    const-string v4, "album_artist"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 2709
    .local v29, "albumArtist":Ljava/lang/String;
    const-string v4, "artist"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2710
    .local v10, "artist":Ljava/lang/String;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 2711
    :cond_0
    const-string v10, "<unknown>"

    .line 2715
    :cond_1
    const-string v4, "album"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 2716
    .local v25, "album":Ljava/lang/String;
    const-string v4, "_data"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 2717
    .local v41, "path":Ljava/lang/String;
    const-string v4, "cp_attrs"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    .line 2718
    .local v17, "cpAttrs":Ljava/lang/Integer;
    if-eqz v25, :cond_2

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    .line 2719
    :cond_2
    const/16 v25, 0x0

    .line 2720
    if-eqz v41, :cond_3

    .line 2721
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v41

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v40

    .line 2722
    .local v40, "parentFile":Ljava/io/File;
    if-eqz v40, :cond_3

    .line 2723
    invoke-virtual/range {v40 .. v40}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v25

    .line 2726
    .end local v40    # "parentFile":Ljava/io/File;
    :cond_3
    if-nez v25, :cond_4

    .line 2727
    const-string v25, "<unknown>"

    .line 2736
    :cond_4
    const-string/jumbo v4, "source_artist_id"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2737
    .local v12, "sourceArtistId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mArtistCache:Ljava/util/HashMap;

    monitor-enter v6

    .line 2738
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v12, v10, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->makeUniqueKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v13

    .line 2739
    .local v13, "artistUniqueKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mArtistCache:Ljava/util/HashMap;

    invoke-virtual {v4, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/Long;

    .line 2740
    .local v43, "tempArtistId":Ljava/lang/Long;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2741
    if-nez v43, :cond_a

    .line 2742
    const-string v6, "artists"

    const-string v7, "artist_unique_key"

    const-string v8, "artist_key"

    const-string v9, "artist"

    const-string/jumbo v11, "source_artist_id"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mArtistCache:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v15, v10

    move/from16 v19, p3

    invoke-direct/range {v4 .. v19}, Lcom/samsung/android/app/music/provider/MusicProvider;->getKeyIdForName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Integer;Landroid/content/ContentValues;Z)J

    move-result-wide v38

    .line 2749
    .local v38, "artistRowId":J
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v4, v38, v6

    if-lez v4, :cond_5

    .line 2750
    const-string v4, "artist_id"

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2758
    :cond_5
    const-string/jumbo v4, "source_album_id"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2759
    .local v5, "sourceAlbumId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mAlbumCache:Ljava/util/HashMap;

    monitor-enter v11

    .line 2760
    const/4 v4, 0x0

    const/16 v6, 0x2f

    .line 2761
    :try_start_1
    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v4, p0

    move-object/from16 v6, v25

    move-object/from16 v7, v29

    .line 2760
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/app/music/provider/MusicProvider;->makeAlbumUniqueKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    .line 2762
    .local v28, "albumUniqueKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mAlbumCache:Ljava/util/HashMap;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/Long;

    .line 2763
    .local v42, "tempAlbumId":Ljava/lang/Long;
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2764
    if-nez v42, :cond_b

    .line 2765
    const-string v21, "albums"

    const-string v22, "album_unique_key"

    const-string v23, "album_key"

    const-string v24, "album"

    const-string/jumbo v26, "source_album_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mAlbumCache:Ljava/util/HashMap;

    move-object/from16 v31, v0

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v27, v5

    move-object/from16 v30, v10

    move-object/from16 v32, v17

    move-object/from16 v33, v18

    move/from16 v34, p3

    .line 2766
    invoke-direct/range {v19 .. v34}, Lcom/samsung/android/app/music/provider/MusicProvider;->getKeyIdForName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Integer;Landroid/content/ContentValues;Z)J

    move-result-wide v36

    .line 2773
    .local v36, "albumRowId":J
    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v4, v36, v6

    if-lez v4, :cond_6

    .line 2774
    const-string v4, "album_id"

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2778
    :cond_6
    const-string/jumbo v4, "title"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 2779
    .local v44, "title":Ljava/lang/String;
    if-nez v44, :cond_7

    .line 2780
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 2781
    const-string/jumbo v4, "title"

    move-object/from16 v0, v18

    move-object/from16 v1, v44

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2785
    :cond_7
    const-string v4, "album_artist"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 2786
    .local v35, "musicAlbumArtist":Ljava/lang/String;
    if-nez v35, :cond_8

    .line 2787
    const-string v4, "artist"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 2789
    :cond_8
    const-string v4, "music_album_artist"

    if-nez v35, :cond_9

    const-string v35, "<unknown>"

    .end local v35    # "musicAlbumArtist":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2792
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v44

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/provider/MusicProvider;->computeTitleUnique(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2793
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/provider/MusicProvider;->computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 2794
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/provider/MusicProvider;->computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 2795
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->computeComposer(Landroid/content/ContentValues;)V

    .line 2796
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->convertYearToYearName(Landroid/content/ContentValues;)V

    .line 2798
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->computePinyinValues(Landroid/content/ContentValues;)V

    .line 2799
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->computeSortKeyValues(Landroid/content/ContentValues;)V

    .line 2802
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->removeContentValuesNotInAudioMetaTable(Landroid/content/ContentValues;)V

    .line 2803
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->computeLocalTrackId(Landroid/content/ContentValues;)V

    .line 2804
    const-string v4, "audio_meta"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    return-wide v6

    .line 2740
    .end local v5    # "sourceAlbumId":Ljava/lang/String;
    .end local v13    # "artistUniqueKey":Ljava/lang/String;
    .end local v28    # "albumUniqueKey":Ljava/lang/String;
    .end local v36    # "albumRowId":J
    .end local v38    # "artistRowId":J
    .end local v42    # "tempAlbumId":Ljava/lang/Long;
    .end local v43    # "tempArtistId":Ljava/lang/Long;
    .end local v44    # "title":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 2747
    .restart local v13    # "artistUniqueKey":Ljava/lang/String;
    .restart local v43    # "tempArtistId":Ljava/lang/Long;
    :cond_a
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Long;->longValue()J

    move-result-wide v38

    .restart local v38    # "artistRowId":J
    goto/16 :goto_0

    .line 2763
    .restart local v5    # "sourceAlbumId":Ljava/lang/String;
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 2771
    .restart local v28    # "albumUniqueKey":Ljava/lang/String;
    .restart local v42    # "tempAlbumId":Ljava/lang/Long;
    :cond_b
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    .restart local v36    # "albumRowId":J
    goto/16 :goto_1
.end method

.method private insertAudioPlaylists(Landroid/net/Uri;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 2351
    const-string v7, "name"

    invoke-virtual {p3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2352
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v7, "source_playlist_id"

    invoke-virtual {p3, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 2354
    .local v4, "sourceId":Ljava/lang/Long;
    if-nez v4, :cond_1

    invoke-static {p1}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->isNoSyncUri(Landroid/net/Uri;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "FavoriteList#328795!432@1341"

    .line 2355
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2356
    sget-object v7, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 2357
    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getNotifyDisabledUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 2358
    .local v5, "sourceUri":Landroid/net/Uri;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2359
    .local v6, "sourceValue":Landroid/content/ContentValues;
    const-string v7, "name"

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2360
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->insert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 2361
    .local v1, "newSourceUri":Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 2362
    const/4 v7, 0x1

    sget-object v8, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    const-string v9, "AUDIO_PLAYLISTS failed to insert playlist to MediaProvider"

    invoke-static {v7, v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 2363
    const-wide/16 v8, -0x1

    .line 2377
    .end local v1    # "newSourceUri":Landroid/net/Uri;
    .end local v5    # "sourceUri":Landroid/net/Uri;
    .end local v6    # "sourceValue":Landroid/content/ContentValues;
    :goto_0
    return-wide v8

    .line 2365
    .restart local v1    # "newSourceUri":Landroid/net/Uri;
    .restart local v5    # "sourceUri":Landroid/net/Uri;
    .restart local v6    # "sourceValue":Landroid/content/ContentValues;
    :cond_0
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 2366
    .local v2, "newSourceId":J
    const-string/jumbo v7, "source_playlist_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2367
    const-string/jumbo v7, "synced_hashcode"

    const-string v8, "SYNCED"

    invoke-virtual {p3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2370
    .end local v1    # "newSourceUri":Landroid/net/Uri;
    .end local v2    # "newSourceId":J
    .end local v5    # "sourceUri":Landroid/net/Uri;
    .end local v6    # "sourceValue":Landroid/content/ContentValues;
    :cond_1
    const-string v7, "date_added"

    invoke-virtual {p3, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    if-nez v7, :cond_2

    .line 2371
    const-string v7, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2373
    :cond_2
    const-string v7, "_data"

    invoke-virtual {p3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    .line 2374
    const-string v7, "_data"

    invoke-static {v0}, Lcom/samsung/android/app/music/provider/MusicProvider;->makePlaylistData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2376
    :cond_3
    invoke-direct {p0, p3, v0}, Lcom/samsung/android/app/music/provider/MusicProvider;->computePlaylistNamePinyinAndSortKey(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2377
    const-string v7, "audio_playlists"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    goto :goto_0
.end method

.method private insertInternal(Landroid/net/Uri;ILandroid/content/ContentValues;)Landroid/net/Uri;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "match"    # I
    .param p3, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    .line 2496
    const/4 v1, 0x0

    .line 2497
    .local v1, "newUri":Landroid/net/Uri;
    sparse-switch p2, :sswitch_data_0

    .line 2603
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid URI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2499
    :sswitch_0
    iget-object v6, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v7, "smusic_db_info"

    invoke-virtual {v6, v7, v8, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 2500
    .local v4, "rowId":J
    cmp-long v6, v4, v10

    if-lez v6, :cond_0

    .line 2501
    sget-object v6, Lcom/samsung/android/app/music/provider/MusicDBInfo$DBSyncInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2605
    :cond_0
    :goto_0
    return-object v1

    .line 2505
    .end local v4    # "rowId":J
    :sswitch_1
    iget-object v6, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v7, "restore_list"

    invoke-virtual {v6, v7, v8, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 2506
    .restart local v4    # "rowId":J
    cmp-long v6, v4, v10

    if-lez v6, :cond_0

    .line 2507
    sget-object v6, Lcom/samsung/android/app/music/provider/MusicDBInfo$RestoreList;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 2511
    .end local v4    # "rowId":J
    :sswitch_2
    iget-object v6, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "hearts"

    invoke-virtual {v6, v7, v8, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 2512
    .restart local v4    # "rowId":J
    cmp-long v6, v4, v10

    if-lez v6, :cond_0

    .line 2513
    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Hearts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 2517
    .end local v4    # "rowId":J
    :sswitch_3
    iget-object v6, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v6, p3}, Lcom/samsung/android/app/music/provider/MusicProvider;->insertAudioFile(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 2518
    .restart local v4    # "rowId":J
    cmp-long v6, v4, v10

    if-lez v6, :cond_0

    .line 2519
    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->MUSIC_PROVIDER_CONTENT_URI:Landroid/net/Uri;

    .line 2520
    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 2524
    .end local v4    # "rowId":J
    :sswitch_4
    iget-object v6, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "album_art"

    const-string v8, "_data"

    invoke-virtual {v6, v7, v8, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 2526
    .restart local v4    # "rowId":J
    cmp-long v6, v4, v10

    if-lez v6, :cond_0

    .line 2527
    invoke-static {p1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 2531
    .end local v4    # "rowId":J
    :sswitch_5
    iget-object v6, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1, v6, p3}, Lcom/samsung/android/app/music/provider/MusicProvider;->insertAudioPlaylists(Landroid/net/Uri;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 2532
    .restart local v4    # "rowId":J
    cmp-long v6, v4, v10

    if-lez v6, :cond_0

    .line 2533
    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 2539
    .end local v4    # "rowId":J
    :sswitch_6
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2540
    .local v2, "playlistId":Ljava/lang/Long;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, p3}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 2541
    .local v3, "values":Landroid/content/ContentValues;
    const-string v6, "playlist_id"

    invoke-virtual {v3, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2543
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2544
    iget-object v6, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "audio_playlists_map"

    const-string v8, "playlist_id"

    invoke-virtual {v6, v7, v8, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 2545
    .restart local v4    # "rowId":J
    iget-object v6, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2550
    iget-object v6, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2552
    :goto_1
    cmp-long v6, v4, v10

    if-lez v6, :cond_1

    .line 2553
    invoke-static {p1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2556
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v6, v7, p1, p2, p3}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->insert(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILandroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 2546
    .end local v4    # "rowId":J
    :catch_0
    move-exception v0

    .line 2547
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-wide/16 v4, -0x1

    .line 2548
    .restart local v4    # "rowId":J
    :try_start_1
    sget-object v6, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insert AUDIO_PLAYLISTS_ID_MEMBERS failed :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2550
    iget-object v6, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    .end local v4    # "rowId":J
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6

    .line 2560
    .end local v2    # "playlistId":Ljava/lang/Long;
    .end local v3    # "values":Landroid/content/ContentValues;
    :sswitch_7
    const-string/jumbo v6, "source_id"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2561
    iget-object v6, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "dlna_dms_contents_table"

    invoke-virtual {v6, v7, v8, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 2562
    .restart local v4    # "rowId":J
    cmp-long v6, v4, v10

    if-lez v6, :cond_0

    .line 2563
    sget-object v6, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$ServerContents;->CONTENT_URI:Landroid/net/Uri;

    .line 2564
    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_0

    .line 2568
    .end local v4    # "rowId":J
    :sswitch_8
    iget-object v6, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "dlna_dms_table"

    invoke-virtual {v6, v7, v8, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 2569
    .restart local v4    # "rowId":J
    cmp-long v6, v4, v10

    if-lez v6, :cond_0

    .line 2570
    sget-object v6, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$Server;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_0

    .line 2574
    .end local v4    # "rowId":J
    :sswitch_9
    iget-object v6, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "dlna_dmr_table"

    invoke-virtual {v6, v7, v8, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 2575
    .restart local v4    # "rowId":J
    cmp-long v6, v4, v10

    if-lez v6, :cond_0

    .line 2576
    sget-object v6, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$Renderer;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_0

    .line 2580
    .end local v4    # "rowId":J
    :sswitch_a
    iget-object v6, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "dlna_open_intent_table"

    invoke-virtual {v6, v7, v8, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 2582
    .restart local v4    # "rowId":J
    cmp-long v6, v4, v10

    if-lez v6, :cond_0

    .line 2583
    sget-object v6, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$ServerContentsExtra;->CONTENT_URI:Landroid/net/Uri;

    .line 2584
    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_0

    .line 2589
    .end local v4    # "rowId":J
    :sswitch_b
    iget-object v6, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "dlna_album_art"

    invoke-virtual {v6, v7, v8, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 2590
    .restart local v4    # "rowId":J
    cmp-long v6, v4, v10

    if-lez v6, :cond_0

    .line 2591
    sget-object v6, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$ServerContents$AlbumArt;->CONTENT_URI:Landroid/net/Uri;

    .line 2592
    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_0

    .line 2596
    .end local v4    # "rowId":J
    :sswitch_c
    iget-object v6, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v7, "streaming_cache_table"

    invoke-virtual {v6, v7, v8, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 2597
    .restart local v4    # "rowId":J
    cmp-long v6, v4, v10

    if-lez v6, :cond_0

    .line 2598
    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Online$StreamingCache;->CONTENT_URI:Landroid/net/Uri;

    .line 2599
    invoke-static {v6, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_0

    .line 2497
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_7
        0x6 -> :sswitch_8
        0x7 -> :sswitch_9
        0x8 -> :sswitch_a
        0xb -> :sswitch_b
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
        0x44d -> :sswitch_3
        0x44f -> :sswitch_5
        0x450 -> :sswitch_6
        0x451 -> :sswitch_6
        0x460 -> :sswitch_4
        0x474 -> :sswitch_2
        0x476 -> :sswitch_c
    .end sparse-switch
.end method

.method private insertMdrmFile(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "audioId"    # J
    .param p4, "validity"    # J
    .param p6, "trackId"    # Ljava/lang/String;

    .prologue
    .line 2662
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2663
    .local v0, "newValues":Landroid/content/ContentValues;
    const-string v1, "audio_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2664
    const-string/jumbo v1, "validity"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2665
    const-string/jumbo v1, "track_id"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2666
    const-string v1, "milk_drm"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2667
    return-void
.end method

.method private isOnlinePlaylist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "playlistId"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 3680
    const-string v1, "audio_playlists"

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "is_sync"

    aput-object v0, v2, v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 3681
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3683
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-ne v0, v9, :cond_1

    move v0, v9

    .line 3684
    :goto_0
    if-eqz v8, :cond_0

    if-eqz v4, :cond_2

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v10

    .line 3683
    goto :goto_0

    .line 3684
    :catch_0
    move-exception v1

    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 3680
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3684
    :catchall_0
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    :goto_2
    if-eqz v8, :cond_3

    if-eqz v4, :cond_4

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v4, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private makeAlbumUniqueKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "sourceId"    # Ljava/lang/String;
    .param p2, "album"    # Ljava/lang/String;
    .param p3, "albumArtist"    # Ljava/lang/String;
    .param p4, "directoryPath"    # Ljava/lang/String;
    .param p5, "cpAttrs"    # I

    .prologue
    .line 3174
    move-object v0, p2

    .line 3175
    .local v0, "meta":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 3176
    const-string p1, ""

    .line 3177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p3, p4}, Lcom/samsung/android/app/music/provider/MusicProvider;->getAlbumHashValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3179
    :cond_0
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->makeUniqueKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private makeContentValueForGivenTable(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 10
    .param p1, "isAlbum"    # Z
    .param p2, "uniqueKeyField"    # Ljava/lang/String;
    .param p3, "uniqueKey"    # Ljava/lang/String;
    .param p4, "keyField"    # Ljava/lang/String;
    .param p5, "nameField"    # Ljava/lang/String;
    .param p6, "rawName"    # Ljava/lang/String;
    .param p7, "sourceNameId"    # Ljava/lang/String;
    .param p8, "cpAttrs"    # Ljava/lang/Integer;
    .param p9, "albumArtist"    # Ljava/lang/String;
    .param p10, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 3209
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3212
    .local v4, "otherValues":Landroid/content/ContentValues;
    if-eqz p1, :cond_5

    .line 3213
    const-string/jumbo v7, "source_album_id"

    .line 3214
    .local v7, "sourceIdField":Ljava/lang/String;
    const-string v3, "album_cp_attrs"

    .line 3215
    .local v3, "cpAttrsField":Ljava/lang/String;
    if-eqz p9, :cond_0

    .line 3216
    const-string v8, "album_artist"

    move-object/from16 v0, p9

    invoke-virtual {v4, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3229
    :cond_0
    :goto_0
    invoke-virtual {v4, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3230
    move-object/from16 v0, p6

    invoke-virtual {v4, p5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3231
    if-eqz p7, :cond_1

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    .line 3232
    move-object/from16 v0, p7

    invoke-virtual {v4, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3234
    :cond_1
    if-eqz p8, :cond_2

    .line 3235
    move-object/from16 v0, p8

    invoke-virtual {v4, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3239
    :cond_2
    move-object/from16 v2, p6

    .line 3240
    .local v2, "collateValue":Ljava/lang/String;
    sget-boolean v8, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->REGIONAL_CHN_PINYIN_ENABLED:Z

    if-eqz v8, :cond_4

    .line 3241
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_pinyin"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3242
    .local v6, "pinyinColumn":Ljava/lang/String;
    move-object/from16 v0, p10

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3243
    .local v5, "pinyin":Ljava/lang/String;
    if-nez v5, :cond_3

    .line 3244
    invoke-static/range {p6 .. p6}, Lcom/samsung/android/app/musiclibrary/ui/provider/PinyinUtil;->computeChineseSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3246
    :cond_3
    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3247
    move-object v2, v5

    .line 3249
    .end local v5    # "pinyin":Ljava/lang/String;
    .end local v6    # "pinyinColumn":Ljava/lang/String;
    :cond_4
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MusicDatabaseUtil;->getCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, p4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3258
    return-object v4

    .line 3219
    .end local v2    # "collateValue":Ljava/lang/String;
    .end local v3    # "cpAttrsField":Ljava/lang/String;
    .end local v7    # "sourceIdField":Ljava/lang/String;
    :cond_5
    if-eqz p7, :cond_6

    .line 3220
    const-string v8, "::"

    move-object/from16 v0, p7

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3221
    .local v1, "artistIds":[Ljava/lang/String;
    array-length v8, v1

    const/4 v9, 0x1

    if-le v8, v9, :cond_6

    .line 3222
    const-string v8, "is_multple_artist"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3225
    .end local v1    # "artistIds":[Ljava/lang/String;
    :cond_6
    const-string/jumbo v7, "source_artist_id"

    .line 3226
    .restart local v7    # "sourceIdField":Ljava/lang/String;
    const-string v3, "artist_cp_attrs"

    .restart local v3    # "cpAttrsField":Ljava/lang/String;
    goto :goto_0
.end method

.method private makeJoinedTableFromSelectionGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "selectionGroup"    # Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 3634
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 3672
    move-object v1, p2

    .line 3676
    .local v1, "joinedTable":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 3634
    .end local v1    # "joinedTable":Ljava/lang/String;
    :sswitch_0
    const-string v3, "composer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "album_id"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "artist_id"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "music_album_artist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "bucket_id"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string v3, "genre_name"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    .line 3636
    :pswitch_0
    const-string v0, "music_composers_view"

    .line 3637
    .local v0, "joinTable":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LEFT OUTER JOIN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " USING ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "composer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3639
    .restart local v1    # "joinedTable":Ljava/lang/String;
    goto :goto_1

    .line 3641
    .end local v0    # "joinTable":Ljava/lang/String;
    .end local v1    # "joinedTable":Ljava/lang/String;
    :pswitch_1
    const-string v0, "music_album_info"

    .line 3642
    .restart local v0    # "joinTable":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LEFT OUTER JOIN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ON "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "album_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3646
    .restart local v1    # "joinedTable":Ljava/lang/String;
    goto/16 :goto_1

    .line 3648
    .end local v0    # "joinTable":Ljava/lang/String;
    .end local v1    # "joinedTable":Ljava/lang/String;
    :pswitch_2
    const-string v0, "music_artist_info"

    .line 3649
    .restart local v0    # "joinTable":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LEFT OUTER JOIN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ON "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "artist_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3653
    .restart local v1    # "joinedTable":Ljava/lang/String;
    goto/16 :goto_1

    .line 3655
    .end local v0    # "joinTable":Ljava/lang/String;
    .end local v1    # "joinedTable":Ljava/lang/String;
    :pswitch_3
    const-string v0, "music_album_artist_view"

    .line 3656
    .restart local v0    # "joinTable":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LEFT OUTER JOIN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ON "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "music_album_artist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "artist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3660
    .restart local v1    # "joinedTable":Ljava/lang/String;
    goto/16 :goto_1

    .line 3662
    .end local v0    # "joinTable":Ljava/lang/String;
    .end local v1    # "joinedTable":Ljava/lang/String;
    :pswitch_4
    const-string v0, "music_folders_view"

    .line 3663
    .restart local v0    # "joinTable":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LEFT OUTER JOIN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " USING ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bucket_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3665
    .restart local v1    # "joinedTable":Ljava/lang/String;
    goto/16 :goto_1

    .line 3667
    .end local v0    # "joinTable":Ljava/lang/String;
    .end local v1    # "joinedTable":Ljava/lang/String;
    :pswitch_5
    const-string v0, "music_genres_view"

    .line 3668
    .restart local v0    # "joinTable":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LEFT OUTER JOIN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " USING ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "genre_name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3670
    .restart local v1    # "joinedTable":Ljava/lang/String;
    goto/16 :goto_1

    .line 3634
    :sswitch_data_0
    .sparse-switch
        -0x54645c39 -> :sswitch_5
        -0x23b93ee0 -> :sswitch_0
        0x223e7913 -> :sswitch_2
        0x252b72f1 -> :sswitch_3
        0x5b51a8eb -> :sswitch_1
        0x6d80e790 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static makePlaylistData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Playlists/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeProjection(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;

    .prologue
    .line 3564
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3567
    .local v2, "projectionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v4, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, p2, v3

    .line 3568
    .local v1, "p":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3567
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3571
    .end local v1    # "p":Ljava/lang/String;
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    .line 3572
    .local v0, "newProjection":[Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "newProjection":[Ljava/lang/String;
    check-cast v0, [Ljava/lang/String;

    .line 3574
    .restart local v0    # "newProjection":[Ljava/lang/String;
    return-object v0
.end method

.method private makeRawQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "rawQuery"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 839
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 840
    .local v1, "sql":Ljava/lang/StringBuilder;
    const-string v2, "SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    if-nez p2, :cond_2

    .line 842
    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    :goto_0
    const-string v2, " FROM ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    if-eqz p3, :cond_0

    .line 851
    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    :cond_0
    if-eqz p4, :cond_1

    .line 854
    const-string v2, " ORDER BY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 844
    :cond_2
    array-length v3, p2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v0, p2, v2

    .line 845
    .local v0, "column":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 847
    .end local v0    # "column":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private makeRawQuerySelectionArgs([Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "selectionArgs"    # [Ljava/lang/String;
    .param p2, "rawQueryArgLength"    # I
    .param p3, "rawQueryArgValue"    # Ljava/lang/String;

    .prologue
    .line 865
    if-nez p1, :cond_0

    const/4 v3, 0x0

    .line 866
    .local v3, "selectionArgsLength":I
    :goto_0
    add-int v2, p2, v3

    .line 867
    .local v2, "newSelectionArgsLength":I
    new-array v1, v2, [Ljava/lang/String;

    .line 868
    .local v1, "newSelectionArgs":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_1

    .line 869
    aput-object p3, v1, v0

    .line 868
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 865
    .end local v0    # "i":I
    .end local v1    # "newSelectionArgs":[Ljava/lang/String;
    .end local v2    # "newSelectionArgsLength":I
    .end local v3    # "selectionArgsLength":I
    :cond_0
    array-length v3, p1

    goto :goto_0

    .line 871
    .restart local v0    # "i":I
    .restart local v1    # "newSelectionArgs":[Ljava/lang/String;
    .restart local v2    # "newSelectionArgsLength":I
    .restart local v3    # "selectionArgsLength":I
    :cond_1
    if-lez v3, :cond_2

    .line 872
    move v0, p2

    :goto_2
    if-ge v0, v2, :cond_2

    .line 873
    sub-int v4, v0, p2

    aget-object v4, p1, v4

    aput-object v4, v1, v0

    .line 872
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 883
    :cond_2
    return-object v1
.end method

.method private makeSearchSectionIndexExtras(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 15
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "qb"    # Landroid/database/sqlite/SQLiteQueryBuilder;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "limit"    # Ljava/lang/String;

    .prologue
    .line 1236
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 1238
    const/4 v9, 0x0

    .line 1260
    :goto_0
    return-object v9

    .line 1241
    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "grouporder"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "count(*) AS count"

    aput-object v1, v2, v0

    const-string v5, "grouporder"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 1242
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1245
    .local v13, "indexCursor":Landroid/database/Cursor;
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 1246
    .local v14, "numLabels":I
    new-array v11, v14, [I

    .line 1247
    .local v11, "grouporders":[I
    new-array v10, v14, [I

    .line 1249
    .local v10, "counts":[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v14, :cond_1

    .line 1250
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    .line 1251
    const/4 v0, 0x0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v11, v12

    .line 1252
    const/4 v0, 0x1

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v10, v12

    .line 1249
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1254
    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1256
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 1257
    .local v9, "bundle":Landroid/os/Bundle;
    const-string v0, "index_grouporder"

    invoke-virtual {v9, v0, v11}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1258
    const-string v0, "index_counts"

    invoke-virtual {v9, v0, v10}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method private makeSortOrderFromSelectionGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "selectionGroup"    # Ljava/lang/String;
    .param p2, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 3579
    move-object v0, p2

    .line 3581
    .local v0, "newSortOrder":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 3622
    const-string v1, "audio"

    .line 3623
    .local v1, "tableName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\\b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3627
    :goto_1
    sget-object v2, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeSortOrderFromSelectionGroup () - newSortOrder : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3628
    return-object v0

    .line 3581
    .end local v1    # "tableName":Ljava/lang/String;
    :sswitch_0
    const-string v3, "composer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "album_id"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "music_album_artist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "artist_id"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "bucket_id"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x4

    goto/16 :goto_0

    :sswitch_5
    const-string v3, "genre_name"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x5

    goto/16 :goto_0

    .line 3583
    :pswitch_0
    const-string v1, "music_composers_view"

    .line 3584
    .restart local v1    # "tableName":Ljava/lang/String;
    const-string v2, "\\bcomposer\\b"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "composer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3585
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3587
    goto :goto_1

    .line 3589
    .end local v1    # "tableName":Ljava/lang/String;
    :pswitch_1
    const-string v1, "music_album_info"

    .line 3590
    .restart local v1    # "tableName":Ljava/lang/String;
    const-string v2, "\\byear_name\\b"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "year_name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3591
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3593
    const-string v2, "\\balbum\\b"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "album"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3594
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3596
    goto/16 :goto_1

    .line 3598
    .end local v1    # "tableName":Ljava/lang/String;
    :pswitch_2
    const-string v1, "music_album_artist_view"

    .line 3599
    .restart local v1    # "tableName":Ljava/lang/String;
    const-string v2, "\\bartist\\b"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "artist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3600
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3602
    goto/16 :goto_1

    .line 3604
    .end local v1    # "tableName":Ljava/lang/String;
    :pswitch_3
    const-string v1, "music_artist_info"

    .line 3605
    .restart local v1    # "tableName":Ljava/lang/String;
    const-string v2, "\\bartist\\b"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "artist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3606
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3608
    goto/16 :goto_1

    .line 3610
    .end local v1    # "tableName":Ljava/lang/String;
    :pswitch_4
    const-string v1, "music_folders_view"

    .line 3611
    .restart local v1    # "tableName":Ljava/lang/String;
    const-string v2, "\\bbucket_display_name\\b"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "bucket_display_name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3612
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3614
    goto/16 :goto_1

    .line 3616
    .end local v1    # "tableName":Ljava/lang/String;
    :pswitch_5
    const-string v1, "music_genres_view"

    .line 3617
    .restart local v1    # "tableName":Ljava/lang/String;
    const-string v2, "\\bgenre_name\\b"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "genre_name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3618
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3620
    goto/16 :goto_1

    .line 3581
    :sswitch_data_0
    .sparse-switch
        -0x54645c39 -> :sswitch_5
        -0x23b93ee0 -> :sswitch_0
        0x223e7913 -> :sswitch_3
        0x252b72f1 -> :sswitch_2
        0x5b51a8eb -> :sswitch_1
        0x6d80e790 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private makeUniqueKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2
    .param p1, "sourceId"    # Ljava/lang/String;
    .param p2, "meta"    # Ljava/lang/String;
    .param p3, "cpAttrs"    # Ljava/lang/Integer;

    .prologue
    .line 3165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3166
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "si:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3167
    const-string v1, "_md:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3168
    const-string v1, "_ca:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private moveFavoriteEntry(Landroid/database/sqlite/SQLiteDatabase;II)I
    .locals 15
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "from"    # I
    .param p3, "to"    # I

    .prologue
    .line 3326
    sget-object v2, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveFavoriteEntry from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3327
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_0

    .line 3328
    const/4 v13, 0x0

    .line 3373
    :goto_0
    return v13

    .line 3330
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3332
    :try_start_0
    const-string v5, "(category_id == -11 AND data1 > 0 ) OR category_id != -11"

    .line 3337
    .local v5, "selection":Ljava/lang/String;
    const-string v3, "hearts"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "display_order"

    aput-object v6, v4, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "display_order"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ",1"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 3340
    .local v11, "c":Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3341
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 3342
    .local v12, "fromDisplayOrder":I
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3343
    const-string v3, "hearts"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "display_order"

    aput-object v6, v4, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "display_order"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ",1"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 3346
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3347
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 3348
    .local v14, "toDisplayOrder":I
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE hearts SET display_order=-1 WHERE display_order="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3356
    move/from16 v0, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_1

    .line 3357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE hearts SET display_order=display_order-1 WHERE display_order<="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND display_order>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3360
    sub-int v2, p3, p2

    add-int/lit8 v13, v2, 0x1

    .line 3367
    .local v13, "numlines":I
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE hearts SET display_order="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE display_order=-1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3369
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 3370
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Hearts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3373
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 3362
    .end local v13    # "numlines":I
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE hearts SET display_order=display_order+1 WHERE display_order>="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND display_order<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3365
    sub-int v2, p2, p3

    add-int/lit8 v13, v2, 0x1

    .restart local v13    # "numlines":I
    goto :goto_1

    .line 3373
    .end local v5    # "selection":Ljava/lang/String;
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v12    # "fromDisplayOrder":I
    .end local v13    # "numlines":I
    .end local v14    # "toDisplayOrder":I
    :catchall_0
    move-exception v2

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method private movePlaylistEntry(Landroid/database/sqlite/SQLiteDatabase;JII)I
    .locals 18
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "playlist"    # J
    .param p4, "from"    # I
    .param p5, "to"    # I

    .prologue
    .line 2434
    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_0

    .line 2435
    const/4 v13, 0x0

    .line 2490
    :goto_0
    return v13

    .line 2437
    :cond_0
    sget-object v2, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "movePlaylistEntry from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2438
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2441
    :try_start_0
    const-string v3, "audio_playlists_map M, audio_meta A"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "play_order"

    aput-object v5, v4, v2

    const-string v5, "playlist_id=? AND M.audio_id=A._id"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 2442
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "play_order"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ",1"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v2, p1

    .line 2441
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2444
    .local v11, "c":Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2445
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 2447
    .local v12, "from_play_order":I
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2448
    const-string v3, "audio_playlists_map M, audio_meta A"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "play_order"

    aput-object v5, v4, v2

    const-string v5, "playlist_id=? AND M.audio_id=A._id"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 2449
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "play_order"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ",1"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v2, p1

    .line 2448
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2451
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2452
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 2454
    .local v15, "to_play_order":I
    sget-object v2, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "movePlaylistEntry from_play_order "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", to_play_order "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2458
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE audio_playlists_map SET play_order=-1 WHERE play_order="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND playlist_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2466
    move/from16 v0, p4

    move/from16 v1, p5

    if-ge v0, v1, :cond_2

    .line 2467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE audio_playlists_map SET play_order=play_order-1 WHERE play_order<="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND play_order>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND playlist_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2470
    sub-int v2, p5, p4

    add-int/lit8 v13, v2, 0x1

    .line 2477
    .local v13, "numlines":I
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE audio_playlists_map SET play_order="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE play_order=-1 AND playlist_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2479
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 2480
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 2481
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v16

    .line 2483
    .local v16, "uri":Landroid/net/Uri;
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v2, :cond_1

    .line 2484
    invoke-static/range {p2 .. p3}, Lcom/samsung/android/app/music/provider/MilkContents$Playlists$Members;->getContentUri(J)Landroid/net/Uri;

    move-result-object v14

    .line 2485
    .local v14, "onlineUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v14, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2487
    .end local v14    # "onlineUri":Landroid/net/Uri;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2490
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 2472
    .end local v13    # "numlines":I
    .end local v16    # "uri":Landroid/net/Uri;
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE audio_playlists_map SET play_order=play_order+1 WHERE play_order>="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND play_order<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND playlist_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2475
    sub-int v2, p4, p5

    add-int/lit8 v13, v2, 0x1

    .restart local v13    # "numlines":I
    goto/16 :goto_1

    .line 2490
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v12    # "from_play_order":I
    .end local v13    # "numlines":I
    .end local v15    # "to_play_order":I
    :catchall_0
    move-exception v2

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method private notifyMultipleChanges(Landroid/net/Uri;I)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "match"    # I

    .prologue
    const/4 v3, 0x0

    .line 2096
    const-string v1, "notifyChange"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2097
    .local v0, "notifyChange":Ljava/lang/String;
    const-string v1, "disable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2098
    const/16 v1, 0x3e8

    if-lt p2, v1, :cond_1

    .line 2108
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.sec.android.app.music/audio"

    .line 2109
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2115
    :cond_0
    :goto_0
    return-void

    .line 2112
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private nowPlayingListBulkInsert(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 20
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 1455
    const/4 v10, -0x1

    .line 1457
    .local v10, "playOrderBase":I
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1459
    const-string v14, "delete_before_insert"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1460
    .local v4, "delete":Ljava/lang/String;
    const-string v14, "delete"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1461
    const-string v14, "now_playing_queue_map"

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1462
    const/4 v10, 0x0

    .line 1475
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 1477
    .local v6, "numInserted":I
    const/4 v12, 0x0

    .line 1479
    .local v12, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v11, "INSERT INTO now_playing_queue_map (audio_id, play_order) VALUES (?,?)"

    .line 1481
    .local v11, "sql":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v12

    .line 1482
    move-object/from16 v0, p3

    array-length v5, v0

    .line 1483
    .local v5, "len":I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v16, v0

    const/4 v14, 0x0

    move v15, v14

    :goto_1
    move/from16 v0, v16

    if-ge v15, v0, :cond_4

    aget-object v13, p3, v15

    .line 1484
    .local v13, "value":Landroid/content/ContentValues;
    const-string v14, "audio_id"

    .line 1485
    invoke-virtual {v13, v14}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 1486
    .local v2, "audioId":J
    const/4 v14, 0x1

    invoke-virtual {v12, v14, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1489
    const-string v14, "play_order"

    invoke-virtual {v13, v14}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 1490
    .local v7, "order":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 1492
    .local v9, "playOrder":I
    if-nez v7, :cond_3

    .line 1494
    add-int/lit8 v9, v10, 0x1

    .line 1495
    add-int/lit8 v10, v10, 0x1

    .line 1501
    .end local v7    # "order":Ljava/lang/Object;
    :cond_1
    :goto_2
    const/4 v14, 0x2

    int-to-long v0, v9

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v12, v14, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1503
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1504
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1483
    add-int/lit8 v14, v15, 0x1

    move v15, v14

    goto :goto_1

    .line 1465
    .end local v2    # "audioId":J
    .end local v5    # "len":I
    .end local v6    # "numInserted":I
    .end local v9    # "playOrder":I
    .end local v11    # "sql":Ljava/lang/String;
    .end local v12    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .end local v13    # "value":Landroid/content/ContentValues;
    :cond_2
    const-string v14, "SELECT ifnull(max(play_order), 0)  FROM now_playing_queue_map"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1468
    .local v8, "ordinal":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 1469
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1470
    const/4 v14, 0x0

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1471
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1497
    .end local v8    # "ordinal":Landroid/database/Cursor;
    .restart local v2    # "audioId":J
    .restart local v5    # "len":I
    .restart local v6    # "numInserted":I
    .restart local v7    # "order":Ljava/lang/Object;
    .restart local v9    # "playOrder":I
    .restart local v11    # "sql":Ljava/lang/String;
    .restart local v12    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .restart local v13    # "value":Landroid/content/ContentValues;
    :cond_3
    :try_start_1
    instance-of v14, v7, Ljava/lang/Number;

    if-eqz v14, :cond_1

    .line 1498
    check-cast v7, Ljava/lang/Number;

    .end local v7    # "order":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v9

    goto :goto_2

    .line 1507
    .end local v2    # "audioId":J
    .end local v9    # "playOrder":I
    .end local v13    # "value":Landroid/content/ContentValues;
    :cond_4
    move v6, v5

    .line 1508
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1510
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1511
    if-eqz v12, :cond_5

    .line 1512
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1515
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v14, v0, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1516
    return v6

    .line 1510
    .end local v5    # "len":I
    .end local v11    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v14

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1511
    if-eqz v12, :cond_6

    .line 1512
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_6
    throw v14
.end method

.method private nowPlayingUniqueListBulkInsert(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 1520
    const/4 v0, 0x0

    .line 1521
    .local v0, "numInserted":I
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1522
    const-string v2, "delete from now_playing_queue_unique"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1524
    :try_start_0
    array-length v4, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, p3, v3

    .line 1525
    .local v1, "value":Landroid/content/ContentValues;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSERT INTO now_playing_queue_unique (audio_id, recent_order) VALUES ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v2, "audio_id"

    .line 1527
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v2, "recent_order"

    .line 1528
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1525
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1524
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 1530
    .end local v1    # "value":Landroid/content/ContentValues;
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1532
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1534
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1535
    return v0

    .line 1532
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method private playlistBulkInsert(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 24
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 1381
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->getPlaylistIdFromUri(Landroid/net/Uri;)J

    move-result-wide v14

    .line 1382
    .local v14, "playlistId":J
    const/4 v12, -0x1

    .line 1384
    .local v12, "playOrderBase":I
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1386
    const-string v19, "delete_before_insert"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1387
    .local v6, "delete":Ljava/lang/String;
    const-string v19, "delete"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1388
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "playlist_id="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1389
    .local v18, "whereClause":Ljava/lang/String;
    const-string v19, "audio_playlists_map"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1390
    const/4 v12, 0x0

    .line 1404
    .end local v18    # "whereClause":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v8, 0x0

    .line 1406
    .local v8, "numInserted":I
    const/16 v16, 0x0

    .line 1408
    .local v16, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v13, "INSERT INTO audio_playlists_map (audio_id, playlist_id, play_order) VALUES (?,?,?)"

    .line 1410
    .local v13, "sql":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v16

    .line 1411
    move-object/from16 v0, p3

    array-length v7, v0

    .line 1412
    .local v7, "len":I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    const/16 v19, 0x0

    move/from16 v20, v19

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    aget-object v17, p3, v20

    .line 1413
    .local v17, "value":Landroid/content/ContentValues;
    const-string v19, "audio_id"

    .line 1414
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Number;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 1415
    .local v4, "audioId":J
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1416
    const/16 v19, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1419
    const-string v19, "play_order"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 1420
    .local v9, "order":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 1422
    .local v11, "playOrder":I
    if-nez v9, :cond_3

    .line 1424
    add-int/lit8 v11, v12, 0x1

    .line 1425
    add-int/lit8 v12, v12, 0x1

    .line 1431
    .end local v9    # "order":Ljava/lang/Object;
    :cond_1
    :goto_2
    const/16 v19, 0x3

    int-to-long v0, v11

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1433
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1434
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1412
    add-int/lit8 v19, v20, 0x1

    move/from16 v20, v19

    goto :goto_1

    .line 1393
    .end local v4    # "audioId":J
    .end local v7    # "len":I
    .end local v8    # "numInserted":I
    .end local v11    # "playOrder":I
    .end local v13    # "sql":Ljava/lang/String;
    .end local v16    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .end local v17    # "value":Landroid/content/ContentValues;
    :cond_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SELECT ifnull(max(play_order), 0)  FROM audio_playlists_map WHERE playlist_id = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1397
    .local v10, "ordinal":Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 1398
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1399
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1400
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1427
    .end local v10    # "ordinal":Landroid/database/Cursor;
    .restart local v4    # "audioId":J
    .restart local v7    # "len":I
    .restart local v8    # "numInserted":I
    .restart local v9    # "order":Ljava/lang/Object;
    .restart local v11    # "playOrder":I
    .restart local v13    # "sql":Ljava/lang/String;
    .restart local v16    # "stmt":Landroid/database/sqlite/SQLiteStatement;
    .restart local v17    # "value":Landroid/content/ContentValues;
    :cond_3
    :try_start_1
    instance-of v0, v9, Ljava/lang/Number;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 1428
    check-cast v9, Ljava/lang/Number;

    .end local v9    # "order":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v11

    goto :goto_2

    .line 1438
    .end local v4    # "audioId":J
    .end local v11    # "playOrder":I
    .end local v17    # "value":Landroid/content/ContentValues;
    :cond_4
    const-string v19, "UPDATE audio_playlists_map SET audio_data=(SELECT _data FROM audio WHERE _id=audio_id) WHERE audio_data is NULL"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1441
    move v8, v7

    .line 1442
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1444
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1445
    if-eqz v16, :cond_5

    .line 1446
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1449
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1450
    return v8

    .line 1444
    .end local v7    # "len":I
    .end local v13    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v19

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1445
    if-eqz v16, :cond_6

    .line 1446
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_6
    throw v19
.end method

.method private playlistSyncBulkInsert(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 24
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 1539
    const/4 v9, 0x0

    .line 1540
    .local v9, "numInserted":I
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1542
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    .line 1543
    .local v12, "playlistId":J
    const/16 v16, 0x0

    .line 1545
    .local v16, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v19, "delete_before_insert"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1546
    .local v5, "delete":Ljava/lang/String;
    const-string v19, "delete"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1547
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    .line 1548
    .local v11, "playlistIdString":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "DELETE FROM audio_playlists_map WHERE playlist_id=? AND audio_data IN (SELECT audio_data FROM audio_playlists_map, audio WHERE audio_data=audio._data AND playlist_id=? AND "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    .line 1551
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->buildCpAttrSelection(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " );"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1552
    .local v6, "deleteQuery":Ljava/lang/String;
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v11, v19, v20

    const/16 v20, 0x1

    aput-object v11, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1553
    sget-object v19, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    const-string v20, "playlistSyncBulkInsert : delete local tracks"

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    .end local v6    # "deleteQuery":Ljava/lang/String;
    .end local v11    # "playlistIdString":Ljava/lang/String;
    :cond_0
    const-string v15, "INSERT INTO audio_playlists_map (audio_id, audio_source_id, playlist_id, play_order) VALUES (-1, ?,?,?)"

    .line 1558
    .local v15, "sql":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v16

    .line 1559
    move-object/from16 v0, p3

    array-length v8, v0

    .line 1560
    .local v8, "len":I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v21, v0

    const/16 v19, 0x0

    move/from16 v20, v19

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    aget-object v18, p3, v20

    .line 1561
    .local v18, "value":Landroid/content/ContentValues;
    const-string v19, "audio_source_id"

    .line 1562
    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1563
    .local v4, "audioSourceId":Ljava/lang/String;
    const-string v19, "play_order"

    .line 1564
    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Number;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 1565
    .local v10, "playOrder":I
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1566
    const/16 v19, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1567
    const/16 v19, 0x3

    int-to-long v0, v10

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1569
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1570
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 1560
    add-int/lit8 v19, v20, 0x1

    move/from16 v20, v19

    goto :goto_0

    .line 1572
    .end local v4    # "audioSourceId":Ljava/lang/String;
    .end local v10    # "playOrder":I
    .end local v18    # "value":Landroid/content/ContentValues;
    :cond_1
    move v9, v8

    .line 1574
    if-eqz v8, :cond_2

    .line 1577
    const-string v19, "UPDATE audio_playlists_map SET audio_id=(SELECT CASE WHEN (SELECT _id FROM audio_meta WHERE source_id=audio_source_id) IS NULL THEN -1 ELSE (SELECT _id FROM audio_meta WHERE source_id=audio_source_id) END) WHERE audio_id=-1;"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1583
    const-string v19, "UPDATE audio_playlists_map SET audio_data=(SELECT _data FROM audio WHERE _id=audio_id) WHERE audio_data is NULL"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1586
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1590
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1591
    if-eqz v16, :cond_3

    .line 1592
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1597
    .end local v5    # "delete":Ljava/lang/String;
    .end local v8    # "len":I
    .end local v15    # "sql":Ljava/lang/String;
    :cond_3
    :goto_1
    move-object/from16 v0, p3

    array-length v14, v0

    .line 1598
    .local v14, "sourceCount":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v12, v13}, Lcom/samsung/android/app/music/provider/MusicProvider;->getCurrentPlaylistMembersLocalCount(Landroid/database/sqlite/SQLiteDatabase;IJ)I

    move-result v17

    .line 1600
    .local v17, "targetCount":I
    move/from16 v0, v17

    if-ne v14, v0, :cond_4

    .line 1602
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "UPDATE audio_playlists SET synced_hashcode=? WHERE _id="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "SYNCED"

    aput-object v22, v20, v21

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1604
    sget-object v19, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "playlistSyncBulkInsert : source == target "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    sget-object v20, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1608
    return v9

    .line 1587
    .end local v14    # "sourceCount":I
    .end local v17    # "targetCount":I
    :catch_0
    move-exception v7

    .line 1588
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    const/16 v19, 0x1

    :try_start_1
    sget-object v20, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1590
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1591
    if-eqz v16, :cond_3

    .line 1592
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_1

    .line 1590
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v19

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1591
    if-eqz v16, :cond_5

    .line 1592
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_5
    throw v19
.end method

.method private queryMostPlayedRank(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 888
    const-string v5, "SELECT _id, title, album_id, cp_attrs, list_type, max(sum_of_most_played) AS count_of_most_played, dummy FROM ( SELECT audio.artist_id AS _id, artist AS title, sum(most_played) AS sum_of_most_played, album_id, cp_attrs, 65539 AS list_type, min(album COLLATE LOCALIZED) AS dummy FROM audio WHERE cp_attrs & ? GROUP BY artist_id) UNION ALL SELECT _id, title, album_id, cp_attrs, list_type, max(sum_of_most_played) AS count_of_most_played, dummy FROM ( SELECT audio.album_id AS _id, album AS title, sum(most_played) AS sum_of_most_played, album_id, cp_attrs, 65538 AS list_type, NULL AS dummy FROM audio WHERE cp_attrs & ? GROUP BY album_id)"

    invoke-direct {p0, v5, p3, p4, p6}, Lcom/samsung/android/app/music/provider/MusicProvider;->makeRawQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 890
    .local v4, "sql":Ljava/lang/String;
    const/4 v3, 0x2

    .line 891
    .local v3, "rawQueryArgLength":I
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getCpAttrsFromUri(Landroid/net/Uri;)I

    move-result v1

    .line 893
    .local v1, "cpAttrs":I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 892
    invoke-direct {p0, p5, v3, v5}, Lcom/samsung/android/app/music/provider/MusicProvider;->makeRawQuerySelectionArgs([Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 894
    .local v2, "newSelectionArgs":[Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 895
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 896
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-interface {v0, v5, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 898
    :cond_0
    return-object v0
.end method

.method private queryPlaylistMeta(Landroid/database/sqlite/SQLiteDatabase;ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uriMatch"    # I
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 905
    const-string v10, "playlist_type"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 906
    .local v6, "playlistType":Ljava/lang/String;
    const/16 v10, 0x466

    if-ne p2, v10, :cond_2

    .line 907
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/samsung/android/app/music/provider/MusicDBInfo$PlaylistsMeta;->META_RAW_QUERY:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v6, :cond_1

    const-string v10, "online"

    .line 909
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    .line 908
    :goto_0
    invoke-static {v10}, Lcom/samsung/android/app/music/provider/MusicDBInfo$PlaylistsMeta;->getUserPlaylistTracksRawQuery(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 910
    .local v7, "rawQuery":Ljava/lang/String;
    const/4 v8, 0x4

    .line 920
    .local v8, "rawQueryArgLength":I
    :goto_1
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    invoke-direct {p0, v7, v0, v1, v2}, Lcom/samsung/android/app/music/provider/MusicProvider;->makeRawQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 922
    .local v9, "sql":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getCpAttrsFromUri(Landroid/net/Uri;)I

    move-result v4

    .line 924
    .local v4, "cpAttrs":I
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 923
    move-object/from16 v0, p6

    invoke-direct {p0, v0, v8, v10}, Lcom/samsung/android/app/music/provider/MusicProvider;->makeRawQuerySelectionArgs([Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 925
    .local v5, "newSelectionArgs":[Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 926
    .local v3, "c":Landroid/database/Cursor;
    if-eqz v3, :cond_0

    .line 927
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-interface {v3, v10, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 929
    :cond_0
    return-object v3

    .line 909
    .end local v3    # "c":Landroid/database/Cursor;
    .end local v4    # "cpAttrs":I
    .end local v5    # "newSelectionArgs":[Ljava/lang/String;
    .end local v7    # "rawQuery":Ljava/lang/String;
    .end local v8    # "rawQueryArgLength":I
    .end local v9    # "sql":Ljava/lang/String;
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 911
    :cond_2
    const/16 v10, 0x467

    if-ne p2, v10, :cond_3

    .line 912
    sget-object v7, Lcom/samsung/android/app/music/provider/MusicDBInfo$PlaylistsMeta;->META_CARDVIEW_RAW_QUERY:Ljava/lang/String;

    .line 913
    .restart local v7    # "rawQuery":Ljava/lang/String;
    const/4 v8, 0x3

    .restart local v8    # "rawQueryArgLength":I
    goto :goto_1

    .line 916
    .end local v7    # "rawQuery":Ljava/lang/String;
    .end local v8    # "rawQueryArgLength":I
    :cond_3
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "queryPlaylistMeta : invalid uriMatch value "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method private removeContentValuesNotInAudioMetaTable(Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 2422
    const-string v0, "album_art_location"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2423
    const-string v0, "album"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2424
    const-string v0, "album_artist"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2425
    const-string v0, "album_key"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2426
    const-string/jumbo v0, "source_album_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2428
    const-string v0, "artist"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2429
    const-string v0, "artist_key"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2430
    const-string/jumbo v0, "source_artist_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2431
    return-void
.end method

.method private updateAlbumArt(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "albumId"    # J
    .param p4, "sourceAlbumId"    # Ljava/lang/String;
    .param p5, "albumArtLocation"    # Ljava/lang/String;

    .prologue
    .line 2968
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2969
    .local v0, "newAlbumArt":Landroid/content/ContentValues;
    const-string/jumbo v2, "source_album_id"

    invoke-virtual {v0, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2970
    const-string v2, "album_art_location"

    invoke-virtual {v0, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2971
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "album_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2972
    .local v1, "where":Ljava/lang/String;
    const-string v2, "album_art"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2973
    return-void
.end method

.method private updateAudioFile(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 46
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 2243
    const-string v4, "artist"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 2244
    .local v29, "artist":Ljava/lang/String;
    const-string v4, "album"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 2245
    .local v24, "album":Ljava/lang/String;
    const-string v4, "_data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 2246
    .local v41, "path":Ljava/lang/String;
    const-string v4, "cp_attrs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    .line 2247
    .local v17, "cpAttrs":Ljava/lang/Integer;
    if-eqz v41, :cond_0

    .line 2248
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/provider/MusicProvider;->computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 2252
    :cond_0
    if-nez v29, :cond_1

    if-eqz v24, :cond_3

    .line 2253
    :cond_1
    if-eqz v41, :cond_2

    if-nez v17, :cond_3

    .line 2254
    :cond_2
    const-string v5, "audio_meta"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v8, "_data"

    aput-object v8, v6, v4

    const/4 v4, 0x1

    const-string v8, "cp_attrs"

    aput-object v8, v6, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v38

    .local v38, "c":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 2257
    if-eqz v38, :cond_c

    .line 2258
    :try_start_0
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->getCount()I

    move-result v40

    .line 2259
    .local v40, "numRows":I
    const/4 v4, 0x1

    move/from16 v0, v40

    if-ne v0, v4, :cond_a

    .line 2260
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2261
    const/4 v4, 0x0

    move-object/from16 v0, v38

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 2262
    const/4 v4, 0x1

    move-object/from16 v0, v38

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v17

    .line 2270
    .end local v40    # "numRows":I
    :goto_0
    if-eqz v38, :cond_3

    if-eqz v6, :cond_e

    :try_start_1
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 2274
    .end local v38    # "c":Landroid/database/Cursor;
    :cond_3
    :goto_1
    if-eqz v29, :cond_4

    if-eqz v17, :cond_4

    .line 2276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mArtistCache:Ljava/util/HashMap;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 2277
    :try_start_2
    const-string/jumbo v4, "source_artist_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2278
    .local v12, "sourceArtistId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v17

    invoke-direct {v0, v12, v1, v2}, Lcom/samsung/android/app/music/provider/MusicProvider;->makeUniqueKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v13

    .line 2279
    .local v13, "artistUniqueKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mArtistCache:Ljava/util/HashMap;

    invoke-virtual {v4, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/Long;

    .line 2280
    .local v43, "tempArtistId":Ljava/lang/Long;
    if-nez v43, :cond_10

    .line 2281
    const-string v6, "artists"

    const-string v7, "artist_unique_key"

    const-string v8, "artist_key"

    const-string v9, "artist"

    const-string/jumbo v11, "source_artist_id"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mArtistCache:Ljava/util/HashMap;

    move-object/from16 v16, v0

    const/16 v19, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v10, v29

    move-object/from16 v15, v29

    move-object/from16 v18, p2

    invoke-direct/range {v4 .. v19}, Lcom/samsung/android/app/music/provider/MusicProvider;->getKeyIdForName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Integer;Landroid/content/ContentValues;Z)J

    move-result-wide v36

    .line 2289
    .local v36, "artistRowId":J
    :goto_2
    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2290
    const-wide/16 v8, 0x0

    cmp-long v4, v36, v8

    if-lez v4, :cond_4

    .line 2291
    const-string v4, "artist_id"

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2296
    .end local v12    # "sourceArtistId":Ljava/lang/String;
    .end local v13    # "artistUniqueKey":Ljava/lang/String;
    .end local v36    # "artistRowId":J
    .end local v43    # "tempArtistId":Ljava/lang/Long;
    :cond_4
    if-eqz v24, :cond_5

    if-eqz v17, :cond_5

    .line 2297
    const-string v4, "album_artist"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2298
    .local v7, "albumArtist":Ljava/lang/String;
    const-string/jumbo v4, "source_album_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2300
    .local v5, "sourceAlbumId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mAlbumCache:Ljava/util/HashMap;

    monitor-enter v10

    .line 2301
    const/4 v4, 0x0

    const/16 v6, 0x2f

    .line 2302
    :try_start_3
    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v4, p0

    move-object/from16 v6, v24

    .line 2301
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/app/music/provider/MusicProvider;->makeAlbumUniqueKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v27

    .line 2303
    .local v27, "albumUniqueKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mAlbumCache:Ljava/util/HashMap;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/Long;

    .line 2304
    .local v42, "tempAlbumId":Ljava/lang/Long;
    if-nez v42, :cond_11

    .line 2305
    const-string v20, "albums"

    const-string v21, "album_unique_key"

    const-string v22, "album_key"

    const-string v23, "album"

    const-string/jumbo v25, "source_album_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mAlbumCache:Ljava/util/HashMap;

    move-object/from16 v30, v0

    const/16 v33, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v26, v5

    move-object/from16 v28, v7

    move-object/from16 v31, v17

    move-object/from16 v32, p2

    invoke-direct/range {v18 .. v33}, Lcom/samsung/android/app/music/provider/MusicProvider;->getKeyIdForName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Integer;Landroid/content/ContentValues;Z)J

    move-result-wide v34

    .line 2313
    .local v34, "albumRowId":J
    :goto_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2314
    const-wide/16 v8, 0x0

    cmp-long v4, v34, v8

    if-lez v4, :cond_5

    .line 2315
    const-string v4, "album_id"

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2319
    .end local v5    # "sourceAlbumId":Ljava/lang/String;
    .end local v7    # "albumArtist":Ljava/lang/String;
    .end local v27    # "albumUniqueKey":Ljava/lang/String;
    .end local v34    # "albumRowId":J
    .end local v42    # "tempAlbumId":Ljava/lang/Long;
    :cond_5
    const-string/jumbo v4, "title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 2320
    .local v44, "title":Ljava/lang/String;
    if-eqz v44, :cond_6

    if-eqz v17, :cond_6

    .line 2321
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v44

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/provider/MusicProvider;->computeTitleUnique(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2328
    :cond_6
    const-string v4, "album_artist"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2329
    .restart local v7    # "albumArtist":Ljava/lang/String;
    if-eqz v7, :cond_12

    .line 2330
    const-string v4, "music_album_artist"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2335
    :cond_7
    :goto_4
    const-string v4, "composer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2336
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->computeComposer(Landroid/content/ContentValues;)V

    .line 2338
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->convertYearToYearName(Landroid/content/ContentValues;)V

    .line 2339
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->computePinyinValues(Landroid/content/ContentValues;)V

    .line 2340
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->computeSortKeyValues(Landroid/content/ContentValues;)V

    .line 2342
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->updateLocalTrackId(Landroid/content/ContentValues;)V

    .line 2344
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->removeContentValuesNotInAudioMetaTable(Landroid/content/ContentValues;)V

    .line 2345
    const-string v4, "audio_meta"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v39

    .line 2346
    .end local v7    # "albumArtist":Ljava/lang/String;
    .end local v44    # "title":Ljava/lang/String;
    :cond_9
    :goto_5
    return v39

    .line 2264
    .restart local v38    # "c":Landroid/database/Cursor;
    .restart local v40    # "numRows":I
    :cond_a
    const/4 v4, 0x1

    :try_start_4
    sget-object v8, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateAudioFile : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v40

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " rows "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 2265
    const/16 v39, 0x0

    .line 2270
    if-eqz v38, :cond_9

    if-eqz v6, :cond_b

    :try_start_5
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_5

    :catch_0
    move-exception v4

    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_b
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 2268
    .end local v40    # "numRows":I
    :cond_c
    :try_start_6
    sget-object v4, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateAudioFile : can not get path, selection : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto/16 :goto_0

    .line 2254
    :catch_1
    move-exception v4

    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2270
    :catchall_0
    move-exception v6

    move-object/from16 v45, v6

    move-object v6, v4

    move-object/from16 v4, v45

    :goto_6
    if-eqz v38, :cond_d

    if-eqz v6, :cond_f

    :try_start_8
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    :cond_d
    :goto_7
    throw v4

    :catch_2
    move-exception v4

    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_e
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catch_3
    move-exception v8

    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_f
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V

    goto :goto_7

    .line 2287
    .end local v38    # "c":Landroid/database/Cursor;
    .restart local v12    # "sourceArtistId":Ljava/lang/String;
    .restart local v13    # "artistUniqueKey":Ljava/lang/String;
    .restart local v43    # "tempArtistId":Ljava/lang/Long;
    :cond_10
    :try_start_9
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    .restart local v36    # "artistRowId":J
    goto/16 :goto_2

    .line 2289
    .end local v12    # "sourceArtistId":Ljava/lang/String;
    .end local v13    # "artistUniqueKey":Ljava/lang/String;
    .end local v36    # "artistRowId":J
    .end local v43    # "tempArtistId":Ljava/lang/Long;
    :catchall_1
    move-exception v4

    monitor-exit v20
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v4

    .line 2311
    .restart local v5    # "sourceAlbumId":Ljava/lang/String;
    .restart local v7    # "albumArtist":Ljava/lang/String;
    .restart local v27    # "albumUniqueKey":Ljava/lang/String;
    .restart local v42    # "tempAlbumId":Ljava/lang/Long;
    :cond_11
    :try_start_a
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    .restart local v34    # "albumRowId":J
    goto/16 :goto_3

    .line 2313
    .end local v27    # "albumUniqueKey":Ljava/lang/String;
    .end local v34    # "albumRowId":J
    .end local v42    # "tempAlbumId":Ljava/lang/Long;
    :catchall_2
    move-exception v4

    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v4

    .line 2331
    .end local v5    # "sourceAlbumId":Ljava/lang/String;
    .restart local v44    # "title":Ljava/lang/String;
    :cond_12
    if-eqz v29, :cond_7

    .line 2332
    const-string v4, "music_album_artist"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2270
    .end local v7    # "albumArtist":Ljava/lang/String;
    .end local v44    # "title":Ljava/lang/String;
    .restart local v38    # "c":Landroid/database/Cursor;
    :catchall_3
    move-exception v4

    goto :goto_6
.end method

.method private updateAudioPlaylists(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 16
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "match"    # I
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "where"    # Ljava/lang/String;
    .param p5, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 2384
    const-string v3, "name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2385
    .local v14, "playlistName":Ljava/lang/String;
    if-eqz v14, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->isNoSyncUri(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2387
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "audio_playlists"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_data"

    aput-object v7, v5, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 2388
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2387
    .local v11, "c":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 2390
    if-eqz v11, :cond_1

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2391
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_0

    .line 2392
    const/4 v3, 0x1

    sget-object v5, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    const-string v6, "affected playlist count is more than two."

    invoke-static {v3, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 2394
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2395
    .local v13, "path":Ljava/lang/String;
    const-string v3, "_data"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const/16 v7, 0x2f

    .line 2396
    invoke-virtual {v13, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v13, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2395
    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2398
    .end local v13    # "path":Ljava/lang/String;
    :cond_1
    if-eqz v11, :cond_2

    if-eqz v4, :cond_4

    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2400
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v14}, Lcom/samsung/android/app/music/provider/MusicProvider;->computePlaylistNamePinyinAndSortKey(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 2403
    .end local v11    # "c":Landroid/database/Cursor;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "audio_playlists"

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 2404
    .local v12, "count":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-static/range {v3 .. v9}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->update(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2405
    return v12

    .line 2398
    .end local v12    # "count":I
    .restart local v11    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v3

    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2387
    :catch_1
    move-exception v3

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2398
    :catchall_0
    move-exception v4

    move-object v15, v4

    move-object v4, v3

    move-object v3, v15

    :goto_1
    if-eqz v11, :cond_5

    if-eqz v4, :cond_6

    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_5
    :goto_2
    throw v3

    :catch_2
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v3

    goto :goto_1
.end method

.method private updateLocalTrackId(Landroid/content/ContentValues;)V
    .locals 7
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 3534
    const-string/jumbo v3, "track"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 3535
    .local v2, "track":Ljava/lang/Integer;
    const-string v3, "_size"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 3536
    .local v1, "size":Ljava/lang/Long;
    const-string v3, "duration"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 3537
    .local v0, "duration":Ljava/lang/Long;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 3541
    :cond_0
    :goto_0
    return-void

    .line 3540
    :cond_1
    const-string v3, "local_track_id"

    const-string v4, "%d@%d@%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v6, 0x2

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateMdrmInfo(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v8, 0x0

    .line 2670
    const-string/jumbo v6, "validity"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 2671
    .local v3, "validity":Ljava/lang/Long;
    const-string/jumbo v6, "track_id"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2672
    .local v2, "trackId":Ljava/lang/String;
    const-string v6, "_id"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2673
    .local v0, "audioId":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 2674
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2675
    .local v1, "newValues":Landroid/content/ContentValues;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "audio_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2677
    .local v5, "where2":Ljava/lang/String;
    const-string/jumbo v6, "validity"

    invoke-virtual {v1, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2678
    const-string/jumbo v6, "track_id"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2679
    const-string v6, "milk_drm"

    invoke-virtual {p1, v6, v1, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2681
    .end local v1    # "newValues":Landroid/content/ContentValues;
    .end local v5    # "where2":Ljava/lang/String;
    :cond_0
    const-string/jumbo v6, "validity"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2682
    const-string/jumbo v6, "track_id"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2687
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/provider/MusicProvider;->removeContentValuesNotInAudioMetaTable(Landroid/content/ContentValues;)V

    .line 2688
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2689
    .local v4, "where":Ljava/lang/String;
    const-string v6, "audio_meta"

    invoke-virtual {p1, v6, p2, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    return v6
.end method

.method private updateSortKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "idField"    # Ljava/lang/String;
    .param p4, "metaField"    # Ljava/lang/String;
    .param p5, "sortKeyField"    # Ljava/lang/String;

    .prologue
    .line 3545
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v3, v1

    const/4 v1, 0x1

    aput-object p4, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object/from16 v2, p2

    .line 3546
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3545
    .local v9, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 3548
    if-eqz v9, :cond_0

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-nez v1, :cond_3

    .line 3560
    :cond_0
    if-eqz v9, :cond_1

    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 3561
    :cond_1
    :goto_0
    return-void

    .line 3560
    :catch_0
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3551
    :cond_3
    :try_start_2
    move-object/from16 v0, p3

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 3552
    .local v10, "idIndex":I
    move-object/from16 v0, p4

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 3556
    .local v11, "metaIndex":I
    :cond_4
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 3557
    .local v12, "values":Landroid/content/ContentValues;
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MusicDatabaseUtil;->getCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p2

    invoke-virtual {p1, v0, v12, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3559
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-nez v1, :cond_4

    .line 3560
    if-eqz v9, :cond_1

    if-eqz v2, :cond_5

    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3545
    .end local v10    # "idIndex":I
    .end local v11    # "metaIndex":I
    .end local v12    # "values":Landroid/content/ContentValues;
    :catch_2
    move-exception v1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3560
    :catchall_0
    move-exception v2

    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    :goto_1
    if-eqz v9, :cond_6

    if-eqz v2, :cond_7

    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_6
    :goto_2
    throw v1

    :catch_3
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "values"    # [Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    .line 1307
    sget-object v3, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bulkInsert uri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    sget-object v3, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 1310
    .local v1, "match":I
    const/4 v0, 0x0

    .line 1311
    .local v0, "count":I
    sparse-switch v1, :sswitch_data_0

    .line 1343
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicProvider;->findMatchedProvider(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;

    move-result-object v2

    .line 1344
    .local v2, "provider":Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;
    if-eqz v2, :cond_1

    .line 1345
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 1351
    .end local v2    # "provider":Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;
    :cond_0
    :goto_0
    sget-object v3, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bulkInsert : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " items are inserted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    return v0

    .line 1314
    :sswitch_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/provider/MusicProvider;->bulkUpdate(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 1315
    goto :goto_0

    .line 1318
    :sswitch_1
    iget-object v3, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v3, p1, p2}, Lcom/samsung/android/app/music/provider/MusicProvider;->playlistBulkInsert(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 1319
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v3, v4, p1, v1, p2}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->bulkInsert(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;I[Landroid/content/ContentValues;)V

    goto :goto_0

    .line 1322
    :sswitch_2
    iget-object v3, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v3, p1, p2}, Lcom/samsung/android/app/music/provider/MusicProvider;->nowPlayingListBulkInsert(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 1323
    goto :goto_0

    .line 1325
    :sswitch_3
    iget-object v3, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v3, p1, p2}, Lcom/samsung/android/app/music/provider/MusicProvider;->nowPlayingUniqueListBulkInsert(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 1326
    goto :goto_0

    .line 1328
    :sswitch_4
    iget-object v3, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v3, p1, p2}, Lcom/samsung/android/app/music/provider/MusicProvider;->playlistSyncBulkInsert(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 1329
    goto :goto_0

    .line 1331
    :sswitch_5
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/provider/MusicProvider;->dlnaContentsBulkInsert([Landroid/content/ContentValues;)I

    move-result v0

    .line 1333
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$ServerContents;->CONTENT_URI:Landroid/net/Uri;

    .line 1334
    invoke-virtual {v3, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 1337
    :sswitch_6
    iget-object v3, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p2, v3}, Lcom/samsung/android/app/music/provider/MusicProvider;->bulkInsertOnlineCaches([Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    .line 1338
    if-lez v0, :cond_0

    .line 1339
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 1347
    .restart local v2    # "provider":Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;
    :cond_1
    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->bulkInsertInternal(Landroid/net/Uri;[Landroid/content/ContentValues;I)I

    move-result v0

    goto :goto_0

    .line 1311
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_5
        0x12c -> :sswitch_0
        0x450 -> :sswitch_1
        0x451 -> :sswitch_1
        0x453 -> :sswitch_2
        0x456 -> :sswitch_4
        0x468 -> :sswitch_3
        0x476 -> :sswitch_6
    .end sparse-switch
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .param p1, "method"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 3380
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 3381
    .local v6, "context":Landroid/content/Context;
    invoke-static {v6}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/provider/MusicDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3382
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_0

    .line 3383
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    const-string v2, "call : SQLiteDatabase is null"

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v9

    .line 3432
    :goto_0
    return-object v0

    .line 3386
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 3426
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicProvider;->findMatchedProvider(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;

    move-result-object v7

    .line 3427
    .local v7, "provider":Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;
    if-eqz v7, :cond_4

    .line 3428
    invoke-interface {v7, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 3386
    .end local v7    # "provider":Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;
    :sswitch_0
    const-string/jumbo v2, "update_audio_playlists_map"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "rearrange_play_order"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "exec_sql"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v2, "update_sort_key"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    .line 3388
    :pswitch_0
    invoke-static {v1}, Lcom/samsung/android/app/music/provider/MusicProvider$PlaylistBackupAndRestoreUtil;->access$500(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_2
    move-object v0, v9

    .line 3432
    goto :goto_0

    .line 3393
    :pswitch_1
    invoke-static {v1, p2}, Lcom/samsung/android/app/music/provider/MusicProvider$PlaylistBackupAndRestoreUtil;->access$600(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_2

    .line 3397
    :pswitch_2
    const/4 v8, 0x0

    .line 3398
    .local v8, "selectionArgs":[Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 3399
    const-string/jumbo v0, "selectionArgs"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 3401
    :cond_2
    if-eqz v8, :cond_3

    array-length v0, v8

    if-lez v0, :cond_3

    .line 3402
    invoke-virtual {v1, p2, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3406
    :goto_3
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Method.EXEC_SQL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3404
    :cond_3
    invoke-virtual {v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_3

    .line 3410
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    :pswitch_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3412
    :try_start_0
    const-string v2, "artists"

    const-string v3, "artist_id"

    const-string v4, "artist"

    const-string v5, "artist_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/MusicProvider;->updateSortKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3416
    const-string v2, "albums"

    const-string v3, "album_id"

    const-string v4, "album"

    const-string v5, "album_key"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/MusicProvider;->updateSortKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3419
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3421
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 3430
    .restart local v7    # "provider":Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3386
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1e8c4421 -> :sswitch_0
        -0xf274b97 -> :sswitch_1
        0x38e08ef4 -> :sswitch_3
        0x79bbf520 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 19
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 1896
    sget-object v4, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete uri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " selection : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1900
    sget-object v4, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    .line 1902
    .local v12, "match":I
    sparse-switch v12, :sswitch_data_0

    .line 1991
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/music/provider/MusicProvider;->findMatchedProvider(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;

    move-result-object v17

    .line 1992
    .local v17, "provider":Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;
    if-eqz v17, :cond_3

    .line 1993
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 1999
    .end local v17    # "provider":Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;
    .local v15, "count":I
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/samsung/android/app/music/provider/MusicProvider;->notifyMultipleChanges(Landroid/net/Uri;I)V

    move/from16 v16, v15

    .line 2000
    .end local v15    # "count":I
    .local v16, "count":I
    :goto_1
    return v16

    .line 1904
    .end local v16    # "count":I
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v5, "smusic_db_info"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 1905
    .restart local v15    # "count":I
    goto :goto_0

    .line 1907
    .end local v15    # "count":I
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v5, "restore_list"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 1908
    .restart local v15    # "count":I
    goto :goto_0

    .line 1910
    .end local v15    # "count":I
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v4, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/app/music/provider/MusicProvider;->deleteAudioMedia(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 1911
    .restart local v15    # "count":I
    goto :goto_0

    .line 1913
    .end local v15    # "count":I
    :sswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1914
    .local v8, "where":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1915
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1916
    .local v18, "sb":Ljava/lang/StringBuilder;
    const-string v4, " AND ("

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1917
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1919
    .end local v18    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v4, p0

    move-object/from16 v7, p1

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/app/music/provider/MusicProvider;->deleteAudioMedia(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 1920
    .restart local v15    # "count":I
    goto/16 :goto_0

    .line 1922
    .end local v8    # "where":Ljava/lang/String;
    .end local v15    # "count":I
    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v11, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-static/range {v9 .. v14}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->delete(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;)V

    .line 1923
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "audio_playlists"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 1924
    .restart local v15    # "count":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move/from16 v16, v15

    .line 1925
    .end local v15    # "count":I
    .restart local v16    # "count":I
    goto/16 :goto_1

    .line 1927
    .end local v16    # "count":I
    :sswitch_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1928
    .restart local v8    # "where":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 1929
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1930
    .restart local v18    # "sb":Ljava/lang/StringBuilder;
    const-string v4, " AND ("

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1931
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1933
    .end local v18    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v7, 0x44f

    move-object/from16 v6, p1

    move-object/from16 v9, p3

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->delete(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;)V

    .line 1934
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "audio_playlists"

    move-object/from16 v0, p3

    invoke-virtual {v4, v5, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 1935
    .restart local v15    # "count":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move/from16 v16, v15

    .line 1936
    .end local v15    # "count":I
    .restart local v16    # "count":I
    goto/16 :goto_1

    .line 1939
    .end local v8    # "where":Ljava/lang/String;
    .end local v16    # "count":I
    :sswitch_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playlist_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1940
    .restart local v8    # "where":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 1941
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1942
    .restart local v18    # "sb":Ljava/lang/StringBuilder;
    const-string v4, " AND ("

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1943
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1945
    .end local v18    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v7, 0x451

    move-object/from16 v6, p1

    move-object/from16 v9, p3

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->delete(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;)V

    .line 1947
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "audio_playlists_map"

    move-object/from16 v0, p3

    invoke-virtual {v4, v5, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 1948
    .restart local v15    # "count":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move/from16 v16, v15

    .line 1949
    .end local v15    # "count":I
    .restart local v16    # "count":I
    goto/16 :goto_1

    .line 1951
    .end local v8    # "where":Ljava/lang/String;
    .end local v16    # "count":I
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "now_playing_queue_map"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 1953
    .restart local v15    # "count":I
    goto/16 :goto_0

    .line 1955
    .end local v15    # "count":I
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v5, "sync_playlist_list"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 1957
    .restart local v15    # "count":I
    goto/16 :goto_0

    .line 1959
    .end local v15    # "count":I
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "hearts"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 1961
    .restart local v15    # "count":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 1964
    .end local v15    # "count":I
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "dlna_dms_contents_table"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 1965
    .restart local v15    # "count":I
    goto/16 :goto_0

    .line 1967
    .end local v15    # "count":I
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "dlna_dms_table"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 1969
    .restart local v15    # "count":I
    goto/16 :goto_0

    .line 1971
    .end local v15    # "count":I
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "dlna_dmr_table"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 1973
    .restart local v15    # "count":I
    goto/16 :goto_0

    .line 1975
    .end local v15    # "count":I
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "dlna_open_intent_table"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 1977
    .restart local v15    # "count":I
    goto/16 :goto_0

    .line 1979
    .end local v15    # "count":I
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "dlna_dms_contents_table"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 1980
    .restart local v15    # "count":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "dlna_album_art"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v15, v4

    .line 1981
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "dlna_dms_table"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v15, v4

    .line 1983
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "dlna_dmr_table"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v15, v4

    .line 1985
    goto/16 :goto_0

    .line 1987
    .end local v15    # "count":I
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v5, "streaming_cache_table"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    .line 1989
    .restart local v15    # "count":I
    goto/16 :goto_0

    .line 1995
    .end local v15    # "count":I
    .restart local v17    # "provider":Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;
    :cond_3
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1902
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_a
        0x6 -> :sswitch_b
        0x7 -> :sswitch_c
        0x8 -> :sswitch_d
        0xa -> :sswitch_e
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
        0x44d -> :sswitch_2
        0x44e -> :sswitch_3
        0x44f -> :sswitch_4
        0x450 -> :sswitch_5
        0x451 -> :sswitch_6
        0x452 -> :sswitch_6
        0x453 -> :sswitch_7
        0x457 -> :sswitch_8
        0x474 -> :sswitch_9
        0x476 -> :sswitch_f
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1266
    const-string/jumbo v0, "vnd.android.cursor.dir/audio"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 1271
    sget-object v5, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert uri : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    sget-object v5, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 1275
    .local v0, "match":I
    const/16 v5, 0x44f

    if-ne v0, v5, :cond_2

    .line 1276
    if-eqz p2, :cond_2

    .line 1277
    const-string v5, "name"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1278
    .local v1, "name":Ljava/lang/String;
    sget-boolean v5, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->REGIONAL_CHN_PINYIN_ENABLED:Z

    if-eqz v5, :cond_0

    .line 1279
    const-string v5, "name_pinyin"

    .line 1280
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/PinyinUtil;->computeChineseSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1279
    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    :cond_0
    const-string v5, "FavoriteList#328795!432@1341"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1286
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/music/provider/MusicProvider;->insertInternal(Landroid/net/Uri;ILandroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 1302
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v2

    .line 1292
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicProvider;->findMatchedProvider(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;

    move-result-object v4

    .line 1293
    .local v4, "provider":Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;
    if-eqz v4, :cond_3

    .line 1294
    invoke-interface {v4, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 1296
    :cond_3
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/music/provider/MusicProvider;->insertInternal(Landroid/net/Uri;ILandroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 1298
    .local v2, "newUri":Landroid/net/Uri;
    const-string v5, "notifyChange"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1299
    .local v3, "notifyChange":Ljava/lang/String;
    if-nez v2, :cond_4

    const-string v5, "disable"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1300
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public insertOnlineAlbumsToAlbumTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;ZI)Landroid/content/ContentValues;
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "initialValue"    # Landroid/content/ContentValues;
    .param p3, "forceUpdate"    # Z
    .param p4, "cpAttrs"    # I

    .prologue
    .line 1709
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/provider/MusicProvider;->getAlbumIdFromOnlineContentValues(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;ZI)J

    move-result-wide v0

    .line 1710
    .local v0, "albumRowId":J
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1711
    .local v2, "returnValue":Landroid/content/ContentValues;
    const-string v3, "album_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1712
    return-object v2
.end method

.method public insertOnlineArtistsToArtistTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;ZI)Landroid/content/ContentValues;
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "initialValue"    # Landroid/content/ContentValues;
    .param p3, "forceUpdate"    # Z
    .param p4, "cpAttrs"    # I

    .prologue
    .line 1718
    .line 1719
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/provider/MusicProvider;->getArtistIdFromOnlineContentValues(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;ZI)J

    move-result-wide v0

    .line 1720
    .local v0, "artistRowId":J
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1721
    .local v2, "returnValue":Landroid/content/ContentValues;
    const-string v3, "artist_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1722
    return-object v2
.end method

.method public insertOnlineTracksToAudioTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)Landroid/content/ContentValues;
    .locals 17
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "initialValue"    # Landroid/content/ContentValues;
    .param p3, "cpAttrs"    # I

    .prologue
    .line 1649
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1650
    .local v8, "newValue":Landroid/content/ContentValues;
    const-string/jumbo v14, "source_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1651
    .local v12, "sourceId":Ljava/lang/String;
    const-string/jumbo v14, "title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1652
    .local v13, "title":Ljava/lang/String;
    const/4 v14, -0x1

    move/from16 v0, p3

    if-eq v0, v14, :cond_0

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 1653
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1654
    :cond_0
    const/4 v14, 0x1

    sget-object v15, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    const-string v16, "Necessary columns can\'t be null or empty."

    invoke-static/range {v14 .. v16}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    move-object v9, v8

    .line 1703
    :goto_0
    return-object v9

    .line 1665
    :cond_1
    const-string/jumbo v14, "source_id"

    invoke-virtual {v8, v14, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    const-string v14, "_data"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "dummy_data_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    const-string/jumbo v14, "title"

    invoke-virtual {v8, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    const-string v14, "album"

    const-string v15, "album"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    const-string v14, "album_id"

    const-string v15, "album_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    const-string v14, "album_artist"

    const-string v15, "album_artist"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    const-string v14, "artist"

    const-string v15, "artist"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    const-string v14, "artist_id"

    const-string v15, "artist_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    const-string v14, "duration"

    const-string v15, "duration"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    mul-int/lit16 v15, v15, 0x3e8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1679
    const-string v14, "cp_attrs"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1684
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/samsung/android/app/music/provider/MusicProvider;->getArtistIdFromOnlineContentValues(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;ZI)J

    move-result-wide v6

    .line 1685
    .local v6, "artistRowId":J
    const-string v14, "artist_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1686
    const-string v14, "artist"

    invoke-virtual {v8, v14}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1689
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v8, v14, v2}, Lcom/samsung/android/app/music/provider/MusicProvider;->getAlbumIdFromOnlineContentValues(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;ZI)J

    move-result-wide v4

    .line 1690
    .local v4, "albumRowId":J
    const-string v14, "album_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1691
    const-string v14, "album"

    invoke-virtual {v8, v14}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1692
    const-string v14, "album_artist"

    invoke-virtual {v8, v14}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1694
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13, v14}, Lcom/samsung/android/app/music/provider/MusicProvider;->computeTitleUnique(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1695
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/samsung/android/app/music/provider/MusicProvider;->computeSortKeyValues(Landroid/content/ContentValues;)V

    .line 1697
    const-string v14, "audio_meta"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    .line 1699
    .local v10, "rowAudioId":J
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1700
    .local v9, "returnValue":Landroid/content/ContentValues;
    const-string v14, "_id"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1701
    const-string v14, "album_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1702
    const-string v14, "artist_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0
.end method

.method public onCreate()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 315
    sget-object v3, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 317
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/provider/MusicDBHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 319
    sget-boolean v3, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v3, :cond_0

    .line 320
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->getInstance()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/app/music/provider/DaoMaster;->setDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 321
    new-instance v2, Lcom/samsung/android/app/music/provider/MilkProvider;

    iget-object v3, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v2, v0, v3, p0}, Lcom/samsung/android/app/music/provider/MilkProvider;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;)V

    .line 322
    .local v2, "milkProvider":Lcom/samsung/android/app/music/provider/MilkProvider;
    iget-object v3, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mContentsProviders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object v3, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mQueryDelegators:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    .end local v2    # "milkProvider":Lcom/samsung/android/app/music/provider/MilkProvider;
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 327
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v3, "content://media/external/audio/media"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mSrcProviderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 329
    const-string v3, "content://media/external/audio/albums/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mSrcProviderAlbumChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 332
    iget-object v3, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 335
    const-string v3, "content://com.sec.android.app.music/audio/playlists"

    .line 336
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MusicProvider;->mPlaylistChangeObserver:Landroid/database/ContentObserver;

    .line 335
    invoke-virtual {v1, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 338
    return v6
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 23
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 942
    sget-object v2, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "openFile uri "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    sget-object v2, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v18

    .line 945
    .local v18, "match":I
    const/16 v2, 0x461

    move/from16 v0, v18

    if-eq v0, v2, :cond_0

    .line 946
    sget-object v2, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    const-string v3, "openFile : only album art uri is vaild request"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    const/16 v19, 0x0

    .line 991
    :goto_0
    return-object v19

    .line 950
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v15

    .line 951
    .local v15, "albumId":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "source_album_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "album_art_location"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "_data"

    aput-object v3, v4, v2

    .line 953
    .local v4, "projection":[Ljava/lang/String;
    const-string v5, "album_id=?"

    .line 954
    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v15, v6, v2

    .line 955
    .local v6, "selectionArgs":[Ljava/lang/String;
    const/16 v19, 0x0

    .line 959
    .local v19, "pfd":Landroid/os/ParcelFileDescriptor;
    sget-object v2, Lcom/samsung/android/app/music/provider/MusicProvider;->sLocks:Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->lock(Ljava/lang/Object;)V

    .line 960
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    :try_start_0
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/app/music/provider/MusicProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v16

    .local v16, "c":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 961
    if-eqz v16, :cond_1

    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_4

    .line 962
    :cond_1
    sget-object v2, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    const-string v7, "openFile : no album info"

    invoke-static {v2, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 963
    const/4 v2, 0x0

    .line 988
    if-eqz v16, :cond_2

    if-eqz v3, :cond_3

    :try_start_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 989
    :cond_2
    :goto_1
    sget-object v3, Lcom/samsung/android/app/music/provider/MusicProvider;->sLocks:Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->unlock(Ljava/lang/Object;)V

    move-object/from16 v19, v2

    goto :goto_0

    .line 988
    :catch_0
    move-exception v7

    :try_start_3
    invoke-virtual {v3, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 989
    .end local v16    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    sget-object v3, Lcom/samsung/android/app/music/provider/MusicProvider;->sLocks:Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->unlock(Ljava/lang/Object;)V

    throw v2

    .line 988
    .restart local v16    # "c":Landroid/database/Cursor;
    :cond_3
    :try_start_4
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 965
    :cond_4
    const/4 v2, 0x1

    :try_start_5
    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 966
    .local v14, "albumArtLocation":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "openFile : albumArtLocation - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    const-string v2, "mediaStore"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 968
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 969
    .local v20, "sourceAlbumId":J
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v7, Lcom/samsung/android/app/music/provider/MusicProvider;->MEDIA_STORE_ALBUM_ART_URI:Landroid/net/Uri;

    .line 970
    move-wide/from16 v0, v20

    invoke-static {v7, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 969
    move-object/from16 v0, p2

    invoke-static {v2, v7, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->openFileDescriptor(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v19

    .line 971
    sget-object v2, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "openFile return pfd is returned from MediaProvider : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 972
    if-eqz v19, :cond_5

    .line 988
    .end local v20    # "sourceAlbumId":J
    :cond_5
    :goto_2
    if-eqz v16, :cond_6

    if-eqz v3, :cond_b

    :try_start_6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 989
    :cond_6
    :goto_3
    sget-object v2, Lcom/samsung/android/app/music/provider/MusicProvider;->sLocks:Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->unlock(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 975
    :cond_7
    if-eqz v14, :cond_a

    :try_start_7
    const-string v2, "musicProvider"

    .line 976
    invoke-virtual {v14, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 978
    invoke-static {v14}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArtLocationExtra;->getCondition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 979
    .local v17, "location":Ljava/lang/String;
    const-string v2, "mdrm"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 980
    const-string v2, "_data"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 981
    .local v12, "data":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v15}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object/from16 v7, p0

    move-object/from16 v13, p2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/app/music/provider/MusicProvider;->getMdrmAlbumArt(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v19

    .line 982
    goto :goto_2

    .line 983
    .end local v12    # "data":Ljava/lang/String;
    :cond_8
    const/4 v2, 0x1

    sget-object v7, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "openFile : invalid albumArtLocation:location : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    .line 960
    .end local v14    # "albumArtLocation":Ljava/lang/String;
    .end local v17    # "location":Ljava/lang/String;
    :catch_1
    move-exception v2

    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 988
    :catchall_1
    move-exception v3

    move-object/from16 v22, v3

    move-object v3, v2

    move-object/from16 v2, v22

    :goto_4
    if-eqz v16, :cond_9

    if-eqz v3, :cond_c

    :try_start_9
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_9
    :goto_5
    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 986
    .restart local v14    # "albumArtLocation":Ljava/lang/String;
    :cond_a
    const/4 v2, 0x1

    :try_start_b
    sget-object v7, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "openFile : invalid albumArtLocation : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto/16 :goto_2

    .line 988
    .end local v14    # "albumArtLocation":Ljava/lang/String;
    :catchall_2
    move-exception v2

    goto :goto_4

    .restart local v14    # "albumArtLocation":Ljava/lang/String;
    :catch_2
    move-exception v2

    :try_start_c
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_b
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .end local v14    # "albumArtLocation":Ljava/lang/String;
    :catch_3
    move-exception v7

    invoke-virtual {v3, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_c
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_5
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 46
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 588
    sget-object v6, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "query uri : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    new-instance v8, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v8}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 591
    .local v8, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v6, "limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 593
    .local v15, "limit":Ljava/lang/String;
    const-string v6, "groupBy"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 594
    .local v22, "groupBy":Ljava/lang/String;
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 598
    .local v36, "prependArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v6, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v14

    .line 599
    .local v14, "uriMatch":I
    sparse-switch v14, :sswitch_data_0

    .line 815
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/music/provider/MusicProvider;->findMatchedProvider(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;

    move-result-object v16

    .line 816
    .local v16, "provider":Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;
    if-eqz v16, :cond_d

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move-object/from16 v19, p3

    move-object/from16 v20, p4

    move-object/from16 v21, p5

    .line 817
    invoke-interface/range {v16 .. v21}, Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 834
    .end local v8    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v16    # "provider":Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;
    .end local v22    # "groupBy":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v27

    .line 601
    .restart local v8    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v22    # "groupBy":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v6, "smusic_db_info"

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 822
    :cond_1
    :goto_1
    :sswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    .line 823
    .local v42, "time1":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v18, v0

    .line 824
    move-object/from16 v0, v36

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->combine(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    const/16 v23, 0x0

    move-object/from16 v17, v8

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v24, p5

    move-object/from16 v25, v15

    invoke-virtual/range {v17 .. v25}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 826
    .local v26, "c":Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    .line 831
    .local v44, "time2":J
    if-eqz v26, :cond_2

    .line 832
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-interface {v0, v6, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_2
    move-object/from16 v27, v26

    .line 834
    goto :goto_0

    .line 604
    .end local v26    # "c":Landroid/database/Cursor;
    .end local v42    # "time1":J
    .end local v44    # "time2":J
    :sswitch_2
    const-string/jumbo v6, "restore_list"

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_1

    .line 607
    :sswitch_3
    const-string v6, "dlna_dms_contents_table"

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 608
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_2
    move-object/from16 v0, p2

    array-length v6, v0

    move/from16 v0, v28

    if-ge v0, v6, :cond_1

    .line 609
    aget-object v6, p2, v28

    const-string v7, "cp_attrs"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 610
    const-string v6, "131076 AS cp_attrs"

    aput-object v6, p2, v28

    .line 608
    :cond_3
    add-int/lit8 v28, v28, 0x1

    goto :goto_2

    .line 615
    .end local v28    # "i":I
    :sswitch_4
    const-string v6, "dlna_dms_contents_table"

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 616
    const-string v6, "_id=?"

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 617
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 620
    :sswitch_5
    const-string v6, "dlna_album_art"

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_1

    .line 623
    :sswitch_6
    const-string v6, "dlna_dms_table"

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 626
    :sswitch_7
    const-string v6, "dlna_dmr_table"

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 629
    :sswitch_8
    const-string v6, "dlna_open_intent_table"

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 632
    :sswitch_9
    const-string v6, "dlna_open_intent_table"

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 633
    const-string v6, "_id=?"

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 634
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 638
    :sswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v31

    .line 639
    .local v31, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x3

    move-object/from16 v0, v31

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    .line 640
    .local v39, "sql":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, v39

    move-object/from16 v1, p4

    invoke-virtual {v6, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 641
    .local v27, "cursor":Landroid/database/Cursor;
    if-eqz v27, :cond_0

    .line 642
    const-string v6, "nonotify"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 643
    .local v32, "nonotify":Ljava/lang/String;
    if-eqz v32, :cond_4

    const-string v6, "1"

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 644
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-interface {v0, v6, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 651
    .end local v27    # "cursor":Landroid/database/Cursor;
    .end local v31    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v32    # "nonotify":Ljava/lang/String;
    .end local v39    # "sql":Ljava/lang/String;
    :sswitch_b
    const-string v6, "audio"

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 656
    :sswitch_c
    const-string v6, "audio"

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 657
    const-string v6, "_id=?"

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 658
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 662
    :sswitch_d
    const-string v40, "audio"

    .line 663
    .local v40, "tableName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    .line 665
    .local v38, "selectionGroup":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/provider/MusicProvider;->makeJoinedTableFromSelectionGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 666
    .local v30, "joinTable":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/provider/MusicProvider;->makeProjection(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 667
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\\b"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\\b"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v38

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 669
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/provider/MusicProvider;->makeSortOrderFromSelectionGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 671
    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 675
    .end local v30    # "joinTable":Ljava/lang/String;
    .end local v38    # "selectionGroup":Ljava/lang/String;
    .end local v40    # "tableName":Ljava/lang/String;
    :sswitch_e
    const-string v6, "audio_playlists"

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 676
    const-string/jumbo v6, "secFilter"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 677
    .local v37, "secFilter":Ljava/lang/String;
    const-string v6, "include"

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 678
    const-string v6, "name <> \'now playing list 0123456789\' AND name <> \'FavoriteList#328795!432@1341\' "

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 683
    .end local v37    # "secFilter":Ljava/lang/String;
    :sswitch_f
    const-string v6, "audio_playlists"

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 684
    const-string v6, "_id=?"

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 685
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    .line 686
    invoke-virtual {v7}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 685
    move-object/from16 v0, v36

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 691
    :sswitch_10
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    .line 694
    .local v34, "playlistId":Ljava/lang/String;
    const-string v6, "playlist_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 695
    .local v35, "playlistType":Ljava/lang/String;
    if-eqz v35, :cond_5

    const-string/jumbo v6, "unknown"

    .line 696
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 697
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v6, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->isOnlinePlaylist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v29

    .line 703
    .local v29, "isOnlinePlaylist":Z
    :goto_3
    if-eqz v29, :cond_8

    .line 704
    const/4 v5, 0x1

    .line 705
    .local v5, "delegationType":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mQueryDelegators:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/provider/QueryDelegatable;

    .line 706
    .local v4, "delegator":Lcom/samsung/android/app/music/provider/QueryDelegatable;
    invoke-interface {v4, v5}, Lcom/samsung/android/app/music/provider/QueryDelegatable;->isMatchedQueryDelegation(I)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    .line 708
    invoke-interface/range {v4 .. v10}, Lcom/samsung/android/app/music/provider/QueryDelegatable;->onDelegateQuery(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v8    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-result-object v27

    goto/16 :goto_0

    .line 699
    .end local v4    # "delegator":Lcom/samsung/android/app/music/provider/QueryDelegatable;
    .end local v5    # "delegationType":I
    .end local v29    # "isOnlinePlaylist":Z
    .restart local v8    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    :cond_7
    const-string v6, "online"

    .line 700
    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    .restart local v29    # "isOnlinePlaylist":Z
    goto :goto_3

    .line 714
    :cond_8
    const-string v40, "audio_playlists_map"

    .line 715
    .restart local v40    # "tableName":Ljava/lang/String;
    const-string v30, "audio"

    .line 716
    .restart local v30    # "joinTable":Ljava/lang/String;
    if-eqz p2, :cond_a

    .line 717
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_4
    move-object/from16 v0, p2

    array-length v6, v0

    move/from16 v0, v28

    if-ge v0, v6, :cond_a

    .line 718
    aget-object v33, p2, v28

    .line 719
    .local v33, "p":Ljava/lang/String;
    const-string v6, "_id"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 720
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "._id AS _id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, p2, v28

    .line 717
    :cond_9
    add-int/lit8 v28, v28, 0x1

    goto :goto_4

    .line 724
    .end local v28    # "i":I
    .end local v33    # "p":Ljava/lang/String;
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 725
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "._id=audio_id AND playlist_id=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 726
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    const/16 v6, 0x452

    if-ne v14, v6, :cond_1

    .line 728
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "._id=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 729
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 734
    .end local v29    # "isOnlinePlaylist":Z
    .end local v30    # "joinTable":Ljava/lang/String;
    .end local v34    # "playlistId":Ljava/lang/String;
    .end local v35    # "playlistType":Ljava/lang/String;
    .end local v40    # "tableName":Ljava/lang/String;
    :sswitch_11
    const-string v40, "now_playing_queue_map"

    .line 735
    .restart local v40    # "tableName":Ljava/lang/String;
    const-string v30, "audio"

    .line 736
    .restart local v30    # "joinTable":Ljava/lang/String;
    if-eqz p2, :cond_c

    .line 737
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_5
    move-object/from16 v0, p2

    array-length v6, v0

    move/from16 v0, v28

    if-ge v0, v6, :cond_c

    .line 738
    aget-object v33, p2, v28

    .line 739
    .restart local v33    # "p":Ljava/lang/String;
    const-string v6, "_id"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 740
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "._id AS _id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, p2, v28

    .line 737
    :cond_b
    add-int/lit8 v28, v28, 0x1

    goto :goto_5

    .line 744
    .end local v28    # "i":I
    .end local v33    # "p":Ljava/lang/String;
    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 745
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "._id = audio_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 748
    .end local v30    # "joinTable":Ljava/lang/String;
    .end local v40    # "tableName":Ljava/lang/String;
    :sswitch_12
    const-string v6, "now_playing_queue_unique_view"

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 751
    :sswitch_13
    const-string/jumbo v6, "sync_playlist_list"

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 755
    :sswitch_14
    const-string v6, "artists"

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 758
    :sswitch_15
    const-string v6, "music_artist_info"

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 763
    :sswitch_16
    const-string v6, "albums"

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 766
    :sswitch_17
    const-string v6, "music_album_info"

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 769
    :sswitch_18
    const-string v6, "music_album_info"

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 770
    const-string v6, "_id=?"

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 771
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Albums;->CONTENT_URI:Landroid/net/Uri;

    .line 772
    invoke-virtual {v7}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 771
    move-object/from16 v0, v36

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 775
    :sswitch_19
    const-string v6, "album_art"

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 778
    :sswitch_1a
    const-string v6, "album_art"

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 779
    const-string v6, "album_id=?"

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 780
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArt;->CONTENT_URI:Landroid/net/Uri;

    .line 781
    invoke-virtual {v7}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 780
    move-object/from16 v0, v36

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 784
    :sswitch_1b
    const-string v6, "music_genres_view"

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 787
    :sswitch_1c
    const-string v6, "music_folders_view"

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 790
    :sswitch_1d
    const-string v6, "music_composers_view"

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 794
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 795
    move-object/from16 v0, v36

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->combine(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    move-object/from16 v6, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p5

    .line 794
    invoke-direct/range {v6 .. v15}, Lcom/samsung/android/app/music/provider/MusicProvider;->doAudioSearch(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    goto/16 :goto_0

    .line 797
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v6, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p5

    move-object v12, v15

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/app/music/provider/MusicProvider;->doBixbySearch(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    goto/16 :goto_0

    .line 799
    :sswitch_20
    const-string v6, "hearts"

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 802
    :sswitch_21
    const-string/jumbo v6, "streaming_cache_table"

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 805
    :sswitch_22
    const-string v6, "music_album_artist_view"

    invoke-virtual {v8, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 808
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v17, v0

    move-object/from16 v16, p0

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    invoke-direct/range {v16 .. v22}, Lcom/samsung/android/app/music/provider/MusicProvider;->queryMostPlayedRank(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v22    # "groupBy":Ljava/lang/String;
    move-result-object v27

    goto/16 :goto_0

    .line 812
    .restart local v22    # "groupBy":Ljava/lang/String;
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v17, v0

    move-object/from16 v16, p0

    move/from16 v18, v14

    move-object/from16 v19, p1

    move-object/from16 v20, p2

    move-object/from16 v21, p3

    move-object/from16 v22, p4

    move-object/from16 v23, p5

    invoke-direct/range {v16 .. v23}, Lcom/samsung/android/app/music/provider/MusicProvider;->queryPlaylistMeta(Landroid/database/sqlite/SQLiteDatabase;ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v22    # "groupBy":Ljava/lang/String;
    move-result-object v27

    goto/16 :goto_0

    .line 819
    .restart local v16    # "provider":Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;
    .restart local v22    # "groupBy":Ljava/lang/String;
    :cond_d
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown URL: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 599
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xb -> :sswitch_5
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_2
        0x192 -> :sswitch_1e
        0x193 -> :sswitch_1e
        0x194 -> :sswitch_1f
        0x3f2 -> :sswitch_a
        0x44d -> :sswitch_b
        0x44e -> :sswitch_c
        0x44f -> :sswitch_e
        0x450 -> :sswitch_f
        0x451 -> :sswitch_10
        0x452 -> :sswitch_10
        0x453 -> :sswitch_11
        0x454 -> :sswitch_d
        0x457 -> :sswitch_13
        0x45a -> :sswitch_14
        0x45b -> :sswitch_15
        0x45c -> :sswitch_1
        0x45d -> :sswitch_16
        0x45e -> :sswitch_17
        0x45f -> :sswitch_18
        0x460 -> :sswitch_19
        0x461 -> :sswitch_1a
        0x463 -> :sswitch_1b
        0x464 -> :sswitch_1c
        0x465 -> :sswitch_1d
        0x466 -> :sswitch_24
        0x467 -> :sswitch_24
        0x468 -> :sswitch_12
        0x474 -> :sswitch_20
        0x476 -> :sswitch_21
        0x477 -> :sswitch_23
        0x478 -> :sswitch_22
    .end sparse-switch
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 343
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    const-string v1, "Shutdown()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-super {p0}, Landroid/content/ContentProvider;->shutdown()V

    .line 345
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 29
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 2120
    sget-object v6, Lcom/samsung/android/app/music/provider/MusicProvider;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update uri : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " selection : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2122
    const/16 v22, 0x0

    .line 2123
    .local v22, "count":I
    sget-object v6, Lcom/samsung/android/app/music/provider/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 2126
    .local v9, "match":I
    sparse-switch v9, :sswitch_data_0

    .line 2225
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/music/provider/MusicProvider;->findMatchedProvider(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;

    move-result-object v26

    .line 2226
    .local v26, "provider":Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;
    if-eqz v26, :cond_7

    .line 2227
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 2232
    .end local v26    # "provider":Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;
    :cond_0
    :goto_0
    const-string v6, "notifyChange"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 2233
    .local v25, "notifyChange":Ljava/lang/String;
    const-string v6, "disable"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2234
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_1
    move/from16 v6, v22

    .line 2236
    .end local v25    # "notifyChange":Ljava/lang/String;
    :goto_1
    return v6

    .line 2128
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/samsung/android/app/music/provider/MusicProvider;->updateAudioFile(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 2130
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v8, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-static/range {v6 .. v12}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->update(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 2134
    :sswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x2

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2135
    .local v15, "where":Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 2136
    new-instance v27, Ljava/lang/StringBuilder;

    move-object/from16 v0, v27

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2137
    .local v27, "sb":Ljava/lang/StringBuilder;
    const-string v6, " AND ("

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2138
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2140
    .end local v27    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v6, v1, v15, v2}, Lcom/samsung/android/app/music/provider/MusicProvider;->updateAudioFile(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 2142
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v13, 0x44d

    move-object/from16 v12, p1

    move-object/from16 v14, p2

    move-object/from16 v16, p4

    invoke-static/range {v10 .. v16}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->update(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2146
    .end local v15    # "where":Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "artists"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v6, v7, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 2147
    goto/16 :goto_0

    .line 2149
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "albums"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v6, v7, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 2150
    goto/16 :goto_0

    :sswitch_4
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 2153
    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/app/music/provider/MusicProvider;->updateAudioPlaylists(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 2154
    goto/16 :goto_0

    .line 2157
    :sswitch_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2158
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->getPlaylistIdFromUri(Landroid/net/Uri;)J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2159
    .restart local v15    # "where":Ljava/lang/String;
    if-eqz p3, :cond_3

    .line 2160
    new-instance v27, Ljava/lang/StringBuilder;

    move-object/from16 v0, v27

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2161
    .restart local v27    # "sb":Ljava/lang/StringBuilder;
    const-string v6, " AND ("

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2162
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .end local v27    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v10, p2

    move-object v11, v15

    move-object/from16 v12, p4

    .line 2164
    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/app/music/provider/MusicProvider;->updateAudioPlaylists(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 2165
    goto/16 :goto_0

    .line 2169
    .end local v15    # "where":Ljava/lang/String;
    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v8, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-static/range {v6 .. v12}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylist;->update(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2171
    const-string v6, "move"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 2172
    .local v24, "moveit":Ljava/lang/String;
    if-eqz v24, :cond_0

    .line 2173
    const-string v23, "play_order"

    .line 2174
    .local v23, "key":Ljava/lang/String;
    if-eqz p2, :cond_4

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2175
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 2176
    .local v21, "newpos":I
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v28

    .line 2177
    .local v28, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x2

    move-object/from16 v0, v28

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 2178
    .local v18, "playlist":J
    const/4 v6, 0x4

    move-object/from16 v0, v28

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 2179
    .local v20, "oldpos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v17, v0

    move-object/from16 v16, p0

    invoke-direct/range {v16 .. v21}, Lcom/samsung/android/app/music/provider/MusicProvider;->movePlaylistEntry(Landroid/database/sqlite/SQLiteDatabase;JII)I

    move-result v6

    goto/16 :goto_1

    .line 2181
    .end local v18    # "playlist":J
    .end local v20    # "oldpos":I
    .end local v21    # "newpos":I
    .end local v28    # "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Need to specify "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " when using \'move\' parameter"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2188
    .end local v23    # "key":Ljava/lang/String;
    .end local v24    # "moveit":Ljava/lang/String;
    :sswitch_7
    const-string v6, "move"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 2189
    .restart local v24    # "moveit":Ljava/lang/String;
    if-eqz v24, :cond_6

    .line 2190
    const-string v23, "display_order"

    .line 2191
    .restart local v23    # "key":Ljava/lang/String;
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2192
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 2193
    .restart local v21    # "newpos":I
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v28

    .line 2194
    .restart local v28    # "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x3

    move-object/from16 v0, v28

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 2195
    .restart local v20    # "oldpos":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v6, v1, v2}, Lcom/samsung/android/app/music/provider/MusicProvider;->moveFavoriteEntry(Landroid/database/sqlite/SQLiteDatabase;II)I

    move-result v6

    goto/16 :goto_1

    .line 2197
    .end local v20    # "oldpos":I
    .end local v21    # "newpos":I
    .end local v28    # "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Need to specify "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " when using \'move\' parameter"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2200
    .end local v23    # "key":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "hearts"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v6, v7, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 2203
    goto/16 :goto_0

    .line 2205
    .end local v24    # "moveit":Ljava/lang/String;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "dlna_dms_contents_table"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v6, v7, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 2207
    goto/16 :goto_0

    .line 2209
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "dlna_dms_table"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v6, v7, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 2211
    goto/16 :goto_0

    .line 2213
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "dlna_dmr_table"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v6, v7, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 2215
    goto/16 :goto_0

    .line 2217
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "dlna_open_intent_table"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v6, v7, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 2219
    goto/16 :goto_0

    .line 2221
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/provider/MusicProvider;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v7, "streaming_cache_table"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v6, v7, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 2223
    goto/16 :goto_0

    .line 2229
    .restart local v26    # "provider":Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;
    :cond_7
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid URI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2126
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_8
        0x6 -> :sswitch_9
        0x7 -> :sswitch_a
        0x8 -> :sswitch_b
        0x44d -> :sswitch_0
        0x44e -> :sswitch_1
        0x44f -> :sswitch_4
        0x450 -> :sswitch_5
        0x452 -> :sswitch_6
        0x45a -> :sswitch_2
        0x45d -> :sswitch_3
        0x474 -> :sswitch_7
        0x475 -> :sswitch_7
        0x476 -> :sswitch_c
    .end sparse-switch
.end method

.method public updateOnlineTracksFromAudioTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 20
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "initialValue"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "cpAttrs"    # I

    .prologue
    .line 1732
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1733
    .local v11, "newValue":Landroid/content/ContentValues;
    const-string v17, "_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1734
    .local v14, "sourceId":Ljava/lang/String;
    if-eqz v14, :cond_0

    .line 1735
    const-string/jumbo v17, "source_id"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    const-string v17, "_data"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "dummy_data_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    :cond_0
    const-string/jumbo v17, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1739
    .local v15, "title":Ljava/lang/String;
    if-eqz v15, :cond_1

    .line 1740
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v11, v15, v1}, Lcom/samsung/android/app/music/provider/MusicProvider;->computeTitleUnique(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1743
    :cond_1
    const-string v17, "album"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1744
    .local v4, "album":Ljava/lang/String;
    const-string v17, "album_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1745
    .local v12, "sourceAlbumId":Ljava/lang/String;
    if-eqz v4, :cond_2

    if-eqz v12, :cond_2

    .line 1746
    const-string v17, "album"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    const-string v17, "album_id"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    const-string v17, "album_artist"

    const-string v18, "album_artist"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    :cond_2
    const-string v17, "artist"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1752
    .local v5, "artist":Ljava/lang/String;
    const-string v17, "artist_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1753
    .local v13, "sourceArtistId":Ljava/lang/String;
    if-eqz v5, :cond_3

    if-eqz v13, :cond_3

    .line 1754
    const-string v17, "artist"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    const-string v17, "artist_id"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    :cond_3
    const-string v17, "duration"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 1759
    .local v10, "duration":Ljava/lang/Integer;
    if-eqz v10, :cond_4

    .line 1760
    const-string v17, "duration"

    const-string v18, "duration"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1762
    :cond_4
    const-string v17, "cp_attrs"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1764
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, p5

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/samsung/android/app/music/provider/MusicProvider;->getAlbumIdFromOnlineContentValues(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;ZI)J

    move-result-wide v6

    .line 1765
    .local v6, "albumRowId":J
    const-string v17, "album_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1766
    const-string v17, "album"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1768
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, p5

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/samsung/android/app/music/provider/MusicProvider;->getArtistIdFromOnlineContentValues(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;ZI)J

    move-result-wide v8

    .line 1769
    .local v8, "artistRowId":J
    const-string v17, "artist_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1770
    const-string v17, "artist"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1772
    const-string v17, "audio_meta"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 1777
    .local v16, "updated":I
    return-void
.end method
