.class public Lcom/samsung/android/app/music/provider/MilkProvider;
.super Ljava/lang/Object;
.source "MilkProvider.java"

# interfaces
.implements Lcom/samsung/android/app/music/provider/QueryDelegatable;
.implements Lcom/samsung/android/app/musiclibrary/ui/provider/IContentsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/MilkProvider$Method;
    }
.end annotation


# static fields
.field public static final ACCOUNT_URI_BASE_INDEX:I = 0x82

.field public static final ACCOUNT_USER_DATA:I = 0x83

.field public static final ALBUM_THUMBNAIL:I = 0x97

.field public static final ALL_AUDIO_URI:I = 0xfa

.field public static final ALL_STATION:I = 0xb5

.field public static final ALL_STATION_ONLY:I = 0xb6

.field private static final BASE_URI_INDEX:I = 0x64

.field public static final DOWNLOAD_BASEKET:I = 0xbf

.field public static final DOWNLOAD_BASKET_BASE_INDEX:I = 0xbe

.field public static final DOWNLOAD_QUEUE:I = 0x93

.field public static final DUMMY_DATA_PREFIX:Ljava/lang/String; = "dummy_data_"

.field public static final EVENT_BASE_INDEX:I = 0xc8

.field public static final EVENT_POPUP:I = 0xc9

.field private static final LOG_TAG:Ljava/lang/String; = "MilkProvider"

.field private static final METHOD_MATCHER:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MILK_FAVORITE:I = 0xd2

.field public static final MILK_FAVORITE_ALBUM:I = 0xd5

.field public static final MILK_FAVORITE_ARTIST:I = 0xd6

.field public static final MILK_FAVORITE_INFO:I = 0xd3

.field public static final MILK_FAVORITE_MILKMAGAZINE:I = 0xd7

.field public static final MILK_FAVORITE_TRACK:I = 0xd4

.field public static final MILK_FAVORITE_TRACK_ADD:I = 0xd8

.field public static final MILK_FAVORITE_TRACK_SYNC:I = 0xd9

.field public static final MILK_FULL_TRACK:I = 0xab

.field public static final MILK_MDRM_BASE_URI:I = 0xf0

.field public static final MILK_MDRM_TRACKS:I = 0xf1

.field public static final MILK_SIMPLE_TRACK:I = 0xac

.field public static final MILK_THUMBNAIL:I = 0x98

.field public static final MILK_TRACK_URI_BASE_INDEX:I = 0xaa

.field public static final MILK_UNIQUE_TRACK:I = 0xad

.field public static final MUSICCATEGORY_GENRE:I = 0xa1

.field public static final MUSICCATEGORY_GENRE_ORDER:I = 0xa3

.field public static final MUSICCATEGORY_PERIOD:I = 0xa2

.field public static final MUSICCATEGORY_URI_BASE_INDEX:I = 0xa0

.field public static final MY_STATION:I = 0xb7

.field public static final PLAYLIST:I = 0x79

.field public static final PLAYLIST_ID:I = 0x7a

.field public static final PLAYLIST_MEMBER:I = 0x7b

.field public static final PLAYLIST_MEMBER_SYNC:I = 0x7c

.field public static final PLAYLIST_URI_BASE_INDEX:I = 0x78

.field public static final PLAY_HISTORY:I = 0xe7

.field public static final PLAY_HISTORY_BASE_URI:I = 0xe6

.field public static final PURCHASED_BASE_URI:I = 0x8c

.field public static final PURCHASED_TRACKS:I = 0x8d

.field public static final RADIO_GENRE:I = 0xb8

.field public static final RADIO_STATION_TRACK:I = 0xb9

.field static final SMART_STATION_SEED:I = 0xdc

.field public static final STATION_BASE_INDEX:I = 0xb4

.field public static final STATION_SEED:I = 0xba

.field public static final SUBSCRIPTIONS:I = 0x8f

.field public static final SUBSCRIPTIONS_UI_LIST:I = 0x90

.field public static final THUMBNAIL_BASE_INDEX:I = 0x96

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field public static final VOUCHERS:I = 0x8e

