.class public Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$ForecastSummaryInfo$DailyForecast;
.super Ljava/lang/Object;
.source "AccuForecastInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$ForecastSummaryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DailyForecast"
.end annotation


# instance fields
.field public AirAndPollen:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$AirAndPollution;",
            ">;"
        }
    .end annotation
.end field

.field public Day:Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$DayInfo;

.field public Night:Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo$NightInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
