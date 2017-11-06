.class public Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;
.super Ljava/lang/Object;
.source "MediaButtonLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mNextId:Ljava/lang/String;

.field private mPauseId:Ljava/lang/String;

.field private mPlayId:Ljava/lang/String;

.field private mPrevId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;->mNextId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;->mPrevId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;->mPlayId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;->mPauseId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger;-><init>(Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$1;)V

    return-object v0
.end method

.method public setNext(Ljava/lang/String;)Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;
    .locals 0
    .param p1, "nextId"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;->mNextId:Ljava/lang/String;

    .line 79
    return-object p0
.end method

.method public setPause(Ljava/lang/String;)Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;
    .locals 0
    .param p1, "pauseId"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;->mPauseId:Ljava/lang/String;

    .line 94
    return-object p0
.end method

.method public setPlay(Ljava/lang/String;)Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;
    .locals 0
    .param p1, "playId"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;->mPlayId:Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method public setPrev(Ljava/lang/String;)Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;
    .locals 0
    .param p1, "prevId"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonLogger$Builder;->mPrevId:Ljava/lang/String;

    .line 84
    return-object p0
.end method
