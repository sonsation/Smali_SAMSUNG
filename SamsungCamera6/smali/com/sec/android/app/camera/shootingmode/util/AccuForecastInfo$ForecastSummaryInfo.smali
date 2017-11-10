.class public Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$ForecastSummaryInfo;
.super Ljava/lang/Object;
.source "AccuForecastInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForecastSummaryInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$ForecastSummaryInfo$HourlyForecast;,
        Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$ForecastSummaryInfo$HeadlineInfo;,
        Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$ForecastSummaryInfo$DailyForecast;
    }
.end annotation


# instance fields
.field public DailyForecasts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$ForecastSummaryInfo$DailyForecast;",
            ">;"
        }
    .end annotation
.end field

.field public Headline:Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$ForecastSummaryInfo$HeadlineInfo;

.field public HourlyForecasts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$ForecastSummaryInfo$HourlyForecast;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
