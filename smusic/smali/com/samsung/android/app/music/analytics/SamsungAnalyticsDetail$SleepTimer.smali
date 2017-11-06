.class public Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$SleepTimer;
.super Ljava/lang/Object;
.source "SamsungAnalyticsDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SleepTimer"
.end annotation


# static fields
.field private static final CUSTOM:Ljava/lang/String; = "Custom"

.field private static final OFF:Ljava/lang/String; = "Off"

.field private static final ONE_HOURS:Ljava/lang/String; = "1 hours"

.field private static final ONE_HOURS_THIRTY_MINUTES:Ljava/lang/String; = "1 hours 30 minutes"

.field private static final THIRTY_MINUTES:Ljava/lang/String; = "30 minutes"

.field private static final TWO_HOURS:Ljava/lang/String; = "2 hours"

.field public static final VALUES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$SleepTimer;->VALUES:Ljava/util/List;

    .line 135
    sget-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$SleepTimer;->VALUES:Ljava/util/List;

    const-string v1, "Off"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$SleepTimer;->VALUES:Ljava/util/List;

    const-string v1, "30 minutes"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$SleepTimer;->VALUES:Ljava/util/List;

    const-string v1, "1 hours"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$SleepTimer;->VALUES:Ljava/util/List;

    const-string v1, "1 hours 30 minutes"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$SleepTimer;->VALUES:Ljava/util/List;

    const-string v1, "2 hours"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$SleepTimer;->VALUES:Ljava/util/List;

    const-string v1, "Custom"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
