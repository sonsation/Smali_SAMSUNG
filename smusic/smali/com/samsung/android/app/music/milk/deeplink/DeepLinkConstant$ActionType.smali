.class public final enum Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;
.super Ljava/lang/Enum;
.source "DeepLinkConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum ADD:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum ADD_AND_PLAY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum BACK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum CLOSE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum CLOSE_AND_LAUNCH:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum CREATE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum CREATE_AND_PLAY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum CREATE_QUESTION:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum DO_NOT_SHOW:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum EMERGENCY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum LAUNCH:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum NEXT:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum ORDER:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum PAUSE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum PLAY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum PREV:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum SEND_LOG:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum SHARE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum UPDATE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 66
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "LAUNCH"

    const-string v2, "launch"

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->LAUNCH:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 67
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "PLAY"

    const-string/jumbo v2, "play"

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->PLAY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 68
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "PAUSE"

    const-string/jumbo v2, "pause"

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->PAUSE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 69
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "PREV"

    const-string/jumbo v2, "prev"

    invoke-direct {v0, v1, v7, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->PREV:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 70
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "NEXT"

    const-string v2, "next"

    invoke-direct {v0, v1, v8, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->NEXT:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 71
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "CREATE"

    const/4 v2, 0x5

    const-string v3, "create"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->CREATE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 72
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "CREATE_AND_PLAY"

    const/4 v2, 0x6

    const-string v3, "createplay"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->CREATE_AND_PLAY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 73
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "ADD"

    const/4 v2, 0x7

    const-string v3, "add"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ADD:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 74
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "ADD_AND_PLAY"

    const/16 v2, 0x8

    const-string v3, "addplay"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ADD_AND_PLAY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 75
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "SHARE"

    const/16 v2, 0x9

    const-string/jumbo v3, "share"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->SHARE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 76
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "UPDATE"

    const/16 v2, 0xa

    const-string/jumbo v3, "update"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->UPDATE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 77
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "EMERGENCY"

    const/16 v2, 0xb

    const-string v3, "emergency"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->EMERGENCY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 78
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "ORDER"

    const/16 v2, 0xc

    const-string/jumbo v3, "order"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ORDER:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 79
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "CLOSE"

    const/16 v2, 0xd

    const-string v3, "close"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->CLOSE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 80
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "BACK"

    const/16 v2, 0xe

    const-string v3, "back"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->BACK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 81
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "DO_NOT_SHOW"

    const/16 v2, 0xf

    const-string v3, "donotshow"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->DO_NOT_SHOW:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 82
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "CLOSE_AND_LAUNCH"

    const/16 v2, 0x10

    const-string v3, "closelaunch"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->CLOSE_AND_LAUNCH:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 83
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "CREATE_QUESTION"

    const/16 v2, 0x11

    const-string v3, "createquestion"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->CREATE_QUESTION:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 84
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "SEND_LOG"

    const/16 v2, 0x12

    const-string/jumbo v3, "sendlog"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->SEND_LOG:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 65
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->LAUNCH:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->PLAY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->PAUSE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->PREV:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->NEXT:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->CREATE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->CREATE_AND_PLAY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ADD:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ADD_AND_PLAY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->SHARE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->UPDATE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->EMERGENCY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ORDER:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->CLOSE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->BACK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->DO_NOT_SHOW:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->CLOSE_AND_LAUNCH:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->CREATE_QUESTION:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->SEND_LOG:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->$VALUES:[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->value:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public static getActionType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;
    .locals 5
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->values()[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 98
    .local v0, "type":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;
    iget-object v4, v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 103
    .end local v0    # "type":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;
    :goto_1
    return-object v0

    .line 97
    .restart local v0    # "type":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "type":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    const-class v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->$VALUES:[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    return-object v0
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->value:Ljava/lang/String;

    return-object v0
.end method
