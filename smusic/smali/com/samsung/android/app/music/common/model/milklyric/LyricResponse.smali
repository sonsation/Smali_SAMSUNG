.class public Lcom/samsung/android/app/music/common/model/milklyric/LyricResponse;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "LyricResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milklyric/LyricResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LyricResponse"


# instance fields
.field private lyrics:Ljava/lang/String;

.field private totalTime:Ljava/lang/String;

.field private trackId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/samsung/android/app/music/common/model/milklyric/LyricResponse$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milklyric/LyricResponse$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milklyric/LyricResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milklyric/LyricResponse;->totalTime:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milklyric/LyricResponse;->trackId:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milklyric/LyricResponse;->lyrics:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "totalTime"    # Ljava/lang/String;
    .param p2, "trackId"    # Ljava/lang/String;
    .param p3, "lyrics"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milklyric/LyricResponse;->totalTime:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/milklyric/LyricResponse;->trackId:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/samsung/android/app/music/common/model/milklyric/LyricResponse;->lyrics:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public getDecodedLyrics()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 71
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/milklyric/LyricResponse;->lyrics:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-object v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 75
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/model/milklyric/LyricResponse;->lyrics:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public getLyrics()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milklyric/LyricResponse;->lyrics:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milklyric/LyricResponse;->totalTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milklyric/LyricResponse;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public setLyrics(Ljava/lang/String;)V
    .locals 0
    .param p1, "lyrics"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milklyric/LyricResponse;->lyrics:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setTotalTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "totalTime"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milklyric/LyricResponse;->totalTime:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setTrackId(Ljava/lang/String;)V
    .locals 0
    .param p1, "trackId"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milklyric/LyricResponse;->trackId:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milklyric/LyricResponse;->totalTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milklyric/LyricResponse;->trackId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milklyric/LyricResponse;->lyrics:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return-void
.end method
