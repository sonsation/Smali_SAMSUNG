.class public Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextLocationCoreAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemContextLocationCoreAttribute"


# instance fields
.field private mAccuracy:I

.field private mAction:I

.field private mFenceId:I

.field private mLatitude:D

.field private mLongitude:D

.field private mMinDistance:I

.field private mMinTime:I

.field private mMode:I

.field private mRadius:I

.field private mStatus:I

.field private mSuccessGpsCnt:I

.field private mTimeStamp:J

.field private mTotalGpsCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 34
    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 55
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    .line 56
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    .line 57
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    .line 58
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    .line 59
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    .line 60
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    .line 61
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 62
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    .line 63
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    .line 64
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    .line 66
    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    .line 67
    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    .line 74
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->setAttribute()V

    .line 73
    return-void
.end method

.method public constructor <init>(II)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "action"    # I

    .prologue
    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 55
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    .line 56
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    .line 57
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    .line 58
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    .line 59
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    .line 60
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    .line 61
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 62
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    .line 63
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    .line 64
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    .line 66
    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    .line 67
    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    .line 108
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    .line 109
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    .line 110
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->setAttribute()V

    .line 107
    return-void
.end method

.method public constructor <init>(IIDDIJ)V
    .locals 5
    .param p1, "mode"    # I
    .param p2, "action"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "accuracy"    # I
    .param p8, "timestamp"    # J

    .prologue
    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 237
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 55
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    .line 56
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    .line 57
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    .line 58
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    .line 59
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    .line 60
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    .line 61
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 62
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    .line 63
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    .line 64
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    .line 66
    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    .line 67
    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    .line 238
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    .line 239
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    .line 240
    iput-wide p3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    .line 241
    iput-wide p5, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    .line 242
    iput p7, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    .line 243
    iput-wide p8, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    .line 244
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->setAttribute()V

    .line 237
    return-void
.end method

.method public constructor <init>(III)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "action"    # I
    .param p3, "fence_id"    # I

    .prologue
    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 162
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 55
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    .line 56
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    .line 57
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    .line 58
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    .line 59
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    .line 60
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    .line 61
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 62
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    .line 63
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    .line 64
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    .line 66
    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    .line 67
    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    .line 163
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    .line 164
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    .line 165
    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    .line 166
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->setAttribute()V

    .line 162
    return-void
.end method

.method public constructor <init>(IIIDDIII)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "action"    # I
    .param p3, "fence_id"    # I
    .param p4, "latitude"    # D
    .param p6, "longitude"    # D
    .param p8, "radius"    # I
    .param p9, "total_gps_cnt"    # I
    .param p10, "success_gps_cnt"    # I

    .prologue
    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 55
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    .line 56
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    .line 57
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    .line 58
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    .line 59
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    .line 60
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    .line 61
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 62
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    .line 63
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    .line 64
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    .line 66
    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    .line 67
    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    .line 136
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    .line 137
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    .line 138
    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    .line 139
    iput p8, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    .line 140
    iput p9, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    .line 141
    iput p10, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 142
    iput-wide p4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    .line 143
    iput-wide p6, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    .line 144
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->setAttribute()V

    .line 135
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "action"    # I
    .param p3, "min_distance"    # I
    .param p4, "min_time"    # I

    .prologue
    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 210
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 55
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    .line 56
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    .line 57
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    .line 58
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    .line 59
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    .line 60
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    .line 61
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 62
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    .line 63
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    .line 64
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    .line 66
    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    .line 67
    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    .line 211
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    .line 212
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    .line 213
    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    .line 214
    iput p4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    .line 215
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->setAttribute()V

    .line 210
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "action"    # I
    .param p3, "fence_id"    # I
    .param p4, "radius"    # I
    .param p5, "status"    # I

    .prologue
    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 185
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 55
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    .line 56
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    .line 57
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    .line 58
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    .line 59
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    .line 60
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    .line 61
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 62
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    .line 63
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    .line 64
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    .line 66
    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    .line 67
    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    .line 186
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    .line 187
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    .line 188
    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    .line 189
    iput p4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    .line 190
    iput p5, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    .line 191
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->setAttribute()V

    .line 185
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 55
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    .line 56
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    .line 57
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    .line 58
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    .line 59
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    .line 60
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    .line 61
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    .line 62
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    .line 63
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    .line 64
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    .line 66
    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    .line 67
    iput-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    .line 81
    return-void
.end method

