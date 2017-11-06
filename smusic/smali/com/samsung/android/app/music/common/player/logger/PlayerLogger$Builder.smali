.class public Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;
.super Ljava/lang/Object;
.source "PlayerLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCloseId:Ljava/lang/String;

.field private mFavoriteId:Ljava/lang/String;

.field private mNextId:Ljava/lang/String;

.field private mPlayId:Ljava/lang/String;

.field private mPrevId:Ljava/lang/String;

.field private mQueueId:Ljava/lang/String;

.field private mRepeatId:Ljava/lang/String;

.field private mScreenId:Ljava/lang/String;

.field private mSeekId:Ljava/lang/String;

.field private mShuffleId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->mScreenId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->mNextId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->mPrevId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->mPlayId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->mCloseId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->mSeekId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->mQueueId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->mRepeatId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->mShuffleId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->mFavoriteId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method build()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 2

    .prologue
    .line 236
    new-instance v0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger;-><init>(Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$1;)V

    return-object v0
.end method

.method setClose(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;
    .locals 0
    .param p1, "closeId"    # Ljava/lang/String;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->mCloseId:Ljava/lang/String;

    .line 207
    return-object p0
.end method

.method setFavorite(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;
    .locals 0
    .param p1, "favoriteId"    # Ljava/lang/String;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->mFavoriteId:Ljava/lang/String;

    .line 232
    return-object p0
.end method

.method setNext(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;
    .locals 0
    .param p1, "nextId"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->mNextId:Ljava/lang/String;

    .line 192
    return-object p0
.end method

.method setPlayPause(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;
    .locals 0
    .param p1, "playId"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->mPlayId:Ljava/lang/String;

    .line 202
    return-object p0
.end method

.method setPrev(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;
    .locals 0
    .param p1, "prevId"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->mPrevId:Ljava/lang/String;

    .line 197
    return-object p0
.end method

.method setQueue(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;
    .locals 0
    .param p1, "queueId"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->mQueueId:Ljava/lang/String;

    .line 217
    return-object p0
.end method

.method setRepeat(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;
    .locals 0
    .param p1, "repeatId"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->mRepeatId:Ljava/lang/String;

    .line 222
    return-object p0
.end method

.method setScreenId(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;
    .locals 0
    .param p1, "screenId"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->mScreenId:Ljava/lang/String;

    .line 187
    return-object p0
.end method

.method setSeek(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;
    .locals 0
    .param p1, "seekId"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->mSeekId:Ljava/lang/String;

    .line 212
    return-object p0
.end method

.method setShuffle(Ljava/lang/String;)Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;
    .locals 0
    .param p1, "shuffleId"    # Ljava/lang/String;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/logger/PlayerLogger$Builder;->mShuffleId:Ljava/lang/String;

    .line 227
    return-object p0
.end method
