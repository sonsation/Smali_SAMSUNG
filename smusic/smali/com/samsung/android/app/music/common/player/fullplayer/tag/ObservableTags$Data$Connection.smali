.class Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Connection;
.super Ljava/lang/Object;
.source "ObservableTags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Connection"
.end annotation


# instance fields
.field isOnline:Z

.field type:I


# direct methods
.method constructor <init>(ZI)V
    .locals 0
    .param p1, "isOnline"    # Z
    .param p2, "type"    # I

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Connection;->isOnline:Z

    .line 200
    iput p2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Connection;->type:I

    .line 201
    return-void
.end method

.method static from(ZI)Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Connection;
    .locals 1
    .param p0, "isOnline"    # Z
    .param p1, "type"    # I

    .prologue
    .line 195
    new-instance v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Connection;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Connection;-><init>(ZI)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 205
    instance-of v2, p1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Connection;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 206
    check-cast v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Connection;

    .line 207
    .local v0, "c":Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Connection;
    iget-boolean v2, v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Connection;->isOnline:Z

    iget-boolean v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Connection;->isOnline:Z

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Connection;->type:I

    iget v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Connection;->type:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 209
    .end local v0    # "c":Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Connection;
    :cond_0
    return v1
.end method
