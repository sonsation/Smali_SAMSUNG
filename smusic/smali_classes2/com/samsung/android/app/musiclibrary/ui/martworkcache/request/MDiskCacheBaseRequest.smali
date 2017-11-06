.class public abstract Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBaseRequest;
.super Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;
.source "MDiskCacheBaseRequest.java"


# static fields
.field protected static final DEBUG:Z

.field protected static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheBaseRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)V
    .locals 0
    .param p1, "key"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)V

    .line 18
    return-void
.end method
