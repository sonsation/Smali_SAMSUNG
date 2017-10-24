.class Lcom/android/systemui/classifier/AccelerationClassifier$Data;
.super Ljava/lang/Object;
.source "AccelerationClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/classifier/AccelerationClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Data"
.end annotation


# instance fields
.field public maxDistanceRatio:F

.field public maxSpeedRatio:F

.field public previousDistance:F

.field public previousPoint:Lcom/android/systemui/classifier/Point;

.field public previousSpeed:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/Point;)V
    .locals 1
    .param p1, "point"    # Lcom/android/systemui/classifier/Point;

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousPoint:Lcom/android/systemui/classifier/Point;

    .line 78
    iput v0, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousDistance:F

    iput v0, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousSpeed:F

    .line 79
    iput v0, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->maxSpeedRatio:F

    iput v0, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->maxDistanceRatio:F

    .line 76
    return-void
.end method


# virtual methods
.method public addPoint(Lcom/android/systemui/classifier/Point;)V
    .locals 9
    .param p1, "point"    # Lcom/android/systemui/classifier/Point;

    .prologue
    const/4 v8, 0x0

    .line 83
    iget-object v3, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousPoint:Lcom/android/systemui/classifier/Point;

    invoke-virtual {v3, p1}, Lcom/android/systemui/classifier/Point;->dist(Lcom/android/systemui/classifier/Point;)F

    move-result v0

    .line 84
    .local v0, "distance":F
    iget-wide v4, p1, Lcom/android/systemui/classifier/Point;->timeOffsetNano:J

    iget-object v3, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousPoint:Lcom/android/systemui/classifier/Point;

    iget-wide v6, v3, Lcom/android/systemui/classifier/Point;->timeOffsetNano:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    long-to-float v1, v4

    .line 85
    .local v1, "duration":F
    div-float v2, v0, v1

    .line 86
    .local v2, "speed":F
    iget v3, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousDistance:F

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_0

    .line 87
    iget v3, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->maxDistanceRatio:F

    iget v4, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousDistance:F

    div-float v4, v0, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->maxDistanceRatio:F

    .line 90
    :cond_0
    iget v3, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousSpeed:F

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_1

    .line 91
    iget v3, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->maxSpeedRatio:F

    iget v4, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousSpeed:F

    div-float v4, v2, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->maxSpeedRatio:F

    .line 94
    :cond_1
    iput v0, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousDistance:F

    .line 95
    iput v2, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousSpeed:F

    .line 96
    iput-object p1, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousPoint:Lcom/android/systemui/classifier/Point;

    .line 82
    return-void
.end method
