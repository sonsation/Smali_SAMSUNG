.class public Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextSLocationCoreAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$1;,
        Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemContextSLocationCoreAttribute"


# instance fields
.field private mAccuracy:I

.field private mAction:I

.field private mBatchingSize:I

.field private mFenceId:I

.field private mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;

.field private mLatitude:D

.field private mLocation:Landroid/location/Location;

.field private mLongitude:D

.field private mMinDistance:I

.field private mMinTime:I

.field private mMode:I

.field private mRadius:I

.field private mRequestId:I

.field private mStatus:I

.field private mSuccessGpsCnt:I

.field private mTimeStamp:J

.field private mTotalGpsCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 35
    return-void
.end method

.method constructor <init>()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    .line 57
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    .line 58
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    .line 59
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    .line 60
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mStatus:I

    .line 61
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 62
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 63
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinDistance:I

    .line 64
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinTime:I

    .line 65
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAccuracy:I

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTimeStamp:J

    .line 67
    iput-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    .line 68
    iput-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    .line 69
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRequestId:I

    .line 70
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mBatchingSize:I

    .line 71
    iput-object v3, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;

    .line 72
    iput-object v3, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLocation:Landroid/location/Location;

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->setAttribute()V

    .line 77
    return-void
.end method

.method public constructor <init>(II)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "action"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 121
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    .line 57
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    .line 58
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    .line 59
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    .line 60
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mStatus:I

    .line 61
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 62
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 63
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinDistance:I

    .line 64
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinTime:I

    .line 65
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAccuracy:I

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTimeStamp:J

    .line 67
    iput-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    .line 68
    iput-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    .line 69
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRequestId:I

    .line 70
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mBatchingSize:I

    .line 71
    iput-object v3, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;

    .line 72
    iput-object v3, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLocation:Landroid/location/Location;

    .line 122
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    .line 123
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    .line 124
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->setAttribute()V

    .line 121
    return-void
.end method

.method public constructor <init>(IIDDIJ)V
    .locals 7
    .param p1, "mode"    # I
    .param p2, "action"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "accuracy"    # I
    .param p8, "timestamp"    # J

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 270
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    .line 57
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    .line 58
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    .line 59
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    .line 60
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mStatus:I

    .line 61
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 62
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 63
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinDistance:I

    .line 64
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinTime:I

    .line 65
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAccuracy:I

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTimeStamp:J

    .line 67
    iput-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    .line 68
    iput-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    .line 69
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRequestId:I

    .line 70
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mBatchingSize:I

    .line 71
    iput-object v3, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;

    .line 72
    iput-object v3, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLocation:Landroid/location/Location;

    .line 271
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    .line 272
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    .line 273
    iput-wide p3, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    .line 274
    iput-wide p5, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    .line 275
    iput p7, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAccuracy:I

    .line 276
    iput-wide p8, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTimeStamp:J

    .line 277
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->setAttribute()V

    .line 270
    return-void
.end method

.method public constructor <init>(III)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "action"    # I
    .param p3, "val"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 185
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    .line 57
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    .line 58
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    .line 59
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    .line 60
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mStatus:I

    .line 61
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 62
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 63
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinDistance:I

    .line 64
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinTime:I

    .line 65
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAccuracy:I

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTimeStamp:J

    .line 67
    iput-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    .line 68
    iput-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    .line 69
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRequestId:I

    .line 70
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mBatchingSize:I

    .line 71
    iput-object v3, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;

    .line 72
    iput-object v3, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLocation:Landroid/location/Location;

    .line 186
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    .line 187
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    .line 188
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    if-nez v0, :cond_1

    .line 189
    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    .line 197
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->setAttribute()V

    .line 185
    return-void

    .line 190
    :cond_1
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 191
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2

    .line 192
    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRequestId:I

    goto :goto_0

    .line 193
    :cond_2
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 194
    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mBatchingSize:I

    goto :goto_0
.end method

