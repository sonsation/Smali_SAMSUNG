.class Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;
.super Ljava/lang/Object;
.source "BluetoothExpListController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdatePosition"
.end annotation


# instance fields
.field private sortedPosList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private updatePosList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->updatePosList:Ljava/util/ArrayList;

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->sortedPosList:Ljava/util/ArrayList;

    .line 393
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;-><init>()V

    return-void
.end method


# virtual methods
.method public addUpdatePosList(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "sortedPosition"    # I

    .prologue
    .line 398
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->updatePosList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->updatePosList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->sortedPosList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->sortedPosList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->updatePosList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 417
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->sortedPosList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 415
    return-void
.end method

.method public getSortedList()Ljava/util/ArrayList;
    .locals 1
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
    .line 412
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->sortedPosList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUpdatePosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 403
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->updatePosList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->updatePosList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
