.class public final enum Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;
.super Ljava/lang/Enum;
.source "BixbyApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/bixby/BixbyApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NlgParamMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

.field public static final enum CONFIRM:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

.field public static final enum MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

.field public static final enum NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

.field public static final enum TARGETED:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 133
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    .line 138
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    const-string v1, "TARGETED"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->TARGETED:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    .line 143
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    const-string v1, "MULTIPLE"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    .line 149
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    const-string v1, "CONFIRM"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->CONFIRM:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    .line 129
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->TARGETED:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->CONFIRM:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->$VALUES:[Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

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
    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 129
    const-class v0, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->$VALUES:[Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 155
    const-string v0, "\"nlgParamMode\":"

    .line 156
    .local v0, "prefix":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$NlgParamMode:[I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 168
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 158
    :pswitch_0
    const-string v1, "\"nlgParamMode\":\"none\""

    goto :goto_0

    .line 160
    :pswitch_1
    const-string v1, "\"nlgParamMode\":\"targeted\""

    goto :goto_0

    .line 162
    :pswitch_2
    const-string v1, "\"nlgParamMode\":\"multiple\""

    goto :goto_0

    .line 164
    :pswitch_3
    const-string v1, "\"nlgParamMode\":\"confirm\""

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
