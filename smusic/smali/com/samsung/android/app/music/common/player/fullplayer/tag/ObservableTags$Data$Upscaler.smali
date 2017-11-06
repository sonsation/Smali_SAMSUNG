.class Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Upscaler;
.super Ljava/lang/Object;
.source "ObservableTags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Upscaler"
.end annotation


# instance fields
.field isEnabled:Z

.field playerType:I


# direct methods
.method constructor <init>(ZI)V
    .locals 0
    .param p1, "isEnabled"    # Z
    .param p2, "playerType"    # I

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Upscaler;->isEnabled:Z

    .line 176
    iput p2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Upscaler;->playerType:I

    .line 177
    return-void
.end method

.method static from(ZI)Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Upscaler;
    .locals 1
    .param p0, "isEnabled"    # Z
    .param p1, "playerType"    # I

    .prologue
    .line 171
    new-instance v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Upscaler;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Upscaler;-><init>(ZI)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 181
    instance-of v2, p1, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Upscaler;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 182
    check-cast v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Upscaler;

    .line 183
    .local v0, "u":Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Upscaler;
    iget-boolean v2, v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Upscaler;->isEnabled:Z

    iget-boolean v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Upscaler;->isEnabled:Z

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Upscaler;->playerType:I

    iget v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Upscaler;->playerType:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 185
    .end local v0    # "u":Lcom/samsung/android/app/music/common/player/fullplayer/tag/ObservableTags$Data$Upscaler;
    :cond_0
    return v1
.end method
