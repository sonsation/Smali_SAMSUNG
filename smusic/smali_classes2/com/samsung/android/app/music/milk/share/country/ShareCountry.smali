.class public abstract Lcom/samsung/android/app/music/milk/share/country/ShareCountry;
.super Ljava/lang/Object;
.source "ShareCountry.java"


# static fields
.field protected static final PACKAGE_NAME_EMAIL:Ljava/lang/String; = "com.samsung.android.email.composer"

.field protected static final PACKAGE_NAME_MEMO:Ljava/lang/String; = "com.samsung.android.app.memo"

.field protected static final PACKAGE_NAME_MOMENT:Ljava/lang/String; = "com.tencent.mm.ui.tools.AddFavoriteUI"

.field protected static final PACKAGE_NAME_QQ:Ljava/lang/String; = "com.tencent.mobileqq"

.field protected static final PACKAGE_NAME_SMS:Ljava/lang/String; = "com.samsung.android.messaging"

.field protected static final PACKAGE_NAME_SMS_OLD:Ljava/lang/String; = "com.android.mms"

.field protected static final PACKAGE_NAME_SNOTE:Ljava/lang/String; = "com.samsung.android.snote"

.field protected static final PACKAGE_NAME_WECHAT:Ljava/lang/String; = "com.tencent.mm"

.field protected static final PACKAGE_NAME_WEIBO:Ljava/lang/String; = "com.sina.weibo"


# instance fields
.field protected final COMMON_MAX_STATION_NAME_LENGTH:I

.field protected final COMMON_MAX_TRACK_N_ARTIST_NAME_LENGTH:I

.field protected final FACEBOOK_MAX_STATION_NAME_LENGTH:I

.field protected final FACEBOOK_MAX_TRACK_N_ARTIST_NAME_LENGTH:I

.field protected final TWITTER_MAX_STATION_NAME_LENGTH:I

.field protected final TWITTER_MAX_TRACK_N_ARTIST_NAME_LENGTH:I

.field protected mShareData:Lcom/samsung/android/app/music/common/model/share/ShareData;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x28

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0x4b

    iput v0, p0, Lcom/samsung/android/app/music/milk/share/country/ShareCountry;->COMMON_MAX_STATION_NAME_LENGTH:I

    .line 14
    iput v1, p0, Lcom/samsung/android/app/music/milk/share/country/ShareCountry;->COMMON_MAX_TRACK_N_ARTIST_NAME_LENGTH:I

    .line 16
    const/16 v0, 0x1b

    iput v0, p0, Lcom/samsung/android/app/music/milk/share/country/ShareCountry;->TWITTER_MAX_STATION_NAME_LENGTH:I

    .line 18
    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/android/app/music/milk/share/country/ShareCountry;->TWITTER_MAX_TRACK_N_ARTIST_NAME_LENGTH:I

    .line 20
    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/android/app/music/milk/share/country/ShareCountry;->FACEBOOK_MAX_STATION_NAME_LENGTH:I

    .line 22
    iput v1, p0, Lcom/samsung/android/app/music/milk/share/country/ShareCountry;->FACEBOOK_MAX_TRACK_N_ARTIST_NAME_LENGTH:I

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/common/model/share/ShareData;)V
    .locals 2
    .param p1, "shareData"    # Lcom/samsung/android/app/music/common/model/share/ShareData;

    .prologue
    const/16 v1, 0x28

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0x4b

    iput v0, p0, Lcom/samsung/android/app/music/milk/share/country/ShareCountry;->COMMON_MAX_STATION_NAME_LENGTH:I

    .line 14
    iput v1, p0, Lcom/samsung/android/app/music/milk/share/country/ShareCountry;->COMMON_MAX_TRACK_N_ARTIST_NAME_LENGTH:I

    .line 16
    const/16 v0, 0x1b

    iput v0, p0, Lcom/samsung/android/app/music/milk/share/country/ShareCountry;->TWITTER_MAX_STATION_NAME_LENGTH:I

    .line 18
    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/android/app/music/milk/share/country/ShareCountry;->TWITTER_MAX_TRACK_N_ARTIST_NAME_LENGTH:I

    .line 20
    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/android/app/music/milk/share/country/ShareCountry;->FACEBOOK_MAX_STATION_NAME_LENGTH:I

    .line 22
    iput v1, p0, Lcom/samsung/android/app/music/milk/share/country/ShareCountry;->FACEBOOK_MAX_TRACK_N_ARTIST_NAME_LENGTH:I

    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/country/ShareCountry;->mShareData:Lcom/samsung/android/app/music/common/model/share/ShareData;

    .line 40
    return-void
.end method

.method private ellipsize(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "max"    # I

    .prologue
    .line 74
    if-nez p1, :cond_1

    .line 75
    const-string p1, ""

    .line 82
    .end local p1    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 78
    .restart local p1    # "name":Ljava/lang/String;
    :cond_1
    if-ltz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    add-int/lit8 v2, p2, -0x3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public abstract getDefaultRecentlySharedSns(Landroid/content/Context;)[Ljava/lang/String;
.end method

.method public abstract getExtraText(ILcom/samsung/android/app/music/common/model/share/ShareData;)Ljava/lang/String;
.end method

.method protected getResizedName(ILcom/samsung/android/app/music/common/model/share/ShareData;)[Ljava/lang/String;
    .locals 10
    .param p1, "shareItem"    # I
    .param p2, "shareData"    # Lcom/samsung/android/app/music/common/model/share/ShareData;

    .prologue
    const/16 v9, 0x1e

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x28

    .line 43
    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/String;

    .line 45
    .local v0, "resizedNames":[Ljava/lang/String;
    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getDialogText1()Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "text1":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getDialogText2()Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "text2":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getStationName()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "stationName":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 63
    :pswitch_0
    invoke-direct {p0, v2, v5}, Lcom/samsung/android/app/music/milk/share/country/ShareCountry;->ellipsize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    .line 64
    invoke-direct {p0, v3, v5}, Lcom/samsung/android/app/music/milk/share/country/ShareCountry;->ellipsize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v7

    .line 65
    const/16 v4, 0x4b

    invoke-direct {p0, v1, v4}, Lcom/samsung/android/app/music/milk/share/country/ShareCountry;->ellipsize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v8

    .line 70
    :goto_0
    return-object v0

    .line 51
    :pswitch_1
    invoke-direct {p0, v2, v9}, Lcom/samsung/android/app/music/milk/share/country/ShareCountry;->ellipsize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    .line 52
    invoke-direct {p0, v3, v9}, Lcom/samsung/android/app/music/milk/share/country/ShareCountry;->ellipsize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v7

    .line 53
    const/16 v4, 0x1b

    invoke-direct {p0, v1, v4}, Lcom/samsung/android/app/music/milk/share/country/ShareCountry;->ellipsize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v8

    goto :goto_0

    .line 57
    :pswitch_2
    invoke-direct {p0, v2, v5}, Lcom/samsung/android/app/music/milk/share/country/ShareCountry;->ellipsize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    .line 58
    invoke-direct {p0, v3, v5}, Lcom/samsung/android/app/music/milk/share/country/ShareCountry;->ellipsize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v7

    .line 59
    const/16 v4, 0x32

    invoke-direct {p0, v1, v4}, Lcom/samsung/android/app/music/milk/share/country/ShareCountry;->ellipsize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v8

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public abstract getShortenUrl(Ljava/lang/String;)Ljava/lang/String;
.end method
