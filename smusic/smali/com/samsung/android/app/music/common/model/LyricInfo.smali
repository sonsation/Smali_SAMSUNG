.class public Lcom/samsung/android/app/music/common/model/LyricInfo;
.super Ljava/lang/Object;
.source "LyricInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/LyricInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LyricInfo"


# instance fields
.field private isSupportSync:Z

.field private lyricUrl:Ljava/lang/String;

.field private lyrics:Ljava/lang/String;

.field private trackId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/samsung/android/app/music/common/model/LyricInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/LyricInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/LyricInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/LyricInfo;->trackId:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/LyricInfo;->lyricUrl:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/LyricInfo;->lyrics:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/model/LyricInfo;->isSupportSync:Z

    .line 35
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "lyricUrl"    # Ljava/lang/String;
    .param p3, "lyrics"    # Ljava/lang/String;
    .param p4, "isSupportSync"    # Z

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/LyricInfo;->trackId:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/LyricInfo;->lyricUrl:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/samsung/android/app/music/common/model/LyricInfo;->lyrics:Ljava/lang/String;

    .line 27
    iput-boolean p4, p0, Lcom/samsung/android/app/music/common/model/LyricInfo;->isSupportSync:Z

    .line 28
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public getLyricUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/LyricInfo;->lyricUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLyrics()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/LyricInfo;->lyrics:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/LyricInfo;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public isSupportSync()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/model/LyricInfo;->isSupportSync:Z

    return v0
.end method

.method public setLyricUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "lyricUrl"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/LyricInfo;->lyricUrl:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setLyrics(Ljava/lang/String;)V
    .locals 0
    .param p1, "lyrics"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/LyricInfo;->lyrics:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setSupportSync(Z)V
    .locals 0
    .param p1, "supportSync"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/model/LyricInfo;->isSupportSync:Z

    .line 92
    return-void
.end method

.method public setTrackId(Ljava/lang/String;)V
    .locals 0
    .param p1, "trackId"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/LyricInfo;->trackId:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/LyricInfo;->trackId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/LyricInfo;->lyricUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/LyricInfo;->lyrics:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/model/LyricInfo;->isSupportSync:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 60
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
