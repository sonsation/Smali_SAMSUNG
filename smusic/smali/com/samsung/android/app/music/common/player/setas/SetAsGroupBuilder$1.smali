.class final enum Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$1;
.super Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;
.source "SetAsGroupBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# instance fields
.field private final ALL_ITEMS:[Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder;-><init>(Ljava/lang/String;ILcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$1;)V

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;

    const/4 v1, 0x0

    new-instance v2, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;

    const v3, 0x7f120062

    const v4, 0x7f0a00d8

    const/4 v5, -0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;-><init>(III)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;

    const v3, 0x7f12056c

    const v4, 0x7f0a00ca

    const v5, 0x7f0a00c9

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;-><init>(III)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$1;->ALL_ITEMS:[Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;

    return-void
.end method


# virtual methods
.method public getItems()[Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$1;->ALL_ITEMS:[Lcom/samsung/android/app/music/common/player/setas/SetAsGroupBuilder$Item;

    return-object v0
.end method
