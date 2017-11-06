.class final enum Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;
.super Ljava/lang/Enum;
.source "SetCurrentPlaylistOrderExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;

.field public static final enum AT_THE_BOTTOM:Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;

.field public static final enum AT_THE_TOP:Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;

.field public static final enum NEXT_TO:Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;


# instance fields
.field private prefValue:I

.field private slotValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 28
    new-instance v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;

    const-string v1, "AT_THE_TOP"

    const-string v2, "atTheTop"

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;->AT_THE_TOP:Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;

    .line 29
    new-instance v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;

    const-string v1, "AT_THE_BOTTOM"

    const-string v2, "atTheBottom"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;->AT_THE_BOTTOM:Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;

    .line 30
    new-instance v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;

    const-string v1, "NEXT_TO"

    const-string v2, "nextToPlayingSong"

    invoke-direct {v0, v1, v6, v2, v7}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;->NEXT_TO:Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;

    .line 26
    new-array v0, v7, [Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;

    sget-object v1, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;->AT_THE_TOP:Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;->AT_THE_BOTTOM:Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;->NEXT_TO:Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;->$VALUES:[Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "slotValue"    # Ljava/lang/String;
    .param p4, "prefValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;->slotValue:Ljava/lang/String;

    .line 39
    iput p4, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;->prefValue:I

    .line 40
    return-void
.end method

.method public static getPosition(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;
    .locals 5
    .param p0, "parameter"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {}, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;->values()[Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 48
    .local v0, "value":Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;
    iget-object v4, v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;->slotValue:Ljava/lang/String;

    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    .end local v0    # "value":Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;
    :goto_1
    return-object v0

    .line 47
    .restart local v0    # "value":Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    .end local v0    # "value":Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;->$VALUES:[Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;

    return-object v0
.end method


# virtual methods
.method public getPrefValue()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/samsung/android/app/music/bixby/executor/settings/kr/SetCurrentPlaylistOrderExecutor$Position;->prefValue:I

    return v0
.end method
