.class public Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;
.super Ljava/lang/Object;
.source "MusicLoggingUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mTrackEndLoggingEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;->mTrackEndLoggingEnabled:Z

    .line 379
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;->mContext:Landroid/content/Context;

    .line 380
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;

    .prologue
    .line 372
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;->mTrackEndLoggingEnabled:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;
    .locals 2

    .prologue
    .line 388
    new-instance v0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;-><init>(Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$1;)V

    return-object v0
.end method

.method public setTrackEndLoggingEnabled(Z)Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 383
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;->mTrackEndLoggingEnabled:Z

    .line 384
    return-object p0
.end method
