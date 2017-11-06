.class final Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$SyncArtworkLoaderHolder;
.super Ljava/lang/Object;
.source "SyncArtworkLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncArtworkLoaderHolder"
.end annotation


# static fields
.field public static final sInstance:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$SyncArtworkLoaderHolder;->sInstance:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
