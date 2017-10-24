.class public Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;
.super Ljava/lang/Object;
.source "SemCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core/SemCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraSensorData"
.end annotation


# instance fields
.field public driverResolution:S

.field public exposureTime:J

.field public exposureValue:S

.field public iso:S

.field public lensPositionCurrent:S

.field public lensPositionMax:S

.field public lensPositionMin:S


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6368
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;->exposureTime:J

    .line 6369
    iput-short v2, p0, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;->exposureValue:S

    .line 6370
    iput-short v2, p0, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;->iso:S

    .line 6371
    iput-short v2, p0, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;->lensPositionMin:S

    .line 6372
    iput-short v2, p0, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;->lensPositionMax:S

    .line 6373
    iput-short v2, p0, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;->lensPositionCurrent:S

    .line 6374
    iput-short v2, p0, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;->driverResolution:S

    .line 6367
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 6381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6382
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;->exposureTime:J

    .line 6383
    const/4 v0, 0x4

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x5

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;->exposureValue:S

    .line 6384
    const/4 v0, 0x6

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x7

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;->iso:S

    .line 6385
    const/16 v0, 0x8

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x9

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;->lensPositionMin:S

    .line 6386
    const/16 v0, 0xa

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xb

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;->lensPositionMax:S

    .line 6387
    const/16 v0, 0xc

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xd

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;->lensPositionCurrent:S

    .line 6388
    const/16 v0, 0xe

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xf

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;->driverResolution:S

    .line 6381
    return-void
.end method
