.class Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;
.super Ljava/lang/Object;
.source "BluetoothControlHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ControlAppInfo"
.end annotation


# instance fields
.field private mLastEvent:I

.field private mLastEventTime:J

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lastEvent"    # I
    .param p3, "lastEventTime"    # J

    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;->mPackageName:Ljava/lang/String;

    .line 417
    iput p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;->mLastEvent:I

    .line 418
    iput-wide p3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;->mLastEventTime:J

    .line 415
    return-void
.end method


# virtual methods
.method public getLastEvent()I
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;->mLastEvent:I

    return v0
.end method

.method public getLastEventTime()J
    .locals 2

    .prologue
    .line 434
    iget-wide v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;->mLastEventTime:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;->mPackageName:Ljava/lang/String;

    return-object v0

    .line 425
    :cond_0
    const-string/jumbo v0, ""

    return-object v0
.end method
