.class final enum Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;
.super Ljava/lang/Enum;
.source "SetCacheSizeExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Size"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;

.field public static final enum GB_1:Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;

.field public static final enum MB_100:Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;

.field public static final enum MB_500:Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;


# instance fields
.field private prefValue:J

.field private slotValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;

    const-string v1, "MB_100"

    const-string v3, "100MB"

    sget-object v4, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->MB_100:Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->getValue()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;->MB_100:Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;

    .line 29
    new-instance v4, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;

    const-string v5, "MB_500"

    const-string v7, "500MB"

    sget-object v0, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->MB_500:Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->getValue()J

    move-result-wide v8

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v4, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;->MB_500:Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;

    .line 30
    new-instance v8, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;

    const-string v9, "GB_1"

    const-string v11, "1GB"

    sget-object v0, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->GB_1:Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->getValue()J

    move-result-wide v12

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    sput-object v8, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;->GB_1:Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;

    sget-object v1, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;->MB_100:Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;->MB_500:Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;->GB_1:Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;

    aput-object v1, v0, v10

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;->$VALUES:[Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0
    .param p3, "slotValue"    # Ljava/lang/String;
    .param p4, "prefValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;->slotValue:Ljava/lang/String;

    .line 39
    iput-wide p4, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;->prefValue:J

    .line 40
    return-void
.end method

.method public static getSize(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;
    .locals 5
    .param p0, "parameter"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;->values()[Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 48
    .local v0, "value":Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;
    iget-object v4, v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;->slotValue:Ljava/lang/String;

    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    .end local v0    # "value":Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;
    :goto_1
    return-object v0

    .line 47
    .restart local v0    # "value":Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    .end local v0    # "value":Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;->$VALUES:[Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;

    return-object v0
.end method


# virtual methods
.method public getPrefValue()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCacheSizeExecutor$Size;->prefValue:J

    return-wide v0
.end method
