.class public Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$ForecastSummaryInfo$HourlyForecast;
.super Ljava/lang/Object;
.source "AccuForecastInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$ForecastSummaryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HourlyForecast"
.end annotation


# instance fields
.field public EpochDateTime:J

.field public IceProbability:I

.field public MobileLink:Ljava/lang/String;

.field public PrecipitationProbability:I

.field public RainProbability:I

.field public SnowProbability:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
