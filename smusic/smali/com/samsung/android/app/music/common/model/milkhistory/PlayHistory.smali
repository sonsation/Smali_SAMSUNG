.class public Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "PlayHistory.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private albumArtUrl:Ljava/lang/String;

.field private mDateStamp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dateStamp"
    .end annotation
.end field

.field private mPlayLength:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playLength"
    .end annotation
.end field

.field private mReportType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reportType"
    .end annotation
.end field

.field private mStationInfo:Lcom/samsung/android/app/music/common/model/SimpleStation;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stationInfo"
    .end annotation
.end field

.field private mTrack:Lcom/samsung/android/app/music/common/model/SimpleTrack;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trackInfo"
    .end annotation
.end field

.field private mTrackId:Ljava/lang/String;

.field private stationId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>()V

    .line 26
    const-string v0, "01"

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->mReportType:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>()V

    .line 26
    const-string v0, "01"

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->mReportType:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->mReportType:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->mPlayLength:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->mTrackId:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->mDateStamp:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->albumArtUrl:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->stationId:Ljava/lang/String;

    .line 66
    const-class v0, Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/SimpleStation;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->mStationInfo:Lcom/samsung/android/app/music/common/model/SimpleStation;

    .line 67
    const-class v0, Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->mTrack:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 68
    return-void
.end method

.method public static convertToPlayHistory(Landroid/content/ContentValues;J)Landroid/content/ContentValues;
    .locals 7
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "rowAudioId"    # J

    .prologue
    .line 165
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 166
    .local v1, "newValues":Landroid/content/ContentValues;
    const-string v2, "audio_id"

    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-lez v3, :cond_0

    .end local p1    # "rowAudioId":J
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 167
    const-string/jumbo v2, "track_id"

    const-string/jumbo v3, "source_id"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string/jumbo v2, "station_id"

    const-string/jumbo v3, "station_id"

    .line 169
    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string/jumbo v2, "station_name"

    const-string/jumbo v3, "station_name"

    .line 171
    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 170
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string/jumbo v2, "station_type"

    const-string/jumbo v3, "station_type"

    .line 173
    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 172
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string/jumbo v2, "station_ordinal"

    const-string/jumbo v3, "station_ordinal"

    .line 175
    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string/jumbo v2, "play_length"

    const-string/jumbo v3, "play_length"

    .line 177
    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v2, "date"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "date":Ljava/lang/String;
    const-string v2, "date"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v2, "date_locale"

    invoke-static {v0}, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->convertUtcToLocalTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v2, "date_long"

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->convertDateMillis(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 182
    const-string v2, "explicit"

    const-string v3, "explicit"

    .line 183
    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 182
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-object v1

    .line 166
    .end local v0    # "date":Ljava/lang/String;
    .restart local p1    # "rowAudioId":J
    :cond_0
    const-wide/16 p1, -0x1

    goto/16 :goto_0
.end method

.method public static convertUtcToLocalTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    .line 188
    if-nez p0, :cond_0

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->convertUtcToString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "localTime":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 190
    .end local v0    # "localTime":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->convertUTCToLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->convertShortString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static createPlayEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "stationId"    # Ljava/lang/String;
    .param p3, "dateStamp"    # Ljava/lang/String;

    .prologue
    .line 144
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;-><init>()V

    .line 145
    .local v0, "event":Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$StationTracks;->getSimpleTrack(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->mTrack:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 146
    invoke-static {p0, p2}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Station;->getSimpleStation(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/SimpleStation;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->mStationInfo:Lcom/samsung/android/app/music/common/model/SimpleStation;

    .line 147
    iput-object p3, v0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->mDateStamp:Ljava/lang/String;

    .line 148
    const v1, 0xea60

    iput v1, v0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->mPlayLength:I

    .line 149
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public getDateStamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->mDateStamp:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayLength()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->mPlayLength:I

    return v0
.end method

.method public getStation()Lcom/samsung/android/app/music/common/model/SimpleStation;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->mStationInfo:Lcom/samsung/android/app/music/common/model/SimpleStation;

    return-object v0
.end method

.method public getStationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->mStationInfo:Lcom/samsung/android/app/music/common/model/SimpleStation;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->mStationInfo:Lcom/samsung/android/app/music/common/model/SimpleStation;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/SimpleStation;->getStationId()Ljava/lang/String;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTrack()Lcom/samsung/android/app/music/common/model/SimpleTrack;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->mTrack:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    return-object v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->mTrackId:Ljava/lang/String;

    return-object v0
.end method

.method public setDateStamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "dateStamp"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->mDateStamp:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setStationId(Ljava/lang/String;)V
    .locals 1
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->mStationInfo:Lcom/samsung/android/app/music/common/model/SimpleStation;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/samsung/android/app/music/common/model/SimpleStation;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/SimpleStation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->mStationInfo:Lcom/samsung/android/app/music/common/model/SimpleStation;

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->stationId:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->mStationInfo:Lcom/samsung/android/app/music/common/model/SimpleStation;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/model/SimpleStation;->setStationId(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public setTrackId(Ljava/lang/String;)V
    .locals 0
    .param p1, "trackId"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->mTrackId:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->getTrack()Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 154
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "station_id"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->getStationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string/jumbo v1, "station_name"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->getStation()Lcom/samsung/android/app/music/common/model/SimpleStation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/SimpleStation;->getStationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string/jumbo v1, "station_type"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->getStation()Lcom/samsung/android/app/music/common/model/SimpleStation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/SimpleStation;->getStationType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string/jumbo v1, "station_ordinal"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->getStation()Lcom/samsung/android/app/music/common/model/SimpleStation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/SimpleStation;->getStationOrdinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    const-string/jumbo v1, "play_length"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->getPlayLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    const-string v1, "date"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->getDateStamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v1, "explicit"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->getTrack()Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getExplicit()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->mReportType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget v0, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->mPlayLength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->mTrackId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->mDateStamp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->albumArtUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->stationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->mStationInfo:Lcom/samsung/android/app/music/common/model/SimpleStation;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkhistory/PlayHistory;->mTrack:Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 80
    return-void
.end method