.field public static final VOUCHERS_UI_LIST:I = 0x94


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mMusicProviderHelper:Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 114
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->METHOD_MATCHER:Ljava/util/ArrayList;

    .line 268
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/playlists"

    const/16 v3, 0x79

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 269
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/playlists/#"

    const/16 v3, 0x7a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 270
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/playlists/#/members"

    const/16 v3, 0x7b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 271
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/playlists/#/members/sync"

    const/16 v3, 0x7c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 272
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "account/userdata"

    const/16 v3, 0x83

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 273
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/purchase/tracks"

    const/16 v3, 0x8d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 274
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/playhistory/radio"

    const/16 v3, 0xe7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 275
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/thumbnail/album"

    const/16 v3, 0x97

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 276
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/thumbnail/etc"

    const/16 v3, 0x98

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 277
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$MusicCategoryGenre;->getUriPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 278
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$MusicCategoryPeriod;->getUriPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 279
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$MusicCategoryGenreOrder;->getUriPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 280
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/tracks/full"

    const/16 v3, 0xab

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 281
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/tracks/simple"

    const/16 v3, 0xac

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 282
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/purchase/vouchers"

    const/16 v3, 0x8e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 283
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/purchase/vouchers/uilist"

    const/16 v3, 0x94

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 284
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$AllStations;->getUriPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 285
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$AllStations;->getStationOnlyUriPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 286
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$MyStations;->getUriPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 287
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$Genre;->getUriPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 288
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$StationTracks;->getUriPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 289
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/purchase/subscriptions"

    const/16 v3, 0x8f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 290
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/purchase/subscriptions/uilist"

    const/16 v3, 0x90

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 291
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/purchase/download_queue"

    const/16 v3, 0x93

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 292
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/download_basket"

    const/16 v3, 0xbf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 293
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/tracks/unique"

    const/16 v3, 0xad

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 294
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$EventPopups;->getUriPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 295
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$FavoriteInfos;->getUriPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 296
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$FavoriteSongListInfos;->getUriPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 297
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/playlists/#/members/heart"

    const/16 v3, 0xd8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 298
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/playlists/#/members/heart/sync"

    const/16 v3, 0xd9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 299
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$FavoriteAlbumListInfos;->getUriPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 300
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$FavoriteArtistListInfos;->getUriPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 301
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$FavoriteMilkMagazineListInfos;->getUriPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 302
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$SmartStationSeedInfo;->getUriPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xdc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 303
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$StationSeedInfo;->getUriPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xba

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 304
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/mdrm/tracks"

    const/16 v3, 0xf1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 305
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "milk/audio/media"

    const/16 v3, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 307
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->METHOD_MATCHER:Ljava/util/ArrayList;

    const-string v1, "milk_update_audio_playlists_map"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "providerHelper"    # Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mContext:Landroid/content/Context;

    .line 312
    iput-object p2, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 313
    iput-object p3, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mMusicProviderHelper:Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;

    .line 314
    return-void
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

    .line 1307
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 1308
    .local v2, "preSize":I
    if-nez v2, :cond_0

    .line 1320
    .end local p1    # "userArgs":[Ljava/lang/String;
    :goto_0
    return-object p1

    .line 1312
    .restart local p1    # "userArgs":[Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    array-length v3, p1

    .line 1313
    .local v3, "userSize":I
    :goto_1
    add-int v4, v2, v3

    new-array v0, v4, [Ljava/lang/String;

    .line 1314
    .local v0, "combined":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 1315
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v1

    .line 1314
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "combined":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v3    # "userSize":I
    :cond_1
    move v3, v5

    .line 1312
    goto :goto_1

    .line 1317
    .restart local v0    # "combined":[Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v3    # "userSize":I
    :cond_2
    if-eqz p1, :cond_3

    .line 1318
    invoke-static {p1, v5, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    move-object p1, v0

    .line 1320
    goto :goto_0
.end method

.method private createHeaderCursor([Ljava/lang/String;I)Landroid/database/MatrixCursor;
    .locals 6
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "headerId"    # I

    .prologue
    .line 1343
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1344
    .local v2, "newCursor":Landroid/database/MatrixCursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1345
    .local v1, "listItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, p1, v3

    .line 1346
    .local v0, "column":Ljava/lang/String;
    const-string v5, "_id"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1347
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1345
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1349
    :cond_0
    const-string v5, "-1"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1353
    .end local v0    # "column":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1354
    return-object v2
.end method

.method private deleteNotIn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/lang/String;)I
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "targetTable"    # Ljava/lang/String;
    .param p3, "keyColumns"    # [Ljava/lang/String;
    .param p4, "targetColumns"    # [Ljava/lang/String;
    .param p5, "candidate"    # [Landroid/content/ContentValues;
    .param p6, "additionalWhereClause"    # Ljava/lang/String;

    .prologue
    .line 1197
    .line 1198
    invoke-direct {p0, p4, p3, p5}, Lcom/samsung/android/app/music/provider/MilkProvider;->generateWhereClauseFromContentValues([Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v1

    .line 1199
    .local v1, "whereClause":Ljava/lang/String;
    invoke-direct {p0, p2, v1}, Lcom/samsung/android/app/music/provider/MilkProvider;->getQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1200
    .local v0, "selection":Ljava/lang/String;
    const-string v2, "MilkProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteNotIn selection : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id NOT IN ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1202
    if-eqz p6, :cond_0

    .line 1203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1205
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private deleteNotIn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "targetTable"    # Ljava/lang/String;
    .param p3, "targetColumn"    # Ljava/lang/String;
    .param p4, "keyColumn"    # Ljava/lang/String;
    .param p5, "candidate"    # [Landroid/content/ContentValues;
    .param p6, "additionalWhereClause"    # Ljava/lang/String;

    .prologue
    .line 1215
    const-string v3, "MilkProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteNotIn targetTable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " targetColumn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "keyColumn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    invoke-direct {p0, p3, p4, p5}, Lcom/samsung/android/app/music/provider/MilkProvider;->generateWhereClauseFromContentValues(Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v2

    .line 1220
    .local v2, "whereClause":Ljava/lang/String;
    const-string v3, "MilkProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteNotIn whereClause : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/app/music/provider/MilkProvider;->getQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1222
    .local v1, "selection":Ljava/lang/String;
    const-string v3, "MilkProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteNotIn selection : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id NOT IN ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1224
    if-eqz p6, :cond_0

    .line 1225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1227
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1228
    .local v0, "deleted":I
    const-string v3, "MilkProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteNotIn targetTable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " items are deleted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    return-void
.end method

.method private deleteNotIn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "targetTable"    # Ljava/lang/String;
    .param p3, "keyColumn"    # Ljava/lang/String;
    .param p4, "candidate"    # [Landroid/content/ContentValues;
    .param p5, "additionalWhereClause"    # Ljava/lang/String;

    .prologue
    .line 1210
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/provider/MilkProvider;->deleteNotIn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1211
    return-void
.end method

.method private deleteNotIn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "targetTable"    # Ljava/lang/String;
    .param p3, "keyColumns"    # [Ljava/lang/String;
    .param p4, "candidate"    # [Landroid/content/ContentValues;
    .param p5, "additionalWhereClause"    # Ljava/lang/String;

    .prologue
    .line 1192
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/provider/MilkProvider;->deleteNotIn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/lang/String;)I

    .line 1193
    return-void
.end method

.method private generateWhereClauseFromContentValues(Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 8
    .param p1, "targetColumn"    # Ljava/lang/String;
    .param p2, "keyColumn"    # Ljava/lang/String;
    .param p3, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 1282
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1283
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1284
    const/4 v0, 0x0

    .line 1285
    .local v0, "index":I
    array-length v4, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, p3, v3

    .line 1286
    .local v2, "value":Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    .line 1287
    const-string v5, " OR "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1289
    :cond_0
    const-string v5, "("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\')"

    .line 1290
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1291
    add-int/lit8 v0, v0, 0x1

    .line 1285
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1293
    .end local v2    # "value":Landroid/content/ContentValues;
    :cond_1
    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1294
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private generateWhereClauseFromContentValues([Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 12
    .param p1, "targetColumns"    # [Ljava/lang/String;
    .param p2, "keyColumns"    # [Ljava/lang/String;
    .param p3, "values"    # [Landroid/content/ContentValues;

    .prologue
    const/4 v6, 0x0

    .line 1255
    array-length v5, p2

    array-length v7, p1

    if-eq v5, v7, :cond_0

    .line 1256
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "keyColumns size is not matched with targetColumns"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1258
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1259
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .line 1260
    .local v1, "isFirst":Z
    array-length v8, p3

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_4

    aget-object v4, p3, v7

    .line 1261
    .local v4, "value":Landroid/content/ContentValues;
    if-eqz v1, :cond_2

    .line 1262
    const/4 v1, 0x0

    .line 1266
    :goto_1
    const-string v5, "("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1267
    const/4 v0, 0x0

    .line 1268
    .local v0, "index":I
    array-length v9, p2

    move v5, v6

    :goto_2
    if-ge v5, v9, :cond_3

    aget-object v2, p2, v5

    .line 1269
    .local v2, "keyColumn":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1270
    const-string v10, " AND "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1272
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, p1, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " = \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1273
    add-int/lit8 v0, v0, 0x1

    .line 1268
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1264
    .end local v0    # "index":I
    .end local v2    # "keyColumn":Ljava/lang/String;
    :cond_2
    const-string v5, " OR "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1275
    .restart local v0    # "index":I
    :cond_3
    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1260
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_0

    .line 1277
    .end local v0    # "index":I
    .end local v4    # "value":Landroid/content/ContentValues;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getAlbumId(Landroid/content/ContentValues;)J
    .locals 11
    .param p1, "value"    # Landroid/content/ContentValues;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 952
    const-wide/16 v0, -0x1

    .line 953
    .local v0, "id":J
    const-string/jumbo v6, "source_album_id"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 954
    .local v2, "sourceId":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 955
    iget-object v6, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mMusicProviderHelper:Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;

    iget-object v7, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 956
    invoke-static {p1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->convertToAlbum(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v8

    const-string v9, "cp_attrs"

    .line 957
    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 956
    invoke-interface {v6, v7, v8, v10, v9}, Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;->insertOnlineAlbumsToAlbumTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;ZI)Landroid/content/ContentValues;

    move-result-object v6

    const-string v7, "album_id"

    .line 957
    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 955
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 960
    :cond_0
    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-eqz v6, :cond_1

    .line 961
    invoke-static {p1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->convertToThumbnail(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v3

    .line 962
    .local v3, "thumbnailValues":Landroid/content/ContentValues;
    const-string/jumbo v6, "thumbnail_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 963
    iget-object v6, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "milk_thumbnails"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 964
    const-string/jumbo v6, "thumbnail_type"

    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 965
    .local v4, "type":Ljava/lang/String;
    const-string/jumbo v5, "thumbnail_id=? AND thumbnail_type=?"

    .line 966
    .local v5, "whereClause":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "milk_thumbnails"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-virtual {v6, v7, v3, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 969
    .end local v3    # "thumbnailValues":Landroid/content/ContentValues;
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "whereClause":Ljava/lang/String;
    :cond_1
    return-wide v0
.end method

.method private getAudioId(Landroid/content/ContentValues;)J
    .locals 13
    .param p1, "value"    # Landroid/content/ContentValues;

    .prologue
    .line 928
    const-wide/16 v2, -0x1

    .line 929
    .local v2, "id":J
    iget-object v8, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mMusicProviderHelper:Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;

    iget-object v9, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 930
    invoke-static {p1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->convertToAudioMeta(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v10

    const-string v11, "cp_attrs"

    .line 931
    invoke-virtual {p1, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 930
    invoke-interface {v8, v9, v10, v11}, Lcom/samsung/android/app/musiclibrary/ui/provider/IMusicProviderHelper;->insertOnlineTracksToAudioTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)Landroid/content/ContentValues;

    move-result-object v4

    .line 932
    .local v4, "returnValue":Landroid/content/ContentValues;
    const-string v8, "_id"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 933
    const-string v8, "_id"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 935
    :cond_0
    const-string v8, "album_id"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 936
    const-string v8, "album_id"

    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 937
    .local v0, "albumId":J
    invoke-static {p1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->convertToThumbnail(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v5

    .line 938
    .local v5, "thumbnailValues":Landroid/content/ContentValues;
    const-string/jumbo v8, "thumbnail_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 939
    iget-object v8, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "milk_thumbnails"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 940
    const-string/jumbo v8, "thumbnail_type"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 941
    .local v6, "type":Ljava/lang/String;
    const-string/jumbo v7, "thumbnail_id=? AND thumbnail_type=?"

    .line 943
    .local v7, "whereClause":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "milk_thumbnails"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    .line 944
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v6, v10, v11

    .line 943
    invoke-virtual {v8, v9, v5, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 947
    .end local v0    # "albumId":J
    .end local v5    # "thumbnailValues":Landroid/content/ContentValues;
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "whereClause":Ljava/lang/String;
    :cond_1
    return-wide v2
.end method

.method private getAudioIdBySourceID(Ljava/lang/String;)J
    .locals 13
    .param p1, "trackId"    # Ljava/lang/String;

    .prologue
    .line 1324
    const/4 v12, 0x0

    .line 1325
    .local v12, "c":Landroid/database/Cursor;
    const-wide/16 v8, -0x1

    .line 1327
    .local v8, "audioId":J
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "audio_meta"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "source_id = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1330
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 1335
    :cond_0
    if-eqz v12, :cond_1

    .line 1336
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_1
    move-wide v10, v8

    .line 1339
    .end local v8    # "audioId":J
    .local v10, "audioId":J
    :goto_0
    return-wide v10

    .line 1333
    .end local v10    # "audioId":J
    .restart local v8    # "audioId":J
    :cond_2
    :try_start_1
    const-string v0, "_id"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    .line 1335
    if-eqz v12, :cond_3

    .line 1336
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_3
    move-wide v10, v8

    .line 1339
    .end local v8    # "audioId":J
    .restart local v10    # "audioId":J
    goto :goto_0

    .line 1335
    .end local v10    # "audioId":J
    .restart local v8    # "audioId":J
    :catchall_0
    move-exception v0

    if-eqz v12, :cond_4

    .line 1336
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private getQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "targetTable"    # Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;

    .prologue
    .line 1298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1299
    .local v0, "query":Ljava/lang/StringBuilder;
    const-string v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1300
    if-eqz p2, :cond_0

    .line 1301
    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private insertAudioMeta(Landroid/content/ContentValues;Z)J
    .locals 17
    .param p1, "value"    # Landroid/content/ContentValues;
    .param p2, "throwAllowUndefined"    # Z

    .prologue
    .line 886
    const-string v2, "audio_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 887
    const-string v2, "audio_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 904
    :cond_0
    :goto_0
    return-wide v14

    .line 889
    :cond_1
    const-string v2, "cp_attrs"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 890
    .local v12, "cpAttrs":I
    invoke-static {v12}, Lcom/samsung/android/app/music/provider/CpAttrs;->isLocal(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 891
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/music/provider/MilkProvider;->insertVirtualAudioMeta(Landroid/content/ContentValues;)J

    move-result-wide v14

    goto :goto_0

    .line 893
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/music/provider/MilkProvider;->getAudioId(Landroid/content/ContentValues;)J

    move-result-wide v14

    .line 894
    .local v14, "rowAudioId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v14, v2

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    .line 895
    const-string/jumbo v2, "source_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 896
    .local v10, "audioSourceId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "audio_meta"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string/jumbo v5, "source_id =? AND cp_attrs = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v10, v6, v7

    const/4 v7, 0x1

    .line 898
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 896
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .local v11, "c":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 899
    if-eqz v11, :cond_4

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 900
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v14

    .line 902
    .end local v14    # "rowAudioId":J
    if-eqz v11, :cond_0

    if-eqz v3, :cond_3

    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local v14    # "rowAudioId":J
    :cond_4
    if-eqz v11, :cond_0

    if-eqz v3, :cond_5

    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 896
    :catch_2
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 902
    :catchall_0
    move-exception v3

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    :goto_1
    if-eqz v11, :cond_6

    if-eqz v3, :cond_7

    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_6
    :goto_2
    throw v2

    :catch_3
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v2

    goto :goto_1
.end method

.method private insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;IZ)J
    .locals 25
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "values"    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "uriMatch"    # I
    .param p4, "throwAllowUndefined"    # Z

    .prologue
    .line 641
    const-wide/16 v18, 0x0

    .line 642
    .local v18, "rowId":J
    sparse-switch p3, :sswitch_data_0

    .line 739
    :cond_0
    :goto_0
    :sswitch_0
    return-wide v18

    .line 644
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v21, v0

    const-string v22, "audio_playlists"

    const-string/jumbo v23, "source_playlist_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/provider/MilkProvider;->insertOrUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v18

    .line 645
    goto :goto_0

    .line 649
    :sswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/provider/MilkProvider;->insertAudioMeta(Landroid/content/ContentValues;Z)J

    move-result-wide v16

    .line 650
    .local v16, "rowAudioId":J
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/music/provider/MilkContents$Playlists$Members;->getPlaylistIdFromUri(Landroid/net/Uri;)J

    move-result-wide v12

    .line 651
    .local v12, "playlistId":J
    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-static {v0, v12, v13, v1, v2}, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->toContentValuesToPlaylistHeart(Landroid/content/ContentValues;JJ)Landroid/content/ContentValues;

    move-result-object v9

    .line 652
    .local v9, "newValues":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v21, v0

    const-string v22, "audio_playlists_map"

    const-string v23, "playlist_id"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v18

    .line 653
    goto :goto_0

    .line 656
    .end local v9    # "newValues":Landroid/content/ContentValues;
    .end local v12    # "playlistId":J
    .end local v16    # "rowAudioId":J
    :sswitch_3
    const-string v21, "audio_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 657
    .restart local v16    # "rowAudioId":J
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/music/provider/MilkContents$Playlists$Members;->getPlaylistIdFromUri(Landroid/net/Uri;)J

    move-result-wide v12

    .line 658
    .restart local v12    # "playlistId":J
    const-string v21, "cp_attrs"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 659
    .local v7, "cpattrs":I
    invoke-static {v7}, Lcom/samsung/android/app/music/provider/CpAttrs;->isLocal(I)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 660
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/MilkProvider;->insertVirtualAudioMeta(Landroid/content/ContentValues;)J

    .line 662
    :cond_1
    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2, v12, v13}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->convertToPlaylistMap(Landroid/content/ContentValues;JJ)Landroid/content/ContentValues;

    move-result-object v11

    .line 663
    .local v11, "playlistMapValues":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v21, v0

    const-string v22, "audio_playlists_map"

    const-string v23, "playlist_id"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v18

    .line 664
    goto/16 :goto_0

    .line 667
    .end local v7    # "cpattrs":I
    .end local v11    # "playlistMapValues":Landroid/content/ContentValues;
    .end local v12    # "playlistId":J
    .end local v16    # "rowAudioId":J
    :sswitch_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/provider/MilkProvider;->insertAudioMeta(Landroid/content/ContentValues;Z)J

    move-result-wide v16

    .line 668
    .restart local v16    # "rowAudioId":J
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/music/provider/MilkContents$Playlists$Members;->getPlaylistIdFromUri(Landroid/net/Uri;)J

    move-result-wide v12

    .line 669
    .restart local v12    # "playlistId":J
    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2, v12, v13}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->convertToPlaylistMap(Landroid/content/ContentValues;JJ)Landroid/content/ContentValues;

    move-result-object v11

    .line 670
    .restart local v11    # "playlistMapValues":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v21, v0

    const-string v22, "audio_playlists_map"

    const-string v23, "playlist_id"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v18

    .line 671
    goto/16 :goto_0

    .line 674
    .end local v11    # "playlistMapValues":Landroid/content/ContentValues;
    .end local v12    # "playlistId":J
    .end local v16    # "rowAudioId":J
    :sswitch_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/provider/MilkProvider;->insertAudioMeta(Landroid/content/ContentValues;Z)J

    move-result-wide v16

    .line 675
    .restart local v16    # "rowAudioId":J
    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrack;->convertToPurchasedTracks(Landroid/content/ContentValues;J)Landroid/content/ContentValues;

    move-result-object v14

    .line 676
    .local v14, "purchasedTracks":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v21, v0

    const-string v22, "purchased_track"

    const-string/jumbo v23, "track_id"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v18

    .line 677
    goto/16 :goto_0

    .line 680
    .end local v14    # "purchasedTracks":Landroid/content/ContentValues;
    .end local v16    # "rowAudioId":J
    :sswitch_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/provider/MilkProvider;->insertAudioMeta(Landroid/content/ContentValues;Z)J

    move-result-wide v18

    .line 681
    const-wide/16 v22, 0x0

    cmp-long v21, v18, v22

    if-gtz v21, :cond_2

    .line 682
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v6, v0, [Landroid/content/ContentValues;

    .line 683
    .local v6, "candidate":[Landroid/content/ContentValues;
    const/16 v21, 0x0

    aput-object p2, v6, v21

    .line 684
    const-string/jumbo v21, "source_id"

    const-string/jumbo v22, "source_id"

    .line 685
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v6}, Lcom/samsung/android/app/music/provider/MilkProvider;->generateWhereClauseFromContentValues(Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v20

    .line 686
    .local v20, "whereClause":Ljava/lang/String;
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/provider/MilkProvider;->updateAudioDuration(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 688
    .end local v6    # "candidate":[Landroid/content/ContentValues;
    .end local v20    # "whereClause":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p2

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/common/model/Track;->convertToMilkTracks(Landroid/content/ContentValues;J)Landroid/content/ContentValues;

    move-result-object v15

    .line 689
    .local v15, "track":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v21, v0

    const-string v22, "milk_track"

    const-string/jumbo v23, "track_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/samsung/android/app/music/provider/MilkProvider;->insertOrUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0

    .line 693
    .end local v15    # "track":Landroid/content/ContentValues;
    :sswitch_7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/provider/MilkProvider;->insertAudioMeta(Landroid/content/ContentValues;Z)J

    move-result-wide v18

    .line 694
    goto/16 :goto_0

    .line 697
    :sswitch_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/MilkProvider;->getAlbumId(Landroid/content/ContentValues;)J

    move-result-wide v18

    .line 698
    goto/16 :goto_0

    .line 703
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v21, v0

    const-string/jumbo v22, "voucher"

    const-string/jumbo v23, "voucherId"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/provider/MilkProvider;->insertOrUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v18

    .line 704
    goto/16 :goto_0

    .line 707
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v21, v0

    const-string/jumbo v22, "subscription"

    const-string v23, "orderId"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/provider/MilkProvider;->insertOrUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v18

    .line 708
    goto/16 :goto_0

    .line 711
    :sswitch_b
    const-string/jumbo v21, "serializedIds"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 714
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/provider/MilkProvider;->insertAudioMeta(Landroid/content/ContentValues;Z)J

    move-result-wide v16

    .line 715
    .restart local v16    # "rowAudioId":J
    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrack;->convertToDownloadBasket(Landroid/content/ContentValues;J)Landroid/content/ContentValues;

    move-result-object v8

    .line 716
    .local v8, "downloadBasket":Landroid/content/ContentValues;
    const-string/jumbo v21, "source_id =?"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string/jumbo v24, "track_id"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v8, v1, v2}, Lcom/samsung/android/app/music/provider/MilkProvider;->updateAudioTrackNumber(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v21, v0

    const-string v22, "download_basket"

    const-string/jumbo v23, "track_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/samsung/android/app/music/provider/MilkProvider;->insertOrUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v18

    .line 718
    goto/16 :goto_0

    .line 721
    .end local v8    # "downloadBasket":Landroid/content/ContentValues;
    .end local v16    # "rowAudioId":J
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v21, v0

    const-string v22, "download_queue"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/provider/MilkProvider;->insertOrUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v18

    .line 722
    goto/16 :goto_0

    .line 725
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v21, v0

    const-string v22, "milk_smart_station_seed"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/provider/MilkProvider;->insertOrUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v18

    .line 726
    goto/16 :goto_0

    .line 729
    :sswitch_e
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/provider/MilkProvider;->insertAudioMeta(Landroid/content/ContentValues;Z)J

    move-result-wide v16

    .line 730
    .restart local v16    # "rowAudioId":J
    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->convertToPlayHistory(Landroid/content/ContentValues;J)Landroid/content/ContentValues;

    move-result-object v10

    .line 731
    .local v10, "playHistory":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v21, v0

    const-string v22, "radio_history"

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v18

    .line 732
    goto/16 :goto_0

    .line 736
    .end local v10    # "playHistory":Landroid/content/ContentValues;
    .end local v16    # "rowAudioId":J
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v21, v0

    const-string v22, "category_genre_order"

    const-string v23, "genre_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/provider/MilkProvider;->insertOrUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v18

    goto/16 :goto_0

    .line 642
    :sswitch_data_0
    .sparse-switch
        0x79 -> :sswitch_1
        0x7b -> :sswitch_3
        0x7c -> :sswitch_4
        0x8d -> :sswitch_5
        0x8e -> :sswitch_9
        0x8f -> :sswitch_a
        0x93 -> :sswitch_c
        0x97 -> :sswitch_8
        0x98 -> :sswitch_0
        0xa3 -> :sswitch_f
        0xab -> :sswitch_6
        0xac -> :sswitch_7
        0xbf -> :sswitch_b
        0xd8 -> :sswitch_2
        0xd9 -> :sswitch_2
        0xdc -> :sswitch_d
        0xe7 -> :sswitch_e
    .end sparse-switch
.end method

.method private insertOrUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "targetTable"    # Ljava/lang/String;
    .param p3, "keyColumn"    # Ljava/lang/String;
    .param p4, "candidate"    # Landroid/content/ContentValues;

    .prologue
    .line 1234
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/MilkProvider;->insertOrUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method private insertOrUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "targetTable"    # Ljava/lang/String;
    .param p3, "targetColumn"    # Ljava/lang/String;
    .param p4, "keyColumn"    # Ljava/lang/String;
    .param p5, "candidate"    # Landroid/content/ContentValues;

    .prologue
    const/4 v6, 0x0

    .line 1239
    const/4 v4, 0x1

    new-array v2, v4, [Landroid/content/ContentValues;

    .line 1240
    .local v2, "values":[Landroid/content/ContentValues;
    const/4 v4, 0x0

    aput-object p5, v2, v4

    .line 1241
    const/4 v4, 0x4

    invoke-virtual {p1, p2, v6, p5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    .line 1243
    .local v0, "row":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 1245
    invoke-direct {p0, p3, p4, v2}, Lcom/samsung/android/app/music/provider/MilkProvider;->generateWhereClauseFromContentValues(Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v3

    .line 1246
    .local v3, "whereClause":Ljava/lang/String;
    invoke-virtual {p1, p2, p5, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v0, v4

    .line 1247
    const-string v4, "MilkProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertOrUpdate targetTable : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " whereClause : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " row : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    .end local v3    # "whereClause":Ljava/lang/String;
    :cond_0
    return-wide v0
.end method

.method private insertVirtualAudioMeta(Landroid/content/ContentValues;)J
    .locals 12
    .param p1, "value"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 871
    const-string/jumbo v0, "source_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 872
    .local v8, "audioSourceId":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "virtual_audio_meta"

    invoke-static {p1}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->convertToVirtualAudioMeta(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    .line 873
    .local v10, "virtualAudioId":J
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "audio_meta"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v6

    const-string v3, "cp_attrs"

    aput-object v3, v2, v4

    const-string v3, "local_track_id=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object v8, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 876
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 877
    const-string v0, "cp_attrs"

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 878
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v10

    .line 880
    .end local v10    # "virtualAudioId":J
    if-eqz v9, :cond_0

    if-eqz v5, :cond_1

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 882
    :cond_0
    :goto_0
    return-wide v10

    .line 880
    :catch_0
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .restart local v10    # "virtualAudioId":J
    :cond_2
    if-eqz v9, :cond_3

    if-eqz v5, :cond_4

    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 881
    :cond_3
    :goto_1
    const-string v0, "cp_attrs"

    const v1, 0x80008

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 880
    :catch_1
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 873
    :catch_2
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 880
    :catchall_0
    move-exception v1

    move-object v5, v0

    move-object v0, v1

    :goto_2
    if-eqz v9, :cond_5

    if-eqz v5, :cond_6

    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method private notifyChange([Landroid/net/Uri;)V
    .locals 6
    .param p1, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 743
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 744
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 745
    .local v0, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 746
    const-string v3, "MilkProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyChange uri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 749
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private preBulkInsertDownloadBasket(Ljava/lang/String;)V
    .locals 9
    .param p1, "serializedIds"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 857
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 858
    .local v7, "ids":[Ljava/lang/String;
    array-length v0, v7

    new-array v4, v0, [Landroid/content/ContentValues;

    .line 859
    .local v4, "values":[Landroid/content/ContentValues;
    array-length v0, v7

    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_0

    .line 860
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 861
    .local v8, "value":Landroid/content/ContentValues;
    const-string/jumbo v0, "track_id"

    aget-object v1, v7, v6

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    const-string v0, "audio_id"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 863
    aput-object v8, v4, v6

    .line 864
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "download_basket"

    invoke-virtual {v0, v1, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 859
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 866
    .end local v8    # "value":Landroid/content/ContentValues;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "download_basket"

    const-string/jumbo v3, "track_id"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/MilkProvider;->deleteNotIn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 868
    return-void
.end method

.method private updateAudioDuration(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "value"    # Landroid/content/ContentValues;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 909
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 910
    .local v0, "audioMetaValues":Landroid/content/ContentValues;
    const-string v1, "duration"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 911
    .local v2, "duration":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 912
    const-string v1, "duration"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 914
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "audio_meta"

    invoke-virtual {v1, v4, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private updateAudioIdTo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "targetTable"    # Ljava/lang/String;
    .param p3, "compareColumn"    # Ljava/lang/String;

    .prologue
    .line 1140
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/music/provider/MilkProvider;->updateAudioIdTo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    return-void
.end method

.method private updateAudioIdTo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "targetTable"    # Ljava/lang/String;
    .param p3, "compareColumn"    # Ljava/lang/String;
    .param p4, "additionalWhereClause"    # Ljava/lang/String;

    .prologue
    .line 1144
    const-string v0, "MilkProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAudioIdTo targetTable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SET audio_id=(SELECT CASE WHEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(SELECT _id FROM audio_meta WHERE source_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "IS NULL THEN -1 ELSE (SELECT _id FROM audio_meta WHERE source_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") END) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "WHERE audio_id NOT IN (SELECT _id FROM audio_meta) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p4, :cond_0

    .end local p4    # "additionalWhereClause":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1151
    return-void

    .line 1146
    .restart local p4    # "additionalWhereClause":Ljava/lang/String;
    :cond_0
    const-string p4, ""

    goto :goto_0
.end method

.method private updateAudioPlayilstsMap(Ljava/lang/String;)V
    .locals 3
    .param p1, "deletedAudioIds"    # Ljava/lang/String;

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE audio_playlists_map SET audio_id = (SELECT _id FROM virtual_audio_meta WHERE source_id=audio_source_id), audio_cp_attrs = 524296 WHERE audio_id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") AND audio_data like \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dummy_data_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1187
    return-void
.end method

.method private updateAudioPlaylistsMap(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1155
    const-string v3, "MilkProvider"

    const-string/jumbo v4, "updateAudioPlalistsMap"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    const-string v1, "(SELECT _id FROM audio_meta WHERE local_track_id=audio_source_id)"

    .line 1157
    .local v1, "selectAudioId":Ljava/lang/String;
    const-string v2, "(SELECT _id FROM virtual_audio_meta WHERE source_id=audio_source_id)"

    .line 1158
    .local v2, "selectVirtualAudioId":Ljava/lang/String;
    const-string v0, "(SELECT cp_attrs FROM audio_meta WHERE local_track_id=audio_source_id)"

    .line 1159
    .local v0, "selectAudioCp":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE audio_playlists_map SET audio_id = (SELECT CASE WHEN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IS NOT NULL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "THEN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ELSE (SELECT CASE WHEN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IS NOT NULL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "THEN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ELSE -1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "END) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "END), "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "audio_cp_attrs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(SELECT CASE WHEN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IS NOT NULL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "THEN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ELSE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x80008

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "END) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "WHERE audio_cp_attrs !="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x80002

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND audio_data like \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "dummy_data_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1174
    return-void
.end method

.method private updateAudioTrackNumber(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "value"    # Landroid/content/ContentValues;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 919
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 920
    .local v0, "audioMetaValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "track_number"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 921
    .local v2, "num":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 922
    const-string/jumbo v1, "track"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 924
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "audio_meta"

    invoke-virtual {v1, v4, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "values"    # [Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 805
    sget-object v4, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 806
    .local v2, "uriMatch":I
    const/4 v1, 0x0

    .line 808
    .local v1, "inserted":I
    :try_start_0
    const-string v4, "MilkProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bulkInsert uriMatch : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 810
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/provider/MilkProvider;->preBulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)V

    .line 811
    array-length v6, p2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v3, p2, v5

    .line 812
    .local v3, "value":Landroid/content/ContentValues;
    if-nez v3, :cond_0

    .line 811
    :goto_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 815
    :cond_0
    const/4 v4, 0x1

    invoke-direct {p0, p1, v3, v2, v4}, Lcom/samsung/android/app/music/provider/MilkProvider;->insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;IZ)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-lez v4, :cond_1

    const/4 v4, 0x1

    :goto_2
    add-int/2addr v1, v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 817
    .end local v3    # "value":Landroid/content/ContentValues;
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/provider/MilkProvider;->postBulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)V

    .line 818
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 822
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 824
    :goto_3
    const-string v4, "MilkProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bulkInsert inserted : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    invoke-static {p1}, Lcom/samsung/android/app/music/provider/MilkContents;->getNotifyUris(Landroid/net/Uri;)[Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/provider/MilkProvider;->notifyChange([Landroid/net/Uri;)V

    .line 826
    return v1

    .line 819
    :catch_0
    move-exception v0

    .line 820
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 822
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1124
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 1129
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1124
    :pswitch_0
    const-string v1, "milk_update_audio_playlists_map"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1126
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/provider/MilkProvider;->updateAudioPlaylistsMap(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1131
    const/4 v0, 0x0

    return-object v0

    .line 1124
    nop

    :pswitch_data_0
    .packed-switch 0x698b1683
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "selection"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "selectionArgs"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v10, 0x0

    .line 975
    sget-object v4, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 976
    .local v2, "uriMatch":I
    const-string v4, "MilkProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete uriMatch : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    const/4 v0, 0x0

    .line 978
    .local v0, "deleted":I
    sparse-switch v2, :sswitch_data_0

    .line 1041
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/app/music/provider/MilkContents;->getNotifyUris(Landroid/net/Uri;)[Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/provider/MilkProvider;->notifyChange([Landroid/net/Uri;)V

    .line 1042
    const-string v4, "MilkProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " items are deleted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    return v0

    .line 980
    :sswitch_0
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "radio_history"

    invoke-virtual {v4, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 981
    goto :goto_0

    .line 985
    :sswitch_1
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "audio_playlists"

    const-string v6, "is_sync = 1"

    invoke-virtual {v4, v5, v6, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 987
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "purchased_track"

    invoke-virtual {v4, v5, v10, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    .line 989
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v5, "voucher"

    invoke-virtual {v4, v5, v10, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    .line 991
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v5, "subscription"

    invoke-virtual {v4, v5, v10, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    .line 993
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "milk_track"

    invoke-virtual {v4, v5, v10, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    .line 995
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "milk_smart_station_seed"

    invoke-virtual {v4, v5, v10, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    .line 996
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "my_station"

    invoke-virtual {v4, v5, v10, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    .line 997
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "personal_station_seed"

    invoke-virtual {v4, v5, v10, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    .line 998
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v5, "station"

    const-string/jumbo v6, "station_type= ? AND station_is_hidden!= 0"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "02"

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    .line 1002
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "download_queue"

    invoke-virtual {v4, v5, v10, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    .line 1003
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "download_basket"

    invoke-virtual {v4, v5, v10, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    .line 1005
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "radio_history"

    invoke-virtual {v4, v5, v10, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    .line 1006
    goto/16 :goto_0

    .line 1009
    :sswitch_2
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v5, "voucher"

    invoke-virtual {v4, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1010
    goto/16 :goto_0

    .line 1013
    :sswitch_3
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v5, "subscription"

    invoke-virtual {v4, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1014
    goto/16 :goto_0

    .line 1016
    :sswitch_4
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "audio_playlists"

    invoke-virtual {v4, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1017
    goto/16 :goto_0

    .line 1019
    :sswitch_5
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "download_basket"

    invoke-virtual {v4, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1020
    goto/16 :goto_0

    .line 1022
    :sswitch_6
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "download_queue"

    invoke-virtual {v4, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1023
    goto/16 :goto_0

    .line 1025
    :sswitch_7
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "milk_smart_station_seed"

    invoke-virtual {v4, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1026
    goto/16 :goto_0

    .line 1028
    :sswitch_8
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "purchased_track"

    invoke-virtual {v4, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1029
    goto/16 :goto_0

    .line 1031
    :sswitch_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playlist_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1032
    .local v3, "where":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1033
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1034
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v4, " AND ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1037
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "audio_playlists_map"

    invoke-virtual {v4, v5, v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 978
    nop

    :sswitch_data_0
    .sparse-switch
        0x79 -> :sswitch_4
        0x7b -> :sswitch_9
        0x83 -> :sswitch_1
        0x8d -> :sswitch_8
        0x8e -> :sswitch_2
        0x8f -> :sswitch_3
        0x93 -> :sswitch_6
        0xbf -> :sswitch_5
        0xdc -> :sswitch_7
        0xe7 -> :sswitch_0
    .end sparse-switch
.end method

.method public deleteFromTablesWithAudioIds(Ljava/lang/String;)V
    .locals 5
    .param p1, "audioIds"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio_id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1111
    .local v1, "where":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "milk_drm"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1112
    .local v0, "deleted":I
    const-string v2, "MilkProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteFromTablesWithAudioIds drm info deleted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", where : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MilkProvider;->updateAudioPlayilstsMap(Ljava/lang/String;)V

    .line 1115
    return-void
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "values"    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 630
    const/4 v0, 0x0

    .line 631
    .local v0, "newUri":Landroid/net/Uri;
    sget-object v4, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 632
    .local v1, "uriMatch":I
    const-string v4, "MilkProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert uriMatch : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, v1, v4}, Lcom/samsung/android/app/music/provider/MilkProvider;->insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;IZ)J

    move-result-wide v2

    .line 634
    .local v2, "rowId":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 635
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/app/music/provider/MilkContents;->getNotifyUris(Landroid/net/Uri;)[Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/provider/MilkProvider;->notifyChange([Landroid/net/Uri;)V

    .line 636
    const-string v4, "MilkProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert uri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    return-object v0

    :cond_0
    move-object v0, p1

    .line 634
    goto :goto_0
.end method

.method public isMatchMethod(Ljava/lang/String;)Z
    .locals 1
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 1136
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->METHOD_MATCHER:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMatchUri(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1119
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMatchedQueryDelegation(I)Z
    .locals 1
    .param p1, "delegationType"    # I

    .prologue
    .line 1359
    packed-switch p1, :pswitch_data_0

    .line 1364
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1361
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1359
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDelegateQuery(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "delegationType"    # I
    .param p2, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 1370
    packed-switch p1, :pswitch_data_0

    .line 1376
    const/4 v0, 0x0

    .line 1378
    :goto_0
    return-object v0

    .line 1373
    :pswitch_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/provider/MilkContents$Playlists$Members;->getContentUri(J)Landroid/net/Uri;

    move-result-object p2

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 1378
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/MilkProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 1370
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected postBulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "values"    # [Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 830
    sget-object v1, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 831
    .local v0, "uriMatch":I
    const-string v1, "MilkProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postBulkInsert uriMatch : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    sparse-switch v0, :sswitch_data_0

    .line 854
    :goto_0
    return-void

    .line 834
    :sswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/provider/MilkProvider;->updateAudioPlaylistsMap(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 838
    :sswitch_1
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "audio_playlists_map"

    const-string v3, "audio_source_id"

    const-string v4, "AND audio_cp_attrs = 524290"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/provider/MilkProvider;->updateAudioIdTo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 842
    :sswitch_2
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "purchased_track"

    const-string/jumbo v3, "track_id"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/app/music/provider/MilkProvider;->updateAudioIdTo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 845
    :sswitch_3
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "radio_history"

    const-string/jumbo v3, "track_id"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/app/music/provider/MilkProvider;->updateAudioIdTo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 848
    :sswitch_4
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "milk_track"

    const-string/jumbo v3, "track_id"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/app/music/provider/MilkProvider;->updateAudioIdTo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 851
    :sswitch_5
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "download_basket"

    const-string/jumbo v3, "track_id"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/app/music/provider/MilkProvider;->updateAudioIdTo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 832
    nop

    :sswitch_data_0
    .sparse-switch
        0x7c -> :sswitch_0
        0x8d -> :sswitch_2
        0xab -> :sswitch_4
        0xbf -> :sswitch_5
        0xd8 -> :sswitch_1
        0xd9 -> :sswitch_1
        0xe7 -> :sswitch_3
    .end sparse-switch
.end method

.method protected preBulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)V
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "values"    # [Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 752
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    .line 753
    .local v7, "uriMatch":I
    const-string v0, "MilkProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preBulkInsert uriMatch : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    sparse-switch v7, :sswitch_data_0

    .line 800
    :goto_0
    return-void

    .line 756
    :sswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "audio_playlists"

    const-string/jumbo v3, "source_playlist_id"

    const-string v5, "is_sync = 1"

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/MilkProvider;->deleteNotIn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0

    .line 760
    :sswitch_1
    invoke-static {p1}, Lcom/samsung/android/app/music/provider/MilkContents$Playlists$Members;->getPlaylistIdFromUri(Landroid/net/Uri;)J

    move-result-wide v8

    .line 761
    .local v8, "favoirteId":J
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "audio_playlists_map"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playlist_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND audio_cp_attrs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x80002

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 765
    .end local v8    # "favoirteId":J
    :sswitch_2
    invoke-static {p1}, Lcom/samsung/android/app/music/provider/MilkContents$Playlists$Members;->getPlaylistIdFromUri(Landroid/net/Uri;)J

    move-result-wide v10

    .line 766
    .local v10, "playlistId":J
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "audio_playlists_map"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playlist_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 770
    .end local v10    # "playlistId":J
    :sswitch_3
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "voucher"

    const-string/jumbo v3, "voucherId"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/MilkProvider;->deleteNotIn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0

    .line 774
    :sswitch_4
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "subscription"

    const-string v3, "orderId"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/MilkProvider;->deleteNotIn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0

    .line 777
    :sswitch_5
    const/4 v0, 0x0

    aget-object v0, p2, v0

    const-string/jumbo v1, "serializedIds"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    const/4 v0, 0x0

    aget-object v0, p2, v0

    const-string/jumbo v1, "serializedIds"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/provider/MilkProvider;->preBulkInsertDownloadBasket(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 780
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "download_basket"

    const-string/jumbo v3, "track_id"

    const-string/jumbo v4, "source_id"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/provider/MilkProvider;->deleteNotIn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 785
    :sswitch_6
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "category_genre_order"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "genre_id"

    aput-object v4, v3, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/MilkProvider;->deleteNotIn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 792
    :sswitch_7
    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "radio_history"

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v4, "source_id"

    aput-object v4, v3, v0

    const/4 v0, 0x1

    const-string/jumbo v4, "station_id"

    aput-object v4, v3, v0

    const/4 v0, 0x2

    const-string v4, "date"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v5, "track_id"

    aput-object v5, v4, v0

    const/4 v0, 0x1

    const-string/jumbo v5, "station_id"

    aput-object v5, v4, v0

    const/4 v0, 0x2

    const-string v5, "date"

    aput-object v5, v4, v0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/provider/MilkProvider;->deleteNotIn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Landroid/content/ContentValues;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 754
    :sswitch_data_0
    .sparse-switch
        0x79 -> :sswitch_0
        0x7c -> :sswitch_2
        0x8e -> :sswitch_3
        0x8f -> :sswitch_4
        0xa3 -> :sswitch_6
        0xbf -> :sswitch_5
        0xd9 -> :sswitch_1
        0xe7 -> :sswitch_7
    .end sparse-switch
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 26
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "projection"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "selection"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "selectionArgs"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "sortOrder"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 320
    const-string v3, "MilkProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query uri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 323
    .local v2, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v3, "limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 324
    .local v10, "limit":Ljava/lang/String;
    const/4 v7, 0x0

    .line 325
    .local v7, "groupBy":Ljava/lang/String;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v18, "prependArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v21

    .line 329
    .local v21, "uriMatch":I
    sparse-switch v21, :sswitch_data_0

    .line 613
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 331
    :sswitch_0
    const-string v20, "purchased_track_view"

    .line 332
    .local v20, "tableName":Ljava/lang/String;
    const-string v15, "audio"

    .line 333
    .local v15, "joinTable":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 334
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v3, v0

    if-ge v14, v3, :cond_1

    .line 335
    aget-object v17, p2, v14

    .line 336
    .local v17, "p":Ljava/lang/String;
    const-string v3, "_id"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "._id AS _id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v14

    .line 334
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 341
    .end local v14    # "i":I
    .end local v17    # "p":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "._id=audio_id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 616
    .end local v15    # "joinTable":Ljava/lang/String;
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 617
    .local v22, "time1":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/provider/MilkProvider;->combine(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 618
    .local v12, "c":Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 619
    .local v24, "time2":J
    const-string v3, "MilkProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query uri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " time_takes "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v8, v24, v22

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    if-eqz v12, :cond_2

    .line 621
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/provider/MilkProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v12, v3, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_2
    move-object/from16 v19, v12

    .line 623
    .end local v12    # "c":Landroid/database/Cursor;
    .end local v22    # "time1":J
    .end local v24    # "time2":J
    :goto_2
    return-object v19

    .line 345
    .end local v20    # "tableName":Ljava/lang/String;
    :sswitch_1
    const-string v20, "radio_history_view"

    .line 346
    .restart local v20    # "tableName":Ljava/lang/String;
    const-string v15, "audio"

    .line 347
    .restart local v15    # "joinTable":Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 348
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_3
    move-object/from16 v0, p2

    array-length v3, v0

    if-ge v14, v3, :cond_4

    .line 349
    aget-object v17, p2, v14

    .line 350
    .restart local v17    # "p":Ljava/lang/String;
    const-string v3, "_id"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 351
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "._id AS _id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v14

    .line 348
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 356
    .end local v14    # "i":I
    .end local v17    # "p":Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 357
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "._id=audio_id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 361
    .end local v15    # "joinTable":Ljava/lang/String;
    .end local v20    # "tableName":Ljava/lang/String;
    :sswitch_2
    const-string v20, "milk_track"

    .line 362
    .restart local v20    # "tableName":Ljava/lang/String;
    const-string v15, "audio"

    .line 363
    .restart local v15    # "joinTable":Ljava/lang/String;
    if-eqz p2, :cond_6

    .line 364
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_4
    move-object/from16 v0, p2

    array-length v3, v0

    if-ge v14, v3, :cond_6

    .line 365
    aget-object v17, p2, v14

    .line 366
    .restart local v17    # "p":Ljava/lang/String;
    const-string v3, "_id"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "._id AS _id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v14

    .line 364
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 371
    .end local v14    # "i":I
    .end local v17    # "p":Ljava/lang/String;
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "._id=audio_id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 375
    .end local v15    # "joinTable":Ljava/lang/String;
    .end local v20    # "tableName":Ljava/lang/String;
    :sswitch_3
    const-string v20, "audio"

    .line 376
    .restart local v20    # "tableName":Ljava/lang/String;
    const-string v15, "milk_thumbnails"

    .line 377
    .restart local v15    # "joinTable":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".thumbnail_id=album_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 381
    .end local v15    # "joinTable":Ljava/lang/String;
    .end local v20    # "tableName":Ljava/lang/String;
    :sswitch_4
    const-string v20, "audio_meta"

    .line 382
    .restart local v20    # "tableName":Ljava/lang/String;
    const-string v15, "purchased_track"

    .line 383
    .restart local v15    # "joinTable":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 p2, v0

    .end local p2    # "projection":[Ljava/lang/String;
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CASE WHEN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "audio_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IS NULL THEN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ELSE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "audio_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " END AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "purchased_audio_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v3

    .line 388
    .restart local p2    # "projection":[Ljava/lang/String;
    const-string v7, "purchased_audio_id"

    .line 390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LEFT OUTER JOIN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ON "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "local_track_ext_320k"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "local_track_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "local_track_ext"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "local_track_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 395
    .end local v15    # "joinTable":Ljava/lang/String;
    .end local v20    # "tableName":Ljava/lang/String;
    :sswitch_5
    const-string v20, "milk_thumbnails"

    .line 398
    .restart local v20    # "tableName":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 401
    .end local v20    # "tableName":Ljava/lang/String;
    :sswitch_6
    const-string v20, "milk_etc_thumbnails"

    .line 402
    .restart local v20    # "tableName":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 405
    .end local v20    # "tableName":Ljava/lang/String;
    :sswitch_7
    const-string v20, "category_genre"

    .line 406
    .restart local v20    # "tableName":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 409
    .end local v20    # "tableName":Ljava/lang/String;
    :sswitch_8
    const-string v20, "category_period"

    .line 410
    .restart local v20    # "tableName":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 414
    .end local v20    # "tableName":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v20, "voucher"

    .line 415
    .restart local v20    # "tableName":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 418
    .end local v20    # "tableName":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v20, "voucher"

    .line 419
    .restart local v20    # "tableName":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 421
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v16, "mergeCursorSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    const-string p3, "( statusCode = \'01\' )"

    .line 425
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 426
    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/provider/MilkProvider;->combine(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 429
    .local v11, "active":Landroid/database/Cursor;
    if-eqz v11, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_7

    .line 430
    const/16 v3, -0x14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/music/provider/MilkProvider;->createHeaderCursor([Ljava/lang/String;I)Landroid/database/MatrixCursor;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    :cond_7
    const-string p3, "( statusCode != \'01\' )"

    .line 436
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 437
    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/provider/MilkProvider;->combine(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 440
    .local v13, "expired":Landroid/database/Cursor;
    if-eqz v13, :cond_8

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_8

    .line 441
    const/16 v3, -0x1e

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/music/provider/MilkProvider;->createHeaderCursor([Ljava/lang/String;I)Landroid/database/MatrixCursor;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_8
    const/16 v19, 0x0

    .line 446
    .local v19, "resultCursor":Landroid/database/Cursor;
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_a

    .line 447
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_5
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v14, v3, :cond_9

    .line 448
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/provider/MilkProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v3, v4, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 447
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 450
    :cond_9
    new-instance v19, Landroid/database/MergeCursor;

    .end local v19    # "resultCursor":Landroid/database/Cursor;
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/database/Cursor;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/database/Cursor;

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .restart local v19    # "resultCursor":Landroid/database/Cursor;
    goto/16 :goto_2

    .line 452
    .end local v14    # "i":I
    :cond_a
    new-instance v19, Landroid/database/MatrixCursor;

    .end local v19    # "resultCursor":Landroid/database/Cursor;
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 453
    .restart local v19    # "resultCursor":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/provider/MilkProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v3, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 460
    .end local v11    # "active":Landroid/database/Cursor;
    .end local v13    # "expired":Landroid/database/Cursor;
    .end local v16    # "mergeCursorSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    .end local v19    # "resultCursor":Landroid/database/Cursor;
    .end local v20    # "tableName":Ljava/lang/String;
    :sswitch_b
    const-string v20, "all_station_view"

    .line 461
    .restart local v20    # "tableName":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 465
    .end local v20    # "tableName":Ljava/lang/String;
    :sswitch_c
    const-string v20, "mystation_view"

    .line 466
    .restart local v20    # "tableName":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 469
    .end local v20    # "tableName":Ljava/lang/String;
    :sswitch_d
    const-string v20, "milk_genre"

    .line 470
    .restart local v20    # "tableName":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 473
    .end local v20    # "tableName":Ljava/lang/String;
    :sswitch_e
    const-string v20, "radio_track"

    .line 474
    .restart local v20    # "tableName":Ljava/lang/String;
    const-string v15, "albums"

    .line 475
    .restart local v15    # "joinTable":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 476
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".source_album_id=track_album_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 479
    .end local v15    # "joinTable":Ljava/lang/String;
    .end local v20    # "tableName":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v20, "subscription"

    .line 480
    .restart local v20    # "tableName":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 484
    .end local v20    # "tableName":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v20, "subscription"

    .line 485
    .restart local v20    # "tableName":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 487
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .restart local v16    # "mergeCursorSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    const-string p3, "( orderStatus = \'02\' )"

    .line 490
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 491
    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/provider/MilkProvider;->combine(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 494
    .restart local v11    # "active":Landroid/database/Cursor;
    if-eqz v11, :cond_b

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_b

    .line 495
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    :cond_b
    const-string p3, "( orderStatus != \'02\' )"

    .line 499
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 500
    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/provider/MilkProvider;->combine(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 503
    .restart local v13    # "expired":Landroid/database/Cursor;
    if-eqz v13, :cond_c

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_c

    .line 505
    const/16 v3, -0x14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/music/provider/MilkProvider;->createHeaderCursor([Ljava/lang/String;I)Landroid/database/MatrixCursor;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    :cond_c
    move-object/from16 v19, v11

    .line 510
    .restart local v19    # "resultCursor":Landroid/database/Cursor;
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_e

    .line 511
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_6
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v14, v3, :cond_d

    .line 512
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/provider/MilkProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v3, v4, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 511
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 514
    :cond_d
    new-instance v19, Landroid/database/MergeCursor;

    .end local v19    # "resultCursor":Landroid/database/Cursor;
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/database/Cursor;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/database/Cursor;

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .restart local v19    # "resultCursor":Landroid/database/Cursor;
    goto/16 :goto_2

    .line 516
    .end local v14    # "i":I
    :cond_e
    new-instance v19, Landroid/database/MatrixCursor;

    .end local v19    # "resultCursor":Landroid/database/Cursor;
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 517
    .restart local v19    # "resultCursor":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/provider/MilkProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v3, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 522
    .end local v11    # "active":Landroid/database/Cursor;
    .end local v13    # "expired":Landroid/database/Cursor;
    .end local v16    # "mergeCursorSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    .end local v19    # "resultCursor":Landroid/database/Cursor;
    .end local v20    # "tableName":Ljava/lang/String;
    :sswitch_11
    const-string v20, "download_queue"

    .line 523
    .restart local v20    # "tableName":Ljava/lang/String;
    const-string v15, "audio"

    .line 524
    .restart local v15    # "joinTable":Ljava/lang/String;
    if-eqz p2, :cond_10

    .line 525
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_7
    move-object/from16 v0, p2

    array-length v3, v0

    if-ge v14, v3, :cond_10

    .line 526
    aget-object v17, p2, v14

    .line 527
    .restart local v17    # "p":Ljava/lang/String;
    const-string v3, "_id"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 528
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "._id AS _id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v14

    .line 525
    :cond_f
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 532
    .end local v14    # "i":I
    .end local v17    # "p":Ljava/lang/String;
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 533
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "._id=audio_id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 536
    .end local v15    # "joinTable":Ljava/lang/String;
    .end local v20    # "tableName":Ljava/lang/String;
    :sswitch_12
    const-string v20, "download_basket"

    .line 537
    .restart local v20    # "tableName":Ljava/lang/String;
    const-string v15, "audio"

    .line 538
    .restart local v15    # "joinTable":Ljava/lang/String;
    if-eqz p2, :cond_12

    .line 539
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_8
    move-object/from16 v0, p2

    array-length v3, v0

    if-ge v14, v3, :cond_12

    .line 540
    aget-object v17, p2, v14

    .line 541
    .restart local v17    # "p":Ljava/lang/String;
    const-string v3, "_id"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 542
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "._id AS _id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v14

    .line 539
    :cond_11
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 546
    .end local v14    # "i":I
    .end local v17    # "p":Ljava/lang/String;
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 547
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "._id=audio_id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 550
    .end local v15    # "joinTable":Ljava/lang/String;
    .end local v20    # "tableName":Ljava/lang/String;
    :sswitch_13
    const-string v20, "event_popups"

    .line 551
    .restart local v20    # "tableName":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 554
    .end local v20    # "tableName":Ljava/lang/String;
    :sswitch_14
    const-string v20, "milkfavorite"

    .line 555
    .restart local v20    # "tableName":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 558
    .end local v20    # "tableName":Ljava/lang/String;
    :sswitch_15
    const-string v20, "milkfavorite_track_list"

    .line 559
    .restart local v20    # "tableName":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 562
    .end local v20    # "tableName":Ljava/lang/String;
    :sswitch_16
    const-string v20, "milkfavorite_album_list"

    .line 563
    .restart local v20    # "tableName":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 566
    .end local v20    # "tableName":Ljava/lang/String;
    :sswitch_17
    const-string v20, "milkfavorite_artist_list"

    .line 567
    .restart local v20    # "tableName":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 570
    .end local v20    # "tableName":Ljava/lang/String;
    :sswitch_18
    const-string v20, "milkfavorite_milkmagazine_list"

    .line 571
    .restart local v20    # "tableName":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 574
    .end local v20    # "tableName":Ljava/lang/String;
    :sswitch_19
    const-string v20, "milk_smart_station_seed"

    .line 575
    .restart local v20    # "tableName":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 578
    .end local v20    # "tableName":Ljava/lang/String;
    :sswitch_1a
    const-string v20, "personal_station_seed"

    .line 579
    .restart local v20    # "tableName":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 582
    .end local v20    # "tableName":Ljava/lang/String;
    :sswitch_1b
    const-string v20, "category_genre_infos"

    .line 583
    .restart local v20    # "tableName":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 586
    .end local v20    # "tableName":Ljava/lang/String;
    :sswitch_1c
    const-string v20, "milk_drm_view"

    .line 587
    .restart local v20    # "tableName":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 590
    .end local v20    # "tableName":Ljava/lang/String;
    :sswitch_1d
    const-string v20, "all_audio"

    .line 591
    .restart local v20    # "tableName":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 594
    .end local v20    # "tableName":Ljava/lang/String;
    :sswitch_1e
    const-string v20, "audio_playlists_map"

    .line 595
    .restart local v20    # "tableName":Ljava/lang/String;
    const-string v15, "all_audio"

    .line 596
    .restart local v15    # "joinTable":Ljava/lang/String;
    if-eqz p2, :cond_14

    .line 597
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_9
    move-object/from16 v0, p2

    array-length v3, v0

    if-ge v14, v3, :cond_14

    .line 598
    aget-object v17, p2, v14

    .line 599
    .restart local v17    # "p":Ljava/lang/String;
    const-string v3, "_id"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 600
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "._id AS _id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v14

    .line 597
    :cond_13
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 604
    .end local v14    # "i":I
    .end local v17    # "p":Ljava/lang/String;
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 605
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "._id=audio_id and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".cp_attrs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x80008

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and audio_cp_attrs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x80008

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") or "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "._id=audio_id and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".cp_attrs != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x80008

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and audio_cp_attrs != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x80008

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")) AND playlist_id=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 610
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 329
    :sswitch_data_0
    .sparse-switch
        0x7b -> :sswitch_1e
        0x8d -> :sswitch_0
        0x8e -> :sswitch_9
        0x8f -> :sswitch_f
        0x90 -> :sswitch_10
        0x93 -> :sswitch_11
        0x94 -> :sswitch_a
        0x97 -> :sswitch_5
        0x98 -> :sswitch_6
        0xa1 -> :sswitch_7
        0xa2 -> :sswitch_8
        0xa3 -> :sswitch_1b
        0xab -> :sswitch_2
        0xac -> :sswitch_3
        0xad -> :sswitch_4
        0xb5 -> :sswitch_b
        0xb6 -> :sswitch_b
        0xb7 -> :sswitch_c
        0xb8 -> :sswitch_d
        0xb9 -> :sswitch_e
        0xba -> :sswitch_1a
        0xbf -> :sswitch_12
        0xc9 -> :sswitch_13
        0xd3 -> :sswitch_14
        0xd4 -> :sswitch_15
        0xd5 -> :sswitch_16
        0xd6 -> :sswitch_17
        0xd7 -> :sswitch_18
        0xdc -> :sswitch_19
        0xe7 -> :sswitch_1
        0xf1 -> :sswitch_1c
        0xfa -> :sswitch_1d
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "values"    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "selection"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "selectionArgs"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1049
    sget-object v7, Lcom/samsung/android/app/music/provider/MilkProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    .line 1050
    .local v5, "uriMatch":I
    const-string v7, "MilkProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update uriMatch : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    const/4 v2, 0x0

    .line 1052
    .local v2, "count":I
    sparse-switch v5, :sswitch_data_0

    .line 1099
    const-string v7, "MilkProvider"

    const-string/jumbo v8, "update fail to uri match"

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/app/music/provider/MilkContents;->getNotifyUris(Landroid/net/Uri;)[Landroid/net/Uri;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/samsung/android/app/music/provider/MilkProvider;->notifyChange([Landroid/net/Uri;)V

    .line 1103
    const-string v7, "MilkProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " items are updated"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    return v2

    .line 1054
    :sswitch_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/samsung/android/app/music/provider/MilkContents$Playlists;->getPlaylistIdFromUri(Landroid/net/Uri;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1055
    .local v6, "where":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 1056
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1057
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v7, " AND ("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1060
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "audio_playlists"

    invoke-virtual {v7, v8, p2, v6, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1061
    goto :goto_0

    .line 1064
    .end local v6    # "where":Ljava/lang/String;
    :sswitch_1
    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/app/music/provider/MilkProvider;->updateAudioDuration(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1066
    const-string/jumbo v7, "track_id"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/samsung/android/app/music/provider/MilkProvider;->getAudioIdBySourceID(Ljava/lang/String;)J

    move-result-wide v0

    .line 1067
    .local v0, "audioId":J
    invoke-static {p2, v0, v1}, Lcom/samsung/android/app/music/common/model/Track;->convertToMilkTracks(Landroid/content/ContentValues;J)Landroid/content/ContentValues;

    move-result-object v4

    .line 1068
    .local v4, "trackValues":Landroid/content/ContentValues;
    iget-object v7, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "milk_track"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "track_id = \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "track_id"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v4, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1069
    goto/16 :goto_0

    .line 1071
    .end local v0    # "audioId":J
    .end local v4    # "trackValues":Landroid/content/ContentValues;
    :sswitch_2
    iget-object v7, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v8, "station"

    invoke-virtual {v7, v8, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1072
    goto/16 :goto_0

    .line 1074
    :sswitch_3
    iget-object v7, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "download_queue"

    invoke-virtual {v7, v8, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1075
    goto/16 :goto_0

    .line 1077
    :sswitch_4
    iget-object v7, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "milk_smart_station_seed"

    invoke-virtual {v7, v8, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1078
    goto/16 :goto_0

    .line 1081
    :sswitch_5
    iget-object v7, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "category_genre"

    invoke-virtual {v7, v8, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1082
    goto/16 :goto_0

    .line 1084
    :sswitch_6
    iget-object v7, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "category_period"

    invoke-virtual {v7, v8, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1085
    goto/16 :goto_0

    .line 1087
    :sswitch_7
    iget-object v7, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "purchased_track"

    invoke-virtual {v7, v8, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1088
    goto/16 :goto_0

    .line 1090
    :sswitch_8
    iget-object v7, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v8, "subscription"

    invoke-virtual {v7, v8, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1091
    goto/16 :goto_0

    .line 1093
    :sswitch_9
    iget-object v7, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v8, "voucher"

    invoke-virtual {v7, v8, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1094
    goto/16 :goto_0

    .line 1096
    :sswitch_a
    iget-object v7, p0, Lcom/samsung/android/app/music/provider/MilkProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "milk_drm"

    invoke-virtual {v7, v8, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1097
    goto/16 :goto_0

    .line 1052
    :sswitch_data_0
    .sparse-switch
        0x7a -> :sswitch_0
        0x8d -> :sswitch_7
        0x8e -> :sswitch_9
        0x8f -> :sswitch_8
        0x93 -> :sswitch_3
        0xa1 -> :sswitch_5
        0xa2 -> :sswitch_6
        0xab -> :sswitch_1
        0xb6 -> :sswitch_2
        0xdc -> :sswitch_4
        0xf1 -> :sswitch_a
    .end sparse-switch
.end method
