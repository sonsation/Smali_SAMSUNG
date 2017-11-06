.class public final Lcom/samsung/android/app/music/common/player/logger/VolumeLogger;
.super Ljava/lang/Object;
.source "VolumeLogger.java"


# instance fields
.field private final mScreenId:Ljava/lang/String;

.field private final mVolumeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "screenId"    # Ljava/lang/String;
    .param p2, "volumeType"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/logger/VolumeLogger;->mScreenId:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/samsung/android/app/music/common/player/logger/VolumeLogger;->mVolumeType:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public changeVolume()V
    .locals 4

    .prologue
    .line 18
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/logger/VolumeLogger;->mScreenId:Ljava/lang/String;

    const-string v2, "0020"

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/logger/VolumeLogger;->mVolumeType:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method
