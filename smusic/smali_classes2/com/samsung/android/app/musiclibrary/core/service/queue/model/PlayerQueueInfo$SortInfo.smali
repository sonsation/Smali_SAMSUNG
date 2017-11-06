.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;
.super Ljava/lang/Object;
.source "PlayerQueueInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SortInfo"
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mOrderedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSortMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;->mSortMode:I

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;->mOrderedList:Ljava/util/List;

    .line 223
    return-void
.end method

.method private constructor <init>(ILjava/util/List;)V
    .locals 1
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;->mSortMode:I

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;->mOrderedList:Ljava/util/List;

    .line 226
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;->mSortMode:I

    .line 227
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;->mOrderedList:Ljava/util/List;

    .line 228
    return-void
.end method

.method public static getSortInfo(ILjava/util/List;)Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;
    .locals 1
    .param p0, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;-><init>(ILjava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getOrderedList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;->mOrderedList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;->mOrderedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo;->EMPTY_LIST:Ljava/util/ArrayList;

    .line 257
    :goto_0
    return-object v0

    .line 247
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;->mOrderedList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getSortMode()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;->mSortMode:I

    return v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;->mOrderedList:Ljava/util/List;

    .line 241
    return-void
.end method

.method public setSortMode(I)V
    .locals 0
    .param p1, "sortMode"    # I

    .prologue
    .line 236
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/model/PlayerQueueInfo$SortInfo;->mSortMode:I

    .line 237
    return-void
.end method
