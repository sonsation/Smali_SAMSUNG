.class Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsCacheHolder;
.super Ljava/lang/Object;
.source "LyricsCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/lyrics/LyricsCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LyricsCacheHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 196
    new-instance v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsCacheHolder;->sInstance:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500()Lcom/samsung/android/app/music/common/lyrics/LyricsCache;
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsCacheHolder;->sInstance:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    return-object v0
.end method
