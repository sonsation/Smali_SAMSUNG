.class public Lcom/samsung/android/library/beaconmanager/BleScanFilter;
.super Ljava/lang/Object;
.source "BleScanFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/library/beaconmanager/BleScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static RSSI_THRESHOLD_NONE:I = 0x0

.field public static SCAN_INTERVAL_LOW_LATENCY:I = 0x0

.field public static SCAN_INTERVAL_LOW_POWER:I = 0x0

.field public static SCAN_INTERVAL_NORMAL:I = 0x0

.field public static final SCREEN_OFF_FILTER_FLAG:I = 0x2

.field public static final SCREEN_ON_FILTER_FLAG:I = 0x1


# instance fields
.field private mName:Ljava/lang/String;

.field private mRssiThreshold:I

.field private mScanInterval:I

.field private mScreenOffFilter:Landroid/bluetooth/le/ScanFilter;

.field private mScreenOnFilter:Landroid/bluetooth/le/ScanFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->SCAN_INTERVAL_LOW_POWER:I

    .line 16
    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->SCAN_INTERVAL_NORMAL:I

    .line 18
    const/4 v0, 0x3

    sput v0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->SCAN_INTERVAL_LOW_LATENCY:I

    .line 20
    new-instance v0, Lcom/samsung/android/library/beaconmanager/BleScanFilter$1;

    invoke-direct {v0}, Lcom/samsung/android/library/beaconmanager/BleScanFilter$1;-><init>()V

    sput-object v0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    const/16 v0, -0x3e7

    sput v0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->RSSI_THRESHOLD_NONE:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget v1, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->SCAN_INTERVAL_NORMAL:I

    iput v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScanInterval:I

    .line 36
    sget v1, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->RSSI_THRESHOLD_NONE:I

    iput v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mRssiThreshold:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mName:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 68
    .local v0, "filter":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 69
    sget-object v1, Landroid/bluetooth/le/ScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/ScanFilter;

    iput-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOnFilter:Landroid/bluetooth/le/ScanFilter;

    .line 71
    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 72
    sget-object v1, Landroid/bluetooth/le/ScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/ScanFilter;

    iput-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOffFilter:Landroid/bluetooth/le/ScanFilter;

    .line 74
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScanInterval:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mRssiThreshold:I

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/bluetooth/le/ScanFilter;Landroid/bluetooth/le/ScanFilter;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "screenOnFilter"    # Landroid/bluetooth/le/ScanFilter;
    .param p3, "screenOffFilter"    # Landroid/bluetooth/le/ScanFilter;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget v0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->SCAN_INTERVAL_NORMAL:I

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScanInterval:I

    .line 36
    sget v0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->RSSI_THRESHOLD_NONE:I

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mRssiThreshold:I

    .line 57
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mName:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOnFilter:Landroid/bluetooth/le/ScanFilter;

    .line 59
    iput-object p3, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOffFilter:Landroid/bluetooth/le/ScanFilter;

    .line 60
    sget v0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->SCAN_INTERVAL_NORMAL:I

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mRssiThreshold:I

    .line 61
    sget v0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->RSSI_THRESHOLD_NONE:I

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mRssiThreshold:I

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/bluetooth/le/ScanFilter;Landroid/bluetooth/le/ScanFilter;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "screenOnFilter"    # Landroid/bluetooth/le/ScanFilter;
    .param p3, "screenOffFilter"    # Landroid/bluetooth/le/ScanFilter;
    .param p4, "scanInterval"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget v0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->SCAN_INTERVAL_NORMAL:I

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScanInterval:I

    .line 36
    sget v0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->RSSI_THRESHOLD_NONE:I

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mRssiThreshold:I

    .line 49
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mName:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOnFilter:Landroid/bluetooth/le/ScanFilter;

    .line 51
    iput-object p3, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOffFilter:Landroid/bluetooth/le/ScanFilter;

    .line 52
    iput p4, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScanInterval:I

    .line 53
    sget v0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->RSSI_THRESHOLD_NONE:I

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mRssiThreshold:I

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/bluetooth/le/ScanFilter;Landroid/bluetooth/le/ScanFilter;II)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "screenOnFilter"    # Landroid/bluetooth/le/ScanFilter;
    .param p3, "screenOffFilter"    # Landroid/bluetooth/le/ScanFilter;
    .param p4, "scanInterval"    # I
    .param p5, "rssiTh"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget v0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->SCAN_INTERVAL_NORMAL:I

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScanInterval:I

    .line 36
    sget v0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->RSSI_THRESHOLD_NONE:I

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mRssiThreshold:I

    .line 40
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mName:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOnFilter:Landroid/bluetooth/le/ScanFilter;

    .line 42
    iput-object p3, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOffFilter:Landroid/bluetooth/le/ScanFilter;

    .line 43
    iput p4, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScanInterval:I

    .line 44
    iput p5, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mRssiThreshold:I

    .line 45
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 111
    instance-of v2, p1, Lcom/samsung/android/library/beaconmanager/BleScanFilter;

    if-nez v2, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 114
    check-cast v0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;

    .line 116
    .local v0, "src":Lcom/samsung/android/library/beaconmanager/BleScanFilter;
    iget-object v2, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOnFilter:Landroid/bluetooth/le/ScanFilter;

    if-nez v2, :cond_4

    .line 117
    iget-object v2, v0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOnFilter:Landroid/bluetooth/le/ScanFilter;

    if-nez v2, :cond_0

    .line 126
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOffFilter:Landroid/bluetooth/le/ScanFilter;

    if-nez v2, :cond_5

    .line 127
    iget-object v2, v0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOffFilter:Landroid/bluetooth/le/ScanFilter;

    if-nez v2, :cond_0

    .line 136
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 121
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOnFilter:Landroid/bluetooth/le/ScanFilter;

    iget-object v3, v0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOnFilter:Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v2, v3}, Landroid/bluetooth/le/ScanFilter;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 131
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOffFilter:Landroid/bluetooth/le/ScanFilter;

    iget-object v3, v0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOffFilter:Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v2, v3}, Landroid/bluetooth/le/ScanFilter;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRssiThreshold()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mRssiThreshold:I

    return v0
