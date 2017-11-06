.class public final Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlaybackState;
.super Ljava/lang/Object;
.source "EmptyPlaybackState.java"


# static fields
.field private static final sInstance:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;-><init>()V

    .line 9
    .local v0, "builder":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->build()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlaybackState;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .line 10
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static getState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlaybackState;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    return-object v0
.end method
