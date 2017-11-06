.class public Lcom/samsung/android/app/music/common/model/StartClientInfo;
.super Lcom/samsung/android/app/music/common/model/CheckCountryInfo;
.source "StartClientInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/StartClientInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private channelId:Ljava/lang/String;

.field private clearCacheDate:Ljava/lang/String;

.field private connectedGeoCountry:Ljava/lang/String;

.field private curTime:Ljava/lang/String;

.field private mForceUpdateVersion:Ljava/lang/String;

.field private prefetchUpdateDate:Ljava/lang/String;

.field private shopAgeLimit:I

.field private shopId:Ljava/lang/String;

.field private timeZone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/samsung/android/app/music/common/model/StartClientInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/StartClientInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/StartClientInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/model/CheckCountryInfo;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/CheckCountryInfo;-><init>(Landroid/os/Parcel;)V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/StartClientInfo;->mForceUpdateVersion:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/StartClientInfo;->clearCacheDate:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/StartClientInfo;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getClearCacheDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/StartClientInfo;->clearCacheDate:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectedGeoCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/StartClientInfo;->connectedGeoCountry:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/StartClientInfo;->countryCode:Ljava/lang/String;

    .line 138
    :goto_0
    return-object v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/StartClientInfo;->connectedGeoCountry:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/StartClientInfo;->countryCode:Ljava/lang/String;

    goto :goto_0

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/StartClientInfo;->connectedGeoCountry:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCurrentTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/StartClientInfo;->curTime:Ljava/lang/String;

    return-object v0
.end method

.method public getForceUpdateVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/StartClientInfo;->mForceUpdateVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefetchUpdateDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/StartClientInfo;->prefetchUpdateDate:Ljava/lang/String;

    return-object v0
.end method

.method public getShopAgeLimit()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/samsung/android/app/music/common/model/StartClientInfo;->shopAgeLimit:I

    return v0
.end method

.method public getShopId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/StartClientInfo;->shopId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/StartClientInfo;->timeZone:Ljava/lang/String;

    return-object v0
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/StartClientInfo;->channelId:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setClearCacheDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/StartClientInfo;->clearCacheDate:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setConnectedGeoCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/StartClientInfo;->connectedGeoCountry:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setCurrentTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentTime"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/StartClientInfo;->curTime:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setForceUpdateVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/StartClientInfo;->mForceUpdateVersion:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setPrefetchUpdateDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefetchUpdateDate"    # Ljava/lang/String;

    .prologue
    .line 113
    .line 114
    return-void
.end method

.method public setShopAgeLimit(I)V
    .locals 0
    .param p1, "shopAgeLimit"    # I

    .prologue
    .line 121
    .line 122
    return-void
.end method

.method public setShopId(Ljava/lang/String;)V
    .locals 0
    .param p1, "shopId"    # Ljava/lang/String;

    .prologue
    .line 89
    .line 90
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 105
    .line 106
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/CheckCountryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/StartClientInfo;->mForceUpdateVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/StartClientInfo;->clearCacheDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return-void
.end method
