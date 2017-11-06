.class Lcom/samsung/android/app/music/milk/util/MilkUtils$RingInfo;
.super Ljava/lang/Object;
.source "MilkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/util/MilkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RingInfo"
.end annotation


# instance fields
.field size:I

.field thick:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "thick"    # I

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput p1, p0, Lcom/samsung/android/app/music/milk/util/MilkUtils$RingInfo;->size:I

    .line 101
    iput p2, p0, Lcom/samsung/android/app/music/milk/util/MilkUtils$RingInfo;->thick:I

    .line 102
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 106
    instance-of v2, p1, Lcom/samsung/android/app/music/milk/util/MilkUtils$RingInfo;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 107
    check-cast v0, Lcom/samsung/android/app/music/milk/util/MilkUtils$RingInfo;

    .line 108
    .local v0, "o":Lcom/samsung/android/app/music/milk/util/MilkUtils$RingInfo;
    iget v2, p0, Lcom/samsung/android/app/music/milk/util/MilkUtils$RingInfo;->size:I

    iget v3, v0, Lcom/samsung/android/app/music/milk/util/MilkUtils$RingInfo;->size:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/samsung/android/app/music/milk/util/MilkUtils$RingInfo;->thick:I

    iget v3, v0, Lcom/samsung/android/app/music/milk/util/MilkUtils$RingInfo;->thick:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 110
    .end local v0    # "o":Lcom/samsung/android/app/music/milk/util/MilkUtils$RingInfo;
    :cond_0
    return v1
.end method
