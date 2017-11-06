.class Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO$1;
.super Ljava/lang/Object;
.source "SmartStationSeedDAO.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;->getAvailableMixedSeedList(Ljava/lang/String;III)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO$1;->this$0:Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;)I
    .locals 9
    .param p1, "seed1"    # Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;
    .param p2, "seed2"    # Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 340
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 341
    .local v4, "countSeed1":I
    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 343
    .local v5, "countSeed2":I
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getAddedTime()J

    move-result-wide v0

    .line 344
    .local v0, "addedTime1":J
    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getAddedTime()J

    move-result-wide v2

    .line 346
    .local v2, "addedTime2":J
    if-le v4, v5, :cond_1

    .line 356
    :cond_0
    :goto_0
    return v6

    .line 348
    :cond_1
    if-ge v4, v5, :cond_2

    move v6, v7

    .line 349
    goto :goto_0

    .line 351
    :cond_2
    cmp-long v8, v0, v2

    if-gtz v8, :cond_0

    .line 353
    cmp-long v6, v0, v2

    if-gez v6, :cond_3

    move v6, v7

    .line 354
    goto :goto_0

    .line 356
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 337
    check-cast p1, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;

    check-cast p2, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/provider/dao/SmartStationSeedDAO$1;->compare(Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;)I

    move-result v0

    return v0
.end method
