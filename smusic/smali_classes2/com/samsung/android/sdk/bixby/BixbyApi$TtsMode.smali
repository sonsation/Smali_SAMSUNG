.class public final enum Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;
.super Ljava/lang/Enum;
.source "BixbyApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/bixby/BixbyApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TtsMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;

.field public static final enum CUT:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;

.field public static final enum WAIT:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 325
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;

    const-string v1, "CUT"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;->CUT:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;

    .line 329
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;

    const-string v1, "WAIT"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;->WAIT:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;

    .line 321
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;->CUT:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;->WAIT:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;->$VALUES:[Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;

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
    .line 321
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 321
    const-class v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;
    .locals 1

    .prologue
    .line 321
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;->$VALUES:[Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 335
    const-string v0, "\"ttsMode\":"

    .line 336
    .local v0, "prefix":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->$SwitchMap$com$samsung$android$sdk$bixby$BixbyApi$TtsMode:[I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 344
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 338
    :pswitch_0
    const-string v1, "\"ttsMode\":\"cut\""

    goto :goto_0

    .line 340
    :pswitch_1
    const-string v1, "\"ttsMode\":\"wait\""

    goto :goto_0

    .line 336
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