.end method

.method public getScanInterval()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScanInterval:I

    return v0
.end method

.method public getScreenOffFilter()Landroid/bluetooth/le/ScanFilter;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOffFilter:Landroid/bluetooth/le/ScanFilter;

    return-object v0
.end method

.method public getScreenOnFilter()Landroid/bluetooth/le/ScanFilter;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOnFilter:Landroid/bluetooth/le/ScanFilter;

    return-object v0
.end method

.method public matches(ZLandroid/bluetooth/le/ScanResult;)Z
    .locals 2
    .param p1, "isScreenOn"    # Z
    .param p2, "scanResult"    # Landroid/bluetooth/le/ScanResult;

    .prologue
    const/4 v0, 0x1

    .line 91
    if-eqz p1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOnFilter:Landroid/bluetooth/le/ScanFilter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOnFilter:Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v1, p2}, Landroid/bluetooth/le/ScanFilter;->matches(Landroid/bluetooth/le/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOffFilter:Landroid/bluetooth/le/ScanFilter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOffFilter:Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v1, p2}, Landroid/bluetooth/le/ScanFilter;->matches(Landroid/bluetooth/le/ScanResult;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 142
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "Name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    const-string v1, ",ScreenOnFilter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOnFilter:Landroid/bluetooth/le/ScanFilter;

    if-nez v1, :cond_0

    .line 145
    const-string v1, "Null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    :goto_0
    const-string v1, ",ScreenOffFilter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOffFilter:Landroid/bluetooth/le/ScanFilter;

    if-nez v1, :cond_1

    .line 151
    const-string v1, "Null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    :goto_1
    const-string v1, ",ScanInterval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScanInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 156
    const-string v1, ",Threshold:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mRssiThreshold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOnFilter:Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanFilter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOffFilter:Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanFilter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 168
    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "filter":I
    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOnFilter:Landroid/bluetooth/le/ScanFilter;

    if-eqz v1, :cond_0

    .line 172
    or-int/lit8 v0, v0, 0x1

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOffFilter:Landroid/bluetooth/le/ScanFilter;

    if-eqz v1, :cond_1

    .line 175
    or-int/lit8 v0, v0, 0x2

    .line 177
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_2

    .line 179
    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOnFilter:Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v1, p1, p2}, Landroid/bluetooth/le/ScanFilter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 181
    :cond_2
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3

    .line 182
    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOffFilter:Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v1, p1, p2}, Landroid/bluetooth/le/ScanFilter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 184
    :cond_3
    iget v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScanInterval:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mRssiThreshold:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    return-void
.end method