.method public constructor <init>(IIIDDIII)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "action"    # I
    .param p3, "fence_id"    # I
    .param p4, "latitude"    # D
    .param p6, "longitude"    # D
    .param p8, "radius"    # I
    .param p9, "total_gps_cnt"    # I
    .param p10, "success_gps_cnt"    # I

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mStatus:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinDistance:I

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinTime:I

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAccuracy:I

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTimeStamp:J

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRequestId:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mBatchingSize:I

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLocation:Landroid/location/Location;

    .line 151
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    .line 152
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    .line 153
    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    .line 154
    iput p8, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    .line 155
    iput p9, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 156
    iput p10, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 157
    iput-wide p4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    .line 158
    iput-wide p6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    .line 159
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->setAttribute()V

    .line 150
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "action"    # I
    .param p3, "min_distance"    # I
    .param p4, "min_time"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 243
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    .line 57
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    .line 58
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    .line 59
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    .line 60
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mStatus:I

    .line 61
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 62
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 63
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinDistance:I

    .line 64
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinTime:I

    .line 65
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAccuracy:I

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTimeStamp:J

    .line 67
    iput-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    .line 68
    iput-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    .line 69
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRequestId:I

    .line 70
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mBatchingSize:I

    .line 71
    iput-object v3, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;

    .line 72
    iput-object v3, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLocation:Landroid/location/Location;

    .line 244
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    .line 245
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    .line 246
    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinDistance:I

    .line 247
    iput p4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinTime:I

    .line 248
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->setAttribute()V

    .line 243
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "action"    # I
    .param p3, "fence_id"    # I
    .param p4, "radius"    # I
    .param p5, "status"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 217
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    .line 57
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    .line 58
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    .line 59
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    .line 60
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mStatus:I

    .line 61
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 62
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 63
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinDistance:I

    .line 64
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinTime:I

    .line 65
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAccuracy:I

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTimeStamp:J

    .line 67
    iput-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    .line 68
    iput-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    .line 69
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRequestId:I

    .line 70
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mBatchingSize:I

    .line 71
    iput-object v3, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;

    .line 72
    iput-object v3, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLocation:Landroid/location/Location;

    .line 218
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    .line 219
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    .line 220
    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    .line 221
    iput p4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    .line 222
    iput p5, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mStatus:I

    .line 223
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->setAttribute()V

    .line 217
    return-void
.end method

.method public constructor <init>(IIIJIIDF)V
    .locals 10
    .param p1, "mode"    # I
    .param p2, "action"    # I
    .param p3, "request_id"    # I
    .param p4, "period"    # J
    .param p6, "source"    # I
    .param p7, "flags"    # I
    .param p8, "max_power"    # D
    .param p10, "distance_thrs"    # F

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mStatus:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinDistance:I

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinTime:I

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAccuracy:I

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTimeStamp:J

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRequestId:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mBatchingSize:I

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLocation:Landroid/location/Location;

    .line 306
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    .line 307
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    .line 308
    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRequestId:I

    .line 309
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;

    move-object v1, p0

    move-wide v2, p4

    move/from16 v4, p6

    move/from16 v5, p7

    move-wide/from16 v6, p8

    move/from16 v8, p10

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;-><init>(Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;JIIDF)V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;

    .line 310
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->setAttribute()V

    .line 305
    return-void
.end method

.method public constructor <init>(IILandroid/location/Location;)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "action"    # I
    .param p3, "location"    # Landroid/location/Location;

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 329
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    .line 57
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    .line 58
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    .line 59
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    .line 60
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mStatus:I

    .line 61
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 62
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 63
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinDistance:I

    .line 64
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinTime:I

    .line 65
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAccuracy:I

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTimeStamp:J

    .line 67
    iput-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    .line 68
    iput-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    .line 69
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRequestId:I

    .line 70
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mBatchingSize:I

    .line 71
    iput-object v3, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;

    .line 72
    iput-object v3, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLocation:Landroid/location/Location;

    .line 330
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    .line 331
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    .line 332
    iput-object p3, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLocation:Landroid/location/Location;

    .line 333
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->setAttribute()V

    .line 329
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 85
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 56
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    .line 57
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    .line 58
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    .line 59
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    .line 60
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mStatus:I

    .line 61
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTotalGpsCnt:I

    .line 62
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 63
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinDistance:I

    .line 64
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinTime:I

    .line 65
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAccuracy:I

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTimeStamp:J

    .line 67
    iput-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    .line 68
    iput-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    .line 69
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRequestId:I

    .line 70
    iput v2, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mBatchingSize:I

    .line 71
    iput-object v3, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;

    .line 72
    iput-object v3, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLocation:Landroid/location/Location;

    .line 84
    return-void
