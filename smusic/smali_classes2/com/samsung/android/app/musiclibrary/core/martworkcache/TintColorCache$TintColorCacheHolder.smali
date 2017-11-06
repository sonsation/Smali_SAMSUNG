.class final Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintColorCacheHolder;
.super Ljava/lang/Object;
.source "TintColorCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TintColorCacheHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintColorCacheHolder;->sInstance:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintColorCacheHolder;->sInstance:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    return-object v0
.end method
