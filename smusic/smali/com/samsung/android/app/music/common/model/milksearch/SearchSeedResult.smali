.class public Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;
.super Ljava/lang/Object;
.source "SearchSeedResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private artistId:Ljava/lang/String;

.field private artistName:Ljava/lang/String;

.field private explicit:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private providerType:Ljava/lang/String;

.field private score:Ljava/lang/String;

.field private seedType:Ljava/lang/String;

.field private seedUsable:Ljava/lang/String;

.field private trackCount:Ljava/lang/String;

.field private trackId:Ljava/lang/String;

.field private trackTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->seedType:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->artistId:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->artistName:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->trackId:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->trackTitle:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->trackCount:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->providerType:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->score:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->seedUsable:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->imageUrl:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->explicit:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public getArtistId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->artistId:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->artistName:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverArtUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->providerType:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()F
    .locals 3

    .prologue
    .line 127
    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->score:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    const/4 v1, 0x0

    .line 137
    :goto_0
    return v1

    .line 130
    :cond_0
    const/4 v1, 0x0

    .line 132
    .local v1, "ret":F
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->score:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getSeedType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->seedType:Ljava/lang/String;

    return-object v0
.end method

.method public getSeedUsable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->seedUsable:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackCount()I
    .locals 4

    .prologue
    .line 108
    const/4 v1, 0x0

    .line 109
    .local v1, "ret":I
    iget-object v3, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->trackCount:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    .line 119
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 114
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->trackCount:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 119
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0

    .line 115
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isExplicity()Z
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->explicit:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->explicit:Ljava/lang/String;

    const-string v1, "01"

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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->seedType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->artistId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->artistName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->trackId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->trackTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->trackCount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->providerType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->score:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->seedUsable:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->explicit:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    return-void
.end method
