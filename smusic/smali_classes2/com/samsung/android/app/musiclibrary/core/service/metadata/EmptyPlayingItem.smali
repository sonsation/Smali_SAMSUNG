.class public final Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;
.super Ljava/lang/Object;
.source "EmptyPlayingItem.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;


# static fields
.field private static volatile EMPTY_PLAYING_ITEM:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;


# instance fields
.field private final mMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->mMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 3

    .prologue
    .line 11
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->EMPTY_PLAYING_ITEM:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    if-nez v0, :cond_1

    .line 12
    const-class v1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;

    monitor-enter v1

    .line 13
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->EMPTY_PLAYING_ITEM:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->EMPTY_PLAYING_ITEM:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    .line 16
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :cond_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->EMPTY_PLAYING_ITEM:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public getExtraData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->mMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-object v0
.end method

.method public getPlayingUri(I)Landroid/net/Uri;
    .locals 1
    .param p1, "priority"    # I

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method
