.class public Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;
.super Ljava/lang/Object;
.source "LastPlayInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private modAlbumartUrl:Ljava/lang/String;

.field private modArtistName:Ljava/lang/String;

.field private modDeeplinkUrl:Ljava/lang/String;

.field private modTrackTitle:Ljava/lang/String;

.field private radioAlbumartUrl:Ljava/lang/String;

.field private radioArtistName:Ljava/lang/String;

.field private radioDeeplinkUrl:Ljava/lang/String;

.field private radioStationName:Ljava/lang/String;

.field private radiodTrackTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->modTrackTitle:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->modArtistName:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->modAlbumartUrl:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->modDeeplinkUrl:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->radioStationName:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->radiodTrackTitle:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->radioArtistName:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->radioAlbumartUrl:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->radioDeeplinkUrl:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public getModAlbumartUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->modAlbumartUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getModArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->modArtistName:Ljava/lang/String;

    return-object v0
.end method

.method public getModDeeplinkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->modDeeplinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getModTrackTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->modTrackTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioAlbumartUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->radioAlbumartUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->radioArtistName:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioDeeplinkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->radioDeeplinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioStationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->radioStationName:Ljava/lang/String;

    return-object v0
.end method

.method public getRadiodTrackTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->radiodTrackTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setModAlbumartUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "modAlbumartUrl"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->modAlbumartUrl:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setModArtistName(Ljava/lang/String;)V
    .locals 0
    .param p1, "modArtistName"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->modArtistName:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setModDeeplinkUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "modDeeplinkUrl"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->modDeeplinkUrl:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setModTrackTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "modTrackTitle"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->modTrackTitle:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setRadioAlbumartUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "radioAlbumartUrl"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->radioAlbumartUrl:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setRadioArtistName(Ljava/lang/String;)V
    .locals 0
    .param p1, "radioArtistName"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->radioArtistName:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setRadioDeeplinkUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "radioDeeplinkUrl"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->radioDeeplinkUrl:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setRadioStationName(Ljava/lang/String;)V
    .locals 0
    .param p1, "radioStationName"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->radioStationName:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setRadiodTrackTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "radiodTrackTitle"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->radiodTrackTitle:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModTrack ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->getModTrackTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->getModArtistName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->getModAlbumartUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->getModDeeplinkUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RadioTrack ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->getRadioStationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->getRadiodTrackTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->getRadioArtistName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 154
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->getRadioAlbumartUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->getRadioDeeplinkUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->modTrackTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->modArtistName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->modAlbumartUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->modDeeplinkUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->radioStationName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->radiodTrackTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->radioArtistName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->radioAlbumartUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;->radioDeeplinkUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    return-void
.end method
