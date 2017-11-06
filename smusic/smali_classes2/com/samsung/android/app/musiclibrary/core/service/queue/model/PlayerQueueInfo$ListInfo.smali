.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;
.super Ljava/lang/Object;
.source "PlayerQueueInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListInfo"
.end annotation


# instance fields
.field public playList:[J

.field public playPos:I

.field public recentlyPlayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([JLjava/util/List;I)V
    .locals 0
    .param p1, "playList"    # [J
    .param p3, "playPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p2, "recentlyPlayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->EMPTY_PLAYLIST:[J

    .end local p1    # "playList":[J
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->playList:[J

    .line 122
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->playPos:I

    .line 123
    if-nez p2, :cond_1

    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo;->EMPTY_LIST:Ljava/util/ArrayList;

    .end local p2    # "recentlyPlayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$ListInfo;->recentlyPlayList:Ljava/util/List;

    .line 124
    return-void
.end method
