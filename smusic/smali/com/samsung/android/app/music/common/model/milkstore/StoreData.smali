.class public Lcom/samsung/android/app/music/common/model/milkstore/StoreData;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "StoreData.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adInterval:Ljava/lang/String;

.field private adinfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/AdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private bixbyConfigGoogleUpdate:I

.field private bixbyConfigKeywordCount:Ljava/lang/String;

.field private bixbyConfigListCount:Ljava/lang/String;

.field private bixbyConfigListType:Ljava/lang/String;

.field private bixbyConfigPopupDisplay:Ljava/lang/String;

.field private bixbyConfigPopupDisplayTime:Ljava/lang/String;

.field private bixbyConfigSearchCount:Ljava/lang/String;

.field private bixbySearchDelimeterYn:Ljava/lang/String;

.field private configs:Lcom/samsung/android/app/music/common/model/StoreDataConfig;

.field private curTime:Ljava/lang/String;

.field private currencyCode:Ljava/lang/String;

.field private currencySign:Ljava/lang/String;

.field private dormancyCount:Ljava/lang/String;

.field private eosFlag:Ljava/lang/String;

.field private forceUpdateVersion:Ljava/lang/String;

.field private genreEditorUrl:Ljava/lang/String;

.field private justForYou:Ljava/lang/String;

.field private justForYouLinkUrl:Ljava/lang/String;

.field private myStations_MAX_LIMIT:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private partnerAppPackageName:Ljava/lang/String;

.field private partnerAppVersion:Ljava/lang/String;

.field private prefetchUpdateDate:Ljava/lang/String;

.field private promotionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/Promotion;",
            ">;"
        }
    .end annotation
.end field

.field private shopAgeLimit:Ljava/lang/String;

.field private sleepTimer:Ljava/lang/String;

.field private timeZone:Ljava/lang/String;

.field private videoAdIntervalTime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->promotionList:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->adinfoList:Ljava/util/ArrayList;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->myStations_MAX_LIMIT:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->curTime:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->timeZone:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->shopAgeLimit:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->prefetchUpdateDate:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->packageName:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->forceUpdateVersion:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->partnerAppPackageName:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->partnerAppVersion:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->genreEditorUrl:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->currencyCode:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->currencySign:Ljava/lang/String;

    .line 99
    sget-object v0, Lcom/samsung/android/app/music/common/model/milkstore/Promotion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->promotionList:Ljava/util/ArrayList;

    .line 100
    sget-object v0, Lcom/samsung/android/app/music/common/model/milkstore/AdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->adinfoList:Ljava/util/ArrayList;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->dormancyCount:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->sleepTimer:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->eosFlag:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->adInterval:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->videoAdIntervalTime:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->justForYouLinkUrl:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->justForYou:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->bixbySearchDelimeterYn:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->bixbyConfigListType:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->bixbyConfigListCount:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->bixbyConfigKeywordCount:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->bixbyConfigGoogleUpdate:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->bixbyConfigPopupDisplayTime:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->bixbyConfigPopupDisplay:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->bixbyConfigSearchCount:Ljava/lang/String;

    .line 116
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public getAdInterval()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->adInterval:Ljava/lang/String;

    return-object v0
.end method

.method public getAdinfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/AdInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->adinfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBixbyConfigGoogleUpdate()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->bixbyConfigGoogleUpdate:I

    return v0
.end method

.method public getBixbyConfigListCount()I
    .locals 4

    .prologue
    .line 284
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->bixbyConfigListCount:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 291
    :goto_0
    return v1

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number Format Error => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->bixbyConfigListCount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 287
    :catch_1
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getBixbyConfigListType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    const-string v0, "0"

    return-object v0
.end method

.method public getBixbyExcutableResultMaxCount()I
    .locals 2

    .prologue
    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->bixbyConfigSearchCount:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 327
    :goto_0
    return v1

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 327
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBixbyOnDeviceSearchKeywordMaxCount()I
    .locals 2

    .prologue
    .line 296
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->bixbyConfigKeywordCount:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 301
    :goto_0
    return v1

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 301
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBixbyPromotionResetTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->bixbyConfigPopupDisplayTime:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigs()Lcom/samsung/android/app/music/common/model/StoreDataConfig;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->configs:Lcom/samsung/android/app/music/common/model/StoreDataConfig;

    return-object v0
.end method

.method public getCurTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->curTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencySign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->currencySign:Ljava/lang/String;

    return-object v0
.end method

.method public getDormancyCount()I
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->dormancyCount:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->dormancyCount:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->dormancyCount:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 221
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEosFlag()I
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->eosFlag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->eosFlag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->eosFlag:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 235
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getForceUpdateVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->forceUpdateVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getGenreEditorUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->genreEditorUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getJustForYouGuideUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->justForYouLinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getJustForYouSupportType()I
    .locals 3

    .prologue
    .line 251
    const/4 v1, -0x1

    .line 253
    .local v1, "ret":I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->justForYou:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 257
    :goto_0
    return v1

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getMyStations_MAX_LIMIT()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->myStations_MAX_LIMIT:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->myStations_MAX_LIMIT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->myStations_MAX_LIMIT:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 162
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPartnerAppPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->partnerAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPartnerAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->partnerAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefetchUpdateDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->prefetchUpdateDate:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotionList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/Promotion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->promotionList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getShopAgeLimit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->shopAgeLimit:Ljava/lang/String;

    return-object v0
.end method

.method public getSleepTimer()I
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->sleepTimer:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->sleepTimer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->sleepTimer:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 228
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->timeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoAdIntervalTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->videoAdIntervalTime:Ljava/lang/String;

    return-object v0
.end method

.method public isBixbyPromotionResetDisplay()Z
    .locals 2

    .prologue
    .line 317
    const-string v0, "1"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->bixbyConfigPopupDisplay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportBixbySearchDelimiterRemoveFeature()Z
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->bixbySearchDelimeterYn:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->bixbySearchDelimeterYn:Ljava/lang/String;

    const-string v1, "01"

    .line 262
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBixbyConfigGoogleUpdate(I)V
    .locals 0
    .param p1, "bixbyConfigGoogleUpdate"    # I

    .prologue
    .line 309
    iput p1, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->bixbyConfigGoogleUpdate:I

    .line 310
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    .line 125
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->myStations_MAX_LIMIT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->curTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->timeZone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->shopAgeLimit:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->prefetchUpdateDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->forceUpdateVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->partnerAppPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->partnerAppVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->genreEditorUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->currencyCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->currencySign:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->promotionList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->adinfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->dormancyCount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->sleepTimer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->eosFlag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->adInterval:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->videoAdIntervalTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->justForYouLinkUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->justForYou:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->bixbySearchDelimeterYn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->bixbyConfigListType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->bixbyConfigListCount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->bixbyConfigKeywordCount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->bixbyConfigGoogleUpdate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->bixbyConfigPopupDisplayTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->bixbyConfigPopupDisplay:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkstore/StoreData;->bixbyConfigSearchCount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    return-void
.end method