.end method

.method private setAttribute()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 448
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 450
    .local v0, "attribute":Landroid/os/Bundle;
    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    packed-switch v6, :pswitch_data_0

    .line 546
    :goto_0
    :pswitch_0
    const-string/jumbo v6, "Mode"

    iget v7, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    invoke-virtual {v0, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 547
    const-string/jumbo v6, "Action"

    iget v7, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    invoke-virtual {v0, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 548
    const-string/jumbo v6, "SemContextSLocationCoreAttribute"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setAttribute() mode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "Mode"

    invoke-virtual {v0, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " action : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "Action"

    invoke-virtual {v0, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const/16 v6, 0x2f

    invoke-super {p0, v6, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 442
    return-void

    .line 452
    :pswitch_1
    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    if-ne v6, v8, :cond_0

    .line 453
    new-array v1, v10, [D

    .line 454
    .local v1, "doubleType":[D
    const/4 v6, 0x4

    new-array v3, v6, [I

    .line 455
    .local v3, "intType":[I
    iget-wide v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    aput-wide v6, v1, v9

    .line 456
    iget-wide v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    aput-wide v6, v1, v8

    .line 457
    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    aput v6, v3, v9

    .line 458
    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    aput v6, v3, v8

    .line 459
    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTotalGpsCnt:I

    aput v6, v3, v10

    .line 460
    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    aput v6, v3, v11

    .line 461
    const-string/jumbo v6, "IntType"

    invoke-virtual {v0, v6, v3}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 462
    const-string/jumbo v6, "DoubleType"

    invoke-virtual {v0, v6, v1}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_0

    .line 463
    .end local v1    # "doubleType":[D
    .end local v3    # "intType":[I
    :cond_0
    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    if-ne v6, v10, :cond_1

    .line 464
    new-array v3, v8, [I

    .line 465
    .restart local v3    # "intType":[I
    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    aput v6, v3, v9

    .line 466
    const-string/jumbo v6, "IntType"

    invoke-virtual {v0, v6, v3}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 467
    .end local v3    # "intType":[I
    :cond_1
    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_2

    .line 468
    new-array v3, v11, [I

    .line 469
    .restart local v3    # "intType":[I
    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    aput v6, v3, v9

    .line 470
    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    aput v6, v3, v8

    .line 471
    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mStatus:I

    aput v6, v3, v10

    .line 472
    const-string/jumbo v6, "IntType"

    invoke-virtual {v0, v6, v3}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 473
    .end local v3    # "intType":[I
    :cond_2
    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    const/16 v7, 0x9

    if-ne v6, v7, :cond_3

    .line 474
    new-array v3, v10, [I

    .line 475
    .restart local v3    # "intType":[I
    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinDistance:I

    aput v6, v3, v9

    .line 476
    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinTime:I

    aput v6, v3, v8

    .line 477
    const-string/jumbo v6, "IntType"

    invoke-virtual {v0, v6, v3}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 479
    .end local v3    # "intType":[I
    :cond_3
    const-string/jumbo v6, "SemContextSLocationCoreAttribute"

    const-string/jumbo v7, "This Type is default attribute type"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 483
    :pswitch_2
    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_4

    .line 484
    new-array v1, v10, [D

    .line 485
    .restart local v1    # "doubleType":[D
    new-array v3, v8, [I

    .line 486
    .restart local v3    # "intType":[I
    new-array v4, v8, [J

    .line 487
    .local v4, "longType":[J
    iget-wide v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    aput-wide v6, v1, v9

    .line 488
    iget-wide v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    aput-wide v6, v1, v8

    .line 489
    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAccuracy:I

    aput v6, v3, v9

    .line 490
    iget-wide v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTimeStamp:J

    aput-wide v6, v4, v9

    .line 491
    const-string/jumbo v6, "DoubleType"

    invoke-virtual {v0, v6, v1}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 492
    const-string/jumbo v6, "IntType"

    invoke-virtual {v0, v6, v3}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 493
    const-string/jumbo v6, "LongType"

    invoke-virtual {v0, v6, v4}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    goto/16 :goto_0

    .line 495
    .end local v1    # "doubleType":[D
    .end local v3    # "intType":[I
    .end local v4    # "longType":[J
    :cond_4
    const-string/jumbo v6, "SemContextSLocationCoreAttribute"

    const-string/jumbo v7, "This Type is default attribute type"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 499
    :pswitch_3
    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    const/16 v7, 0x10

    if-eq v6, v7, :cond_5

    .line 500
    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    const/16 v7, 0x11

    if-ne v6, v7, :cond_6

    .line 501
    :cond_5
    new-array v3, v11, [I

    .line 502
    .restart local v3    # "intType":[I
    new-array v4, v8, [J

    .line 503
    .restart local v4    # "longType":[J
    new-array v1, v8, [D

    .line 504
    .restart local v1    # "doubleType":[D
    new-array v2, v8, [F

    .line 505
    .local v2, "floatType":[F
    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRequestId:I

    aput v6, v3, v9

    .line 506
    iget-object v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;

    iget v6, v6, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;->user_info:I

    aput v6, v3, v8

    .line 507
    iget-object v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;

    iget v6, v6, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;->flags:I

    aput v6, v3, v10

    .line 508
    iget-object v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;

    iget-wide v6, v6, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;->period:J

    aput-wide v6, v4, v9

    .line 509
    iget-object v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;

    iget-wide v6, v6, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;->max_power:D

    aput-wide v6, v1, v9

    .line 510
    iget-object v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;

    iget v6, v6, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;->distance_thrs:F

    aput v6, v2, v9

    .line 511
    const-string/jumbo v6, "IntType"

    invoke-virtual {v0, v6, v3}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 512
    const-string/jumbo v6, "LongType"

    invoke-virtual {v0, v6, v4}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    .line 513
    const-string/jumbo v6, "DoubleType"

    invoke-virtual {v0, v6, v1}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 514
    const-string/jumbo v6, "FloatType"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    goto/16 :goto_0

    .line 515
    .end local v1    # "doubleType":[D
    .end local v2    # "floatType":[F
    .end local v3    # "intType":[I
    .end local v4    # "longType":[J
    :cond_6
    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    const/16 v7, 0x12

    if-ne v6, v7, :cond_7

    .line 516
    new-array v3, v8, [I

    .line 517
    .restart local v3    # "intType":[I
    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRequestId:I

    aput v6, v3, v9

    .line 518
    const-string/jumbo v6, "IntType"

    invoke-virtual {v0, v6, v3}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 519
    .end local v3    # "intType":[I
    :cond_7
    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    const/16 v7, 0x13

    if-ne v6, v7, :cond_8

    .line 520
    new-array v3, v8, [I

    .line 521
    .restart local v3    # "intType":[I
    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mBatchingSize:I

    aput v6, v3, v9

    .line 522
    const-string/jumbo v6, "IntType"

    invoke-virtual {v0, v6, v3}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 523
    .end local v3    # "intType":[I
    :cond_8
    iget v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    const/16 v7, 0x15

    if-ne v6, v7, :cond_9

    .line 524
    new-array v4, v8, [J

    .line 525
    .restart local v4    # "longType":[J
    new-array v1, v11, [D

    .line 526
    .restart local v1    # "doubleType":[D
    new-array v2, v11, [F

    .line 527
    .restart local v2    # "floatType":[F
    iget-object v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v5

    .line 528
    .local v5, "stringType":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    aput-wide v6, v4, v9

    .line 529
    iget-object v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    aput-wide v6, v1, v9

    .line 530
    iget-object v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    aput-wide v6, v1, v8

    .line 531
    iget-object v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    aput-wide v6, v1, v10

    .line 532
    iget-object v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getSpeed()F

    move-result v6

    aput v6, v2, v9

    .line 533
    iget-object v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getBearing()F

    move-result v6

    aput v6, v2, v8

    .line 534
    iget-object v6, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    aput v6, v2, v10

    .line 535
    const-string/jumbo v6, "StringType"

    invoke-virtual {v0, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string/jumbo v6, "IntType"

    invoke-virtual {v0, v6, v4}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    .line 537
    const-string/jumbo v6, "DoubleType"

    invoke-virtual {v0, v6, v1}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 538
    const-string/jumbo v6, "FloatType"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    goto/16 :goto_0

    .line 540
    .end local v1    # "doubleType":[D
    .end local v2    # "floatType":[F
    .end local v4    # "longType":[J
    .end local v5    # "stringType":Ljava/lang/String;
    :cond_9
    const-string/jumbo v6, "SemContextSLocationCoreAttribute"

    const-string/jumbo v7, "This Type is default attribute type"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 450
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 6

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x3

    const/4 v5, 0x1

    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 341
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    if-lt v0, v1, :cond_0

    .line 342
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    if-le v0, v2, :cond_1

    .line 343
    :cond_0
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Mode value is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return v4

    .line 347
    :cond_1
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    if-nez v0, :cond_3

    .line 348
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    if-lt v0, v1, :cond_2

    .line 349
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_9

    .line 350
    :cond_2
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Action value is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return v4

    .line 353
    :cond_3
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    if-ne v0, v5, :cond_5

    .line 354
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    if-lt v0, v1, :cond_4

    .line 355
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_9

    .line 356
    :cond_4
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Action value is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return v4

    .line 359
    :cond_5
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMode:I

    if-ne v0, v2, :cond_9

    .line 360
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    if-lt v0, v3, :cond_6

    .line 361
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_7

    .line 362
    :cond_6
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Action value is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return v4

    .line 365
    :cond_7
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    if-eq v0, v3, :cond_8

    .line 366
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAction:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_9

    .line 367
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFusedBatchOption:Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute$FusedBatchOption;->isValid()Z

    move-result v0

    if-nez v0, :cond_9

    .line 368
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "FusedBatchOption is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return v4

    .line 374
    :cond_9
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mFenceId:I

    if-gez v0, :cond_a

    .line 375
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "FenceID is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return v4

    .line 379
    :cond_a
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRadius:I

    if-gez v0, :cond_b

    .line 380
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Radius is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return v4

    .line 384
    :cond_b
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mStatus:I

    if-gez v0, :cond_c

    .line 385
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Status is wrong!1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return v4

    .line 389
    :cond_c
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTotalGpsCnt:I

    if-gez v0, :cond_d

    .line 390
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "TotalGpsCount is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return v4

    .line 394
    :cond_d
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mSuccessGpsCnt:I

    if-gez v0, :cond_e

    .line 395
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Success gps count is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return v4

    .line 399
    :cond_e
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinDistance:I

    if-gez v0, :cond_f

    .line 400
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Minimum distance is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return v4

    .line 404
    :cond_f
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mMinTime:I

    if-gez v0, :cond_10

    .line 405
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Minimum time is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return v4

    .line 409
    :cond_10
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mAccuracy:I

    if-gez v0, :cond_11

    .line 410
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Accuracy is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return v4

    .line 414
    :cond_11
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mTimeStamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_12

    .line 415
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Timestamp is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return v4

    .line 419
    :cond_12
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_13

    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLongitude:D

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_14

    .line 420
    :cond_13
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Longitude is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    return v4

    .line 424
    :cond_14
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_15

    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mLatitude:D

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_16

    .line 425
    :cond_15
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "Latitude is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return v4

    .line 429
    :cond_16
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mRequestId:I

    if-gez v0, :cond_17

    .line 430
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "RequestId is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return v4

    .line 434
    :cond_17
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSLocationCoreAttribute;->mBatchingSize:I

    if-gez v0, :cond_18

    .line 435
    const-string/jumbo v0, "SemContextSLocationCoreAttribute"

    const-string/jumbo v1, "BatchingSize is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    return v4

    .line 439
    :cond_18
    return v5
.end method
