.class public final enum Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;
.super Ljava/lang/Enum;
.source "BixbyApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/bixby/BixbyApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfirmMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

.field public static final enum APPLY:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

.field public static final enum COMMON:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

.field public static final enum DELETE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

.field public static final enum DISCARD:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

.field public static final enum EXECUTE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

.field public static final enum FORWARD:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

.field public static final enum INQUIRE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

.field public static final enum MERGE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

.field public static final enum REPLY:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

.field public static final enum RESET:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

.field public static final enum SAVE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

.field public static final enum SEND:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

.field public static final enum TURN_ON:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

.field public static final enum UPDATE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 174
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    const-string/jumbo v1, "SEND"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->SEND:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    .line 178
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    const-string/jumbo v1, "DELETE"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->DELETE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    .line 182
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    const-string/jumbo v1, "TURN_ON"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->TURN_ON:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    .line 186
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    const-string/jumbo v1, "APPLY"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->APPLY:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    .line 190
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    const-string/jumbo v1, "FORWARD"

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->FORWARD:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    .line 194
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    const-string/jumbo v1, "MERGE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->MERGE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    .line 198
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    const-string/jumbo v1, "DISCARD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->DISCARD:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    .line 202
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    const-string/jumbo v1, "RESET"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->RESET:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    .line 206
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    const-string/jumbo v1, "UPDATE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->UPDATE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    .line 210
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    const-string/jumbo v1, "EXECUTE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->EXECUTE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    .line 214
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    const-string/jumbo v1, "INQUIRE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->INQUIRE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    .line 218
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    const-string/jumbo v1, "SAVE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->SAVE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    .line 222
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    const-string/jumbo v1, "REPLY"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->REPLY:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    .line 226
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    const-string/jumbo v1, "COMMON"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->COMMON:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    const/16 v0, 0xe

    .line 170
    new-array v0, v0, [Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->SEND:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->DELETE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->TURN_ON:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->APPLY:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->FORWARD:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->MERGE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->DISCARD:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->RESET:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->UPDATE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->EXECUTE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->INQUIRE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->SAVE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->REPLY:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->COMMON:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->$VALUES:[Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    .line 170
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->$VALUES:[Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const-string/jumbo v0, "\"confirmMode\":"

    .line 233
    .local v0, "prefix":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$ConfirmMode:[I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 265
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_0
    const-string/jumbo v1, "\"confirmMode\":\"send\""

    .line 235
    return-object v1

    :pswitch_1
    const-string/jumbo v1, "\"confirmMode\":\"delete\""

    .line 237
    return-object v1

    :pswitch_2
    const-string/jumbo v1, "\"confirmMode\":\"turnOn\""

    .line 239
    return-object v1

    :pswitch_3
    const-string/jumbo v1, "\"confirmMode\":\"apply\""

    .line 241
    return-object v1

    :pswitch_4
    const-string/jumbo v1, "\"confirmMode\":\"forward\""

    .line 243
    return-object v1

    :pswitch_5
    const-string/jumbo v1, "\"confirmMode\":\"merge\""

    .line 245
    return-object v1

    :pswitch_6
    const-string/jumbo v1, "\"confirmMode\":\"discard\""

    .line 247
    return-object v1

    :pswitch_7
    const-string/jumbo v1, "\"confirmMode\":\"reset\""

    .line 249
    return-object v1

    :pswitch_8
    const-string/jumbo v1, "\"confirmMode\":\"update\""

    .line 251
    return-object v1

    :pswitch_9
    const-string/jumbo v1, "\"confirmMode\":\"execute\""

    .line 253
    return-object v1

    :pswitch_a
    const-string/jumbo v1, "\"confirmMode\":\"inquire\""

    .line 255
    return-object v1

    :pswitch_b
    const-string/jumbo v1, "\"confirmMode\":\"save\""

    .line 257
    return-object v1

    :pswitch_c
    const-string/jumbo v1, "\"confirmMode\":\"reply\""

    .line 259
    return-object v1

    :pswitch_d
    const-string/jumbo v1, "\"confirmMode\":\"common\""

    .line 261
    return-object v1

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
