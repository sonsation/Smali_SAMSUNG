.class public final Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;
.super Ljava/lang/Object;
.source "EmptyMusicMetadata.java"


# static fields
.field private static volatile EMPTY:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 4

    .prologue
    .line 9
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->EMPTY:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    if-nez v1, :cond_1

    .line 10
    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;

    monitor-enter v2

    .line 11
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->EMPTY:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    if-nez v1, :cond_0

    .line 12
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;-><init>()V

    .line 15
    .local v0, "b":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;
    const-string v1, "android.media.metadata.MEDIA_ID"

    const-string v3, "empty song"

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 16
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putMusicAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 17
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->build()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->EMPTY:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 19
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :cond_1
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->EMPTY:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-object v1

    .line 19
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
