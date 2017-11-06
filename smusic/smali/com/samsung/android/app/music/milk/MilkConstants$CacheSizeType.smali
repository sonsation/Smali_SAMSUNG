.class public final enum Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;
.super Ljava/lang/Enum;
.source "MilkConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/MilkConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CacheSizeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

.field public static final enum GB_1:Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

.field public static final enum MB_100:Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

.field public static final enum MB_500:Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;


# instance fields
.field private position:I

.field private value:J


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 768
    new-instance v0, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    const-string v1, "MB_100"

    const-wide/32 v4, 0x6400000

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;-><init>(Ljava/lang/String;IIJ)V

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->MB_100:Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    new-instance v4, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    const-string v5, "MB_500"

    const-wide/32 v8, 0x1f400000

    move v7, v6

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;-><init>(Ljava/lang/String;IIJ)V

    sput-object v4, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->MB_500:Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    new-instance v8, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    const-string v9, "GB_1"

    const-wide/32 v12, 0x3e800000

    move v11, v10

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;-><init>(Ljava/lang/String;IIJ)V

    sput-object v8, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->GB_1:Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    .line 767
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    sget-object v1, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->MB_100:Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->MB_500:Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->GB_1:Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    aput-object v1, v0, v10

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->$VALUES:[Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIJ)V
    .locals 0
    .param p3, "position"    # I
    .param p4, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)V"
        }
    .end annotation

    .prologue
    .line 774
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 775
    iput p3, p0, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->position:I

    .line 776
    iput-wide p4, p0, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->value:J

    .line 777
    return-void
.end method

.method public static getSizeType(I)Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;
    .locals 5
    .param p0, "position"    # I

    .prologue
    .line 788
    invoke-static {}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->values()[Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 789
    .local v0, "type":Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;
    iget v4, v0, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->position:I

    if-ne v4, p0, :cond_0

    .line 794
    .end local v0    # "type":Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;
    :goto_1
    return-object v0

    .line 788
    .restart local v0    # "type":Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 794
    .end local v0    # "type":Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getSizeType(J)Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;
    .locals 6
    .param p0, "value"    # J

    .prologue
    .line 798
    invoke-static {}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->values()[Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 799
    .local v0, "type":Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;
    iget-wide v4, v0, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->value:J

    cmp-long v4, v4, p0

    if-nez v4, :cond_0

    .line 804
    .end local v0    # "type":Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;
    :goto_1
    return-object v0

    .line 798
    .restart local v0    # "type":Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 804
    .end local v0    # "type":Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 767
    const-class v0, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;
    .locals 1

    .prologue
    .line 767
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->$VALUES:[Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    return-object v0
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    .prologue
    .line 780
    iget v0, p0, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->position:I

    return v0
.end method

.method public getValue()J
    .locals 2

    .prologue
    .line 784
    iget-wide v0, p0, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->value:J

    return-wide v0
.end method
