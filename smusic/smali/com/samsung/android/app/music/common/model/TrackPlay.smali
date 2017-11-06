.class public Lcom/samsung/android/app/music/common/model/TrackPlay;
.super Ljava/lang/Object;
.source "TrackPlay.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/TrackPlay;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private country:Ljava/lang/String;

.field private endDate:Ljava/lang/String;

.field private events:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/AdjustmentEvent;",
            ">;"
        }
    .end annotation
.end field

.field private orderId:Ljava/lang/String;

.field private playType:Ljava/lang/String;

.field private playedFromType:Ljava/lang/String;

.field private settlementExt:Ljava/lang/String;

.field private startDate:Ljava/lang/String;

.field private stationId:Ljava/lang/String;

.field private trackId:Ljava/lang/String;

.field private userTier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/samsung/android/app/music/common/model/TrackPlay$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/TrackPlay$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/TrackPlay;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->trackId:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->stationId:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->settlementExt:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->country:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->startDate:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->endDate:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->playedFromType:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->playType:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->userTier:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->orderId:Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/samsung/android/app/music/common/model/AdjustmentEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->events:Ljava/util/ArrayList;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "stationId"    # Ljava/lang/String;
    .param p3, "settlementExt"    # Ljava/lang/String;
    .param p4, "startDate"    # Ljava/lang/String;
    .param p5, "endDate"    # Ljava/lang/String;
    .param p6, "country"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->trackId:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->stationId:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->settlementExt:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->startDate:Ljava/lang/String;

    .line 40
    iput-object p5, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->endDate:Ljava/lang/String;

    .line 41
    iput-object p6, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->country:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getEndDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->endDate:Ljava/lang/String;

    return-object v0
.end method

.method public getEvents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/AdjustmentEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->events:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->playType:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayedFromType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->playedFromType:Ljava/lang/String;

    return-object v0
.end method

.method public getSettlementExt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->settlementExt:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->startDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserTier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->userTier:Ljava/lang/String;

    return-object v0
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->country:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setEndDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "endDate"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->endDate:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setEvents(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/AdjustmentEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/AdjustmentEvent;>;"
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->events:Ljava/util/ArrayList;

    .line 120
    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderId"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->orderId:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setPlayType(Ljava/lang/String;)V
    .locals 0
    .param p1, "playType"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->playType:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setPlayedFromType(Ljava/lang/String;)V
    .locals 0
    .param p1, "playedFromType"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->playedFromType:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setSettlementExt(Ljava/lang/String;)V
    .locals 0
    .param p1, "settlementExt"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->settlementExt:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setStartDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "startDate"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->startDate:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setStationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->stationId:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setTrackId(Ljava/lang/String;)V
    .locals 0
    .param p1, "trackId"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->trackId:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setUserTier(Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->userTier:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->trackId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->stationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->settlementExt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->country:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->startDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->endDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->playedFromType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->playType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->userTier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->orderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/TrackPlay;->events:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 172
    return-void
.end method
