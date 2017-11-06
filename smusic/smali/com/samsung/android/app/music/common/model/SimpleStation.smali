.class public Lcom/samsung/android/app/music/common/model/SimpleStation;
.super Ljava/lang/Object;
.source "SimpleStation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleStation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mOrdinal:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stationNumber"
    .end annotation
.end field

.field protected mStationId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stationId"
    .end annotation
.end field

.field protected mStationName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stationTitle"
    .end annotation
.end field

.field protected mStationType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stationType"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/samsung/android/app/music/common/model/SimpleStation$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/SimpleStation$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/model/SimpleStation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleStation;->mStationId:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleStation;->mStationId:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleStation;->mStationId:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleStation;->mStationName:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleStation;->mStationType:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/model/SimpleStation;->mOrdinal:I

    .line 41
    return-void
.end method

.method public static fromStation(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/SimpleStation;
    .locals 2
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 108
    new-instance v0, Lcom/samsung/android/app/music/common/model/SimpleStation;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/SimpleStation;-><init>()V

    .line 109
    .local v0, "station":Lcom/samsung/android/app/music/common/model/SimpleStation;
    const-string/jumbo v1, "station_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/SimpleStation;->setStationId(Ljava/lang/String;)V

    .line 110
    const-string/jumbo v1, "station_station_name"

    .line 111
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/SimpleStation;->setStationName(Ljava/lang/String;)V

    .line 112
    const-string/jumbo v1, "station_type"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/SimpleStation;->setStationType(Ljava/lang/String;)V

    .line 113
    const-string/jumbo v1, "station_ordinal"

    .line 114
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 113
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/SimpleStation;->setStationOrdinal(I)V

    .line 115
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public getStationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleStation;->mStationId:Ljava/lang/String;

    return-object v0
.end method

.method public getStationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleStation;->mStationName:Ljava/lang/String;

    return-object v0
.end method

.method public getStationOrdinal()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/samsung/android/app/music/common/model/SimpleStation;->mOrdinal:I

    return v0
.end method

.method public getStationType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleStation;->mStationType:Ljava/lang/String;

    return-object v0
.end method

.method public isGenreStation()Z
    .locals 2

    .prologue
    .line 92
    const-string v0, "01"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/SimpleStation;->mStationType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPersonalStation()Z
    .locals 2

    .prologue
    .line 100
    const-string v0, "02"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/SimpleStation;->mStationType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSmartStation()Z
    .locals 2

    .prologue
    .line 104
    const-string v0, "03"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/model/SimpleStation;->mStationType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setStationId(Ljava/lang/String;)V
    .locals 0
    .param p1, "stationId"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/SimpleStation;->mStationId:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setStationName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/SimpleStation;->mStationName:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setStationOrdinal(I)V
    .locals 0
    .param p1, "ordinal"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/samsung/android/app/music/common/model/SimpleStation;->mOrdinal:I

    .line 85
    return-void
.end method

.method public setStationType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/SimpleStation;->mStationType:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleStation;->mStationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleStation;->mStationName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/SimpleStation;->mStationType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget v0, p0, Lcom/samsung/android/app/music/common/model/SimpleStation;->mOrdinal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    return-void
.end method
