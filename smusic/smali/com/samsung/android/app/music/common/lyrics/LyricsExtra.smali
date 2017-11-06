.class public Lcom/samsung/android/app/music/common/lyrics/LyricsExtra;
.super Ljava/lang/Object;
.source "LyricsExtra.java"


# static fields
.field private static final DATA_ARGS_QUEUE_TYPE:Ljava/lang/String; = "queue_type"

.field private static final DATA_ARGS_SOURCE_ID:Ljava/lang/String; = "source_id"

.field private static final DATA_ARGS_STATION_ID:Ljava/lang/String; = "station_id"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static convertToExtra(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p0, "queueType"    # I
    .param p1, "sourceId"    # Ljava/lang/String;
    .param p2, "stationId"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v1, "queue_type"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 34
    const-string/jumbo v1, "source_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string/jumbo v1, "station_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-object v0
.end method

.method public static convertToExtra(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Landroid/os/Bundle;
    .locals 3
    .param p0, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 20
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 21
    .local v0, "data":Landroid/os/Bundle;
    if-nez p0, :cond_0

    .line 28
    :goto_0
    return-object v0

    .line 24
    :cond_0
    const-string/jumbo v2, "queue_type"

    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 24
    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 26
    const-string/jumbo v1, "source_id"

    const-string v2, "com.samsung.android.app.music.metadata.SOURCE_ID"

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string/jumbo v1, "station_id"

    const-string v2, "com.samsung.android.app.music.metadata.CHANNEL_NAME"

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getSourceId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Landroid/os/Bundle;

    .prologue
    .line 45
    if-nez p0, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "source_id"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getStationId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Landroid/os/Bundle;

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "station_id"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static isRadio(Landroid/os/Bundle;)Z
    .locals 3
    .param p0, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 40
    if-eqz p0, :cond_0

    const-string/jumbo v2, "queue_type"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
