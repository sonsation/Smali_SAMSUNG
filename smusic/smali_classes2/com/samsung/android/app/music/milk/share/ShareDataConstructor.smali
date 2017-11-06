.class public Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;
.super Ljava/lang/Object;
.source "ShareDataConstructor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/share/ShareDataConstructor$OnShareDataResultListener;,
        Lcom/samsung/android/app/music/milk/share/ShareDataConstructor$ShortenUrlTask;
    }
.end annotation


# static fields
.field private static final DEFAULT_COVER_ART_URL:Ljava/lang/String; = "http://cdn.glb.samsungmilkradio.com/mr_thumb_defult_image_600x600.jpg"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCallback:Lcom/samsung/android/app/music/milk/share/ShareDataConstructor$OnShareDataResultListener;

.field private mContext:Landroid/content/Context;

.field private mShareCountry:Lcom/samsung/android/app/music/milk/share/country/ShareCountry;

.field private mShareData:Lcom/samsung/android/app/music/common/model/share/ShareData;

.field private mSnsInfo:Lcom/samsung/android/app/music/common/model/share/SnsInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/share/SnsInfo;ILandroid/os/Bundle;Lcom/samsung/android/app/music/milk/share/ShareDataConstructor$OnShareDataResultListener;Lcom/samsung/android/app/music/milk/share/country/ShareCountry;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "snsInfo"    # Lcom/samsung/android/app/music/common/model/share/SnsInfo;
    .param p3, "type"    # I
    .param p4, "args"    # Landroid/os/Bundle;
    .param p5, "callback"    # Lcom/samsung/android/app/music/milk/share/ShareDataConstructor$OnShareDataResultListener;
    .param p6, "country"    # Lcom/samsung/android/app/music/milk/share/country/ShareCountry;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;->mSnsInfo:Lcom/samsung/android/app/music/common/model/share/SnsInfo;

    .line 43
    invoke-direct {p0, p3, p4}, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;->getShareData(ILandroid/os/Bundle;)Lcom/samsung/android/app/music/common/model/share/ShareData;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;->mShareData:Lcom/samsung/android/app/music/common/model/share/ShareData;

    .line 44
    iput-object p5, p0, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;->mCallback:Lcom/samsung/android/app/music/milk/share/ShareDataConstructor$OnShareDataResultListener;

    .line 45
    iput-object p6, p0, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;->mShareCountry:Lcom/samsung/android/app/music/milk/share/country/ShareCountry;

    .line 47
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;->mShareData:Lcom/samsung/android/app/music/common/model/share/ShareData;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;->mShareCountry:Lcom/samsung/android/app/music/milk/share/country/ShareCountry;

    iget v3, p2, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mShareItem:I

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;->mShareData:Lcom/samsung/android/app/music/common/model/share/ShareData;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/music/milk/share/country/ShareCountry;->getExtraText(ILcom/samsung/android/app/music/common/model/share/ShareData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/model/share/ShareData;->setExtraText(Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor$ShortenUrlTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor$ShortenUrlTask;-><init>(Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;Lcom/samsung/android/app/music/milk/share/ShareDataConstructor$1;)V

    .line 49
    .local v0, "shortenTask":Lcom/samsung/android/app/music/milk/share/ShareDataConstructor$ShortenUrlTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p2, Lcom/samsung/android/app/music/common/model/share/SnsInfo;->mShareItem:I

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;->getSharePlatform(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor$ShortenUrlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 50
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;->getDeeplinkShortenUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;)Lcom/samsung/android/app/music/common/model/share/ShareData;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;->mShareData:Lcom/samsung/android/app/music/common/model/share/ShareData;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;)Lcom/samsung/android/app/music/common/model/share/SnsInfo;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;->mSnsInfo:Lcom/samsung/android/app/music/common/model/share/SnsInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;)Lcom/samsung/android/app/music/milk/share/ShareDataConstructor$OnShareDataResultListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;->mCallback:Lcom/samsung/android/app/music/milk/share/ShareDataConstructor$OnShareDataResultListener;

    return-object v0
.end method

.method private getDeeplinkShortenUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "sharePlatform"    # Ljava/lang/String;

    .prologue
    .line 130
    sget-object v2, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeDeeplinkShortenUrl: Seed type is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;->mShareData:Lcom/samsung/android/app/music/common/model/share/ShareData;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getSeedType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;->mShareData:Lcom/samsung/android/app/music/common/model/share/ShareData;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1}, Lcom/samsung/android/app/music/common/model/share/ShareData;->makeDeeplinkUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;->mShareData:Lcom/samsung/android/app/music/common/model/share/ShareData;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getDeeplinkUrl()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "deeplinkUrl":Ljava/lang/String;
    const/4 v1, 0x0

    .line 136
    .local v1, "shortenUrl":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;->mShareCountry:Lcom/samsung/android/app/music/milk/share/country/ShareCountry;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/milk/share/country/ShareCountry;->getShortenUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    :cond_0
    return-object v1
