.class public final enum Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;
.super Ljava/lang/Enum;
.source "BixbyApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/bixby/BixbyApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TtsResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

.field public static final enum COMPLETE:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

.field public static final enum STOP_ON_CANCEL:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

.field public static final enum STOP_ON_ERROR:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

.field public static final enum UNKNOWN:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 355
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;->COMPLETE:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    .line 359
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    const-string v1, "STOP_ON_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;->STOP_ON_ERROR:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    .line 364
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    const-string v1, "STOP_ON_CANCEL"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;->STOP_ON_CANCEL:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    .line 369
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;->UNKNOWN:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    .line 351
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;->COMPLETE:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;->STOP_ON_ERROR:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;->STOP_ON_CANCEL:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;->UNKNOWN:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;->$VALUES:[Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

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
    .line 351
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static toEnum(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;
    .locals 2
    .param p0, "result"    # Ljava/lang/String;

    .prologue
    .line 375
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 383
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;->UNKNOWN:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    :goto_1
    return-object v0

    .line 375
    :sswitch_0
    const-string v1, "complete"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "stop_on_error"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "stop_on_cancel"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 377
    :pswitch_0
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;->COMPLETE:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    goto :goto_1

    .line 379
    :pswitch_1
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;->STOP_ON_ERROR:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    goto :goto_1

    .line 381
    :pswitch_2
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;->STOP_ON_CANCEL:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    goto :goto_1

    .line 375
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c83d4bb -> :sswitch_1
        -0x23bacec7 -> :sswitch_0
        -0x18520323 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 351
    const-class v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;
    .locals 1

    .prologue
    .line 351
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;->$VALUES:[Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    return-object v0
.end method
