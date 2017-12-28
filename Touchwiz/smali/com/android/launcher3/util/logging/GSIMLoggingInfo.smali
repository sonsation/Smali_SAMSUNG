.class Lcom/android/launcher3/util/logging/GSIMLoggingInfo;
.super Ljava/lang/Object;
.source "GSIMLogging.java"


# instance fields
.field private mExtras:Ljava/lang/String;

.field private mFeatures:Ljava/lang/String;

.field private mValues:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "features"    # Ljava/lang/String;
    .param p2, "extras"    # Ljava/lang/String;
    .param p3, "values"    # J

    .prologue
    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    iput-object p1, p0, Lcom/android/launcher3/util/logging/GSIMLoggingInfo;->mFeatures:Ljava/lang/String;

    .line 459
    iput-object p2, p0, Lcom/android/launcher3/util/logging/GSIMLoggingInfo;->mExtras:Ljava/lang/String;

    .line 460
    iput-wide p3, p0, Lcom/android/launcher3/util/logging/GSIMLoggingInfo;->mValues:J

    .line 461
    return-void
.end method


# virtual methods
.method public getExtras()Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/launcher3/util/logging/GSIMLoggingInfo;->mExtras:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatures()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/launcher3/util/logging/GSIMLoggingInfo;->mFeatures:Ljava/lang/String;

    return-object v0
.end method

.method public getValues()J
    .locals 2

    .prologue
    .line 454
    iget-wide v0, p0, Lcom/android/launcher3/util/logging/GSIMLoggingInfo;->mValues:J

    return-wide v0
.end method