.end method

.method private getShareData(ILandroid/os/Bundle;)Lcom/samsung/android/app/music/common/model/share/ShareData;
    .locals 8
    .param p1, "type"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 53
    new-instance v1, Lcom/samsung/android/app/music/common/model/share/ShareData;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/model/share/ShareData;-><init>()V

    .line 55
    .local v1, "data":Lcom/samsung/android/app/music/common/model/share/ShareData;
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/common/model/share/ShareData;->setSeedType(I)V

    .line 56
    packed-switch p1, :pswitch_data_0

    .line 91
    :pswitch_0
    sget-object v5, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;->LOG_TAG:Ljava/lang/String;

    const-string v6, "makeShareData : Current share item is unknown type"

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :goto_0
    sget-object v5, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "makeShareData : Current station: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getStationID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-object v1

    .line 58
    :pswitch_1
    const-string v5, "SHARED_STATION_KEY"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/model/Station;

    .line 59
    .local v3, "station":Lcom/samsung/android/app/music/common/model/Station;
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/common/model/share/ShareData;->setStationName(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/common/model/share/ShareData;->setStationID(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->getStationType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/common/model/share/ShareData;->setStationType(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->getGenreId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/common/model/share/ShareData;->setGenreID(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/common/model/share/ShareData;->setGenreName(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->getSeedList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/common/model/share/ShareData;->setSeedList(Ljava/util/ArrayList;)V

    .line 65
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->isPersonalStation()Z

    move-result v6

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/app/music/common/model/share/ShareData;->determineShareType(Landroid/content/Context;Z)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/common/model/share/ShareData;->setSeedType(I)V

    .line 68
    .end local v3    # "station":Lcom/samsung/android/app/music/common/model/Station;
    :pswitch_2
    const-string v5, "SHARED_TRACK_KEY"

    .line 69
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 70
    .local v4, "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;->getValidUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/common/model/share/ShareData;->setCoverArtUrl(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/common/model/share/ShareData;->setTrackID(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/common/model/share/ShareData;->setDialogText1(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getArtistNames()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/common/model/share/ShareData;->setDialogText2(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 77
    .end local v4    # "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    :pswitch_3
    const-string v5, "SHARED_ITEM_KEY"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/share/ShareItem;

    .line 78
    .local v0, "artist":Lcom/samsung/android/app/music/common/model/share/ShareItem;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/share/ShareItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/common/model/share/ShareData;->setItemID(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/share/ShareItem;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;->getValidUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/common/model/share/ShareData;->setCoverArtUrl(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/share/ShareItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/common/model/share/ShareData;->setDialogText1(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 84
    .end local v0    # "artist":Lcom/samsung/android/app/music/common/model/share/ShareItem;
    :pswitch_4
    const-string v5, "SHARED_ITEM_KEY"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/model/share/ShareItem;

    .line 85
    .local v2, "item":Lcom/samsung/android/app/music/common/model/share/ShareItem;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/share/ShareItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/common/model/share/ShareData;->setItemID(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/share/ShareItem;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/milk/share/ShareDataConstructor;->getValidUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/common/model/share/ShareData;->setCoverArtUrl(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/share/ShareItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/common/model/share/ShareData;->setDialogText1(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/share/ShareItem;->getSubTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/common/model/share/ShareData;->setDialogText2(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private getSharePlatform(I)Ljava/lang/String;
    .locals 2
    .param p1, "shareItem"    # I

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 146
    .local v0, "sharePlatform":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 167
    :goto_0
    :pswitch_0
    return-object v0

    .line 148
    :pswitch_1
    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->KAKAOTALK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->getString()Ljava/lang/String;

    move-result-object v0

    .line 149
    goto :goto_0

    .line 151
    :pswitch_2
    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->FACEBOOK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->getString()Ljava/lang/String;

    move-result-object v0

    .line 152
    goto :goto_0

    .line 154
    :pswitch_3
    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->TWITTER:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->getString()Ljava/lang/String;

    move-result-object v0

    .line 155
    goto :goto_0

    .line 157
    :pswitch_4
    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->INSTAGRAM:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->getString()Ljava/lang/String;

    move-result-object v0

    .line 158
    goto :goto_0

    .line 160
    :pswitch_5
    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->LINE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->getString()Ljava/lang/String;

    move-result-object v0

    .line 161
    goto :goto_0

    .line 163
    :pswitch_6
    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->SHARE_VIA:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method private getValidUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 100
    const-string v0, "http://cdn.glb.samsungmilkradio.com/mr_thumb_defult_image_600x600.jpg"

    .line 101
    .local v0, "result":Ljava/lang/String;
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    move-object v0, p1

    .line 105
    :cond_0
    return-object v0
.end method