.method private setAttribute()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 334
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 336
    .local v0, "attribute":Landroid/os/Bundle;
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    packed-switch v4, :pswitch_data_0

    .line 387
    :goto_0
    const-string/jumbo v4, "Mode"

    iget v5, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    invoke-virtual {v0, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 388
    const-string/jumbo v4, "Action"

    iget v5, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    invoke-virtual {v0, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 389
    const-string/jumbo v4, "SemContextLocationCoreAttribute"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setAttribute() mode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "Mode"

    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "Action"

    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/16 v4, 0x2f

    invoke-super {p0, v4, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 330
    return-void

    .line 338
    :pswitch_0
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    if-ne v4, v6, :cond_0

    .line 339
    new-array v1, v8, [D

    .line 340
    .local v1, "doubleType":[D
    const/4 v4, 0x4

    new-array v2, v4, [I

    .line 341
    .local v2, "intType":[I
    iget-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    aput-wide v4, v1, v7

    .line 342
    iget-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    aput-wide v4, v1, v6

    .line 343
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    aput v4, v2, v7

    .line 344
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    aput v4, v2, v6

    .line 345
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    aput v4, v2, v8

    .line 346
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    aput v4, v2, v9

    .line 347
    const-string/jumbo v4, "IntType"

    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 348
    const-string/jumbo v4, "DoubleType"

    invoke-virtual {v0, v4, v1}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_0

    .line 349
    .end local v1    # "doubleType":[D
    .end local v2    # "intType":[I
    :cond_0
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    if-ne v4, v8, :cond_1

    .line 350
    new-array v2, v6, [I

    .line 351
    .restart local v2    # "intType":[I
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    aput v4, v2, v7

    .line 352
    const-string/jumbo v4, "IntType"

    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 353
    .end local v2    # "intType":[I
    :cond_1
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_2

    .line 354
    new-array v2, v9, [I

    .line 355
    .restart local v2    # "intType":[I
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    aput v4, v2, v7

    .line 356
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    aput v4, v2, v6

    .line 357
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    aput v4, v2, v8

    .line 358
    const-string/jumbo v4, "IntType"

    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 359
    .end local v2    # "intType":[I
    :cond_2
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/16 v5, 0x9

    if-ne v4, v5, :cond_3

    .line 360
    new-array v2, v8, [I

    .line 361
    .restart local v2    # "intType":[I
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    aput v4, v2, v7

    .line 362
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    aput v4, v2, v6

    .line 363
    const-string/jumbo v4, "IntType"

    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 365
    .end local v2    # "intType":[I
    :cond_3
    const-string/jumbo v4, "SemContextLocationCoreAttribute"

    const-string/jumbo v5, "This Type is default attribute type"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 369
    :pswitch_1
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4

    .line 370
    new-array v1, v8, [D

    .line 371
    .restart local v1    # "doubleType":[D
    new-array v2, v6, [I

    .line 372
    .restart local v2    # "intType":[I
    new-array v3, v6, [J

    .line 373
    .local v3, "longType":[J
    iget-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    aput-wide v4, v1, v7

    .line 374
    iget-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    aput-wide v4, v1, v6

    .line 375
    iget v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    aput v4, v2, v7

    .line 376
    iget-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    aput-wide v4, v3, v7

    .line 377
    const-string/jumbo v4, "DoubleType"

    invoke-virtual {v0, v4, v1}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 378
    const-string/jumbo v4, "IntType"

    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 379
    const-string/jumbo v4, "LongType"

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    goto/16 :goto_0

    .line 381
    .end local v1    # "doubleType":[D
    .end local v2    # "intType":[I
    .end local v3    # "longType":[J
    :cond_4
    const-string/jumbo v4, "SemContextLocationCoreAttribute"

    const-string/jumbo v5, "This Type is default attribute type"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 336
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 253
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    if-lt v0, v1, :cond_0

    .line 254
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    if-le v0, v5, :cond_1

    .line 255
    :cond_0
    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "Mode value is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return v4

    .line 259
    :cond_1
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    if-nez v0, :cond_3

    .line 260
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    if-lt v0, v1, :cond_2

    .line 261
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_5

    .line 262
    :cond_2
    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "Action value is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return v4

    .line 265
    :cond_3
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMode:I

    if-ne v0, v5, :cond_5

    .line 266
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    if-lt v0, v1, :cond_4

    .line 267
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAction:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_5

    .line 268
    :cond_4
    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "Action value is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return v4

    .line 273
    :cond_5
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mFenceId:I

    if-gez v0, :cond_6

    .line 274
    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "FenceID is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return v4

    .line 278
    :cond_6
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mRadius:I

    if-gez v0, :cond_7

    .line 279
    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "Radius is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return v4

    .line 283
    :cond_7
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mStatus:I

    if-gez v0, :cond_8

    .line 284
    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "Status is wrong!1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return v4

    .line 288
    :cond_8
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTotalGpsCnt:I

    if-gez v0, :cond_9

    .line 289
    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "TotalGpsCount is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return v4

    .line 293
    :cond_9
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mSuccessGpsCnt:I

    if-gez v0, :cond_a

    .line 294
    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "Success gps count is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return v4

    .line 298
    :cond_a
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinDistance:I

    if-gez v0, :cond_b

    .line 299
    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "Minimum distance is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return v4

    .line 303
    :cond_b
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mMinTime:I

    if-gez v0, :cond_c

    .line 304
    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "Minimum time is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return v4

    .line 308
    :cond_c
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mAccuracy:I

    if-gez v0, :cond_d

    .line 309
    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "Accuracy is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return v4

    .line 313
    :cond_d
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mTimeStamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_e

    .line 314
    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "Timestamp is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return v4

    .line 318
    :cond_e
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_f

    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLongitude:D

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_10

    .line 319
    :cond_f
    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "Longitude is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return v4

    .line 323
    :cond_10
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_11

    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;->mLatitude:D

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_12

    .line 324
    :cond_11
    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "Latitude is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return v4

    .line 327
    :cond_12
    return v5
.end method
