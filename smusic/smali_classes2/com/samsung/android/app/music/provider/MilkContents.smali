.class public Lcom/samsung/android/app/music/provider/MilkContents;
.super Ljava/lang/Object;
.source "MilkContents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/MilkContents$AllAudio;,
        Lcom/samsung/android/app/music/provider/MilkContents$StationSeedInfo;,
        Lcom/samsung/android/app/music/provider/MilkContents$SmartStationSeedInfo;,
        Lcom/samsung/android/app/music/provider/MilkContents$MDrmTracks;,
        Lcom/samsung/android/app/music/provider/MilkContents$FavoriteMilkMagazineListInfos;,
        Lcom/samsung/android/app/music/provider/MilkContents$FavoriteArtistListInfos;,
        Lcom/samsung/android/app/music/provider/MilkContents$FavoriteAlbumListInfos;,
        Lcom/samsung/android/app/music/provider/MilkContents$FavoriteSongListInfos;,
        Lcom/samsung/android/app/music/provider/MilkContents$FavoriteInfos;,
        Lcom/samsung/android/app/music/provider/MilkContents$Artists;,
        Lcom/samsung/android/app/music/provider/MilkContents$Albums;,
        Lcom/samsung/android/app/music/provider/MilkContents$EventPopups;,
        Lcom/samsung/android/app/music/provider/MilkContents$DownloadQueue;,
        Lcom/samsung/android/app/music/provider/MilkContents$DownloadBasket;,
        Lcom/samsung/android/app/music/provider/MilkContents$StationTracks;,
        Lcom/samsung/android/app/music/provider/MilkContents$Subscriptions;,
        Lcom/samsung/android/app/music/provider/MilkContents$MusicCategoryPeriod;,
        Lcom/samsung/android/app/music/provider/MilkContents$MusicCategoryGenreOrder;,
        Lcom/samsung/android/app/music/provider/MilkContents$MusicCategoryGenre;,
        Lcom/samsung/android/app/music/provider/MilkContents$Genre;,
        Lcom/samsung/android/app/music/provider/MilkContents$MilkTrack;,
        Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails;,
        Lcom/samsung/android/app/music/provider/MilkContents$Account;,
        Lcom/samsung/android/app/music/provider/MilkContents$Vouchers;,
        Lcom/samsung/android/app/music/provider/MilkContents$RadioHistory;,
        Lcom/samsung/android/app/music/provider/MilkContents$PurchasedTracks;,
        Lcom/samsung/android/app/music/provider/MilkContents$Playlists;,
        Lcom/samsung/android/app/music/provider/MilkContents$MyStations;,
        Lcom/samsung/android/app/music/provider/MilkContents$AllStations;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MilkContents"

.field private static final PARAM_NOTIFY_PATH:Ljava/lang/String; = "notifyPath"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Landroid/net/Uri;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/provider/MilkContents;->appendNotifyUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static varargs appendNotifyUri(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "pathArgs"    # [Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 57
    .local v0, "builder":Landroid/net/Uri$Builder;
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p1, v2

    .line 58
    .local v1, "path":Ljava/lang/String;
    const-string v4, "notifyPath"

    invoke-virtual {v0, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public static getNotifyUris(Landroid/net/Uri;)[Landroid/net/Uri;
    .locals 9
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 41
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v5, "pathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    const-string v6, "notifyPath"

    invoke-virtual {p0, v6}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 44
    .local v2, "notifyPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 45
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 47
    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v3, v6, [Landroid/net/Uri;

    .line 48
    .local v3, "notifyUri":[Landroid/net/Uri;
    const/4 v0, 0x0

    .line 49
    .local v0, "index":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 50
    .local v4, "path":Ljava/lang/String;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "content://com.sec.android.app.music/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    aput-object v7, v3, v0

    move v0, v1

    .line 51
    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_0

    .line 52
    .end local v4    # "path":Ljava/lang/String;
    :cond_1
    return-object v3
.end method
