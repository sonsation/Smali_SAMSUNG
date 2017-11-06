.class public final enum Lcom/samsung/android/sdk/ppmt/content/CardState;
.super Ljava/lang/Enum;
.source "CardState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/ppmt/content/CardState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/ppmt/content/CardState;

.field public static final enum CANCELED:Lcom/samsung/android/sdk/ppmt/content/CardState;

.field public static final enum DISPLAYED:Lcom/samsung/android/sdk/ppmt/content/CardState;

.field public static final enum FAILED:Lcom/samsung/android/sdk/ppmt/content/CardState;

.field public static final enum GONE:Lcom/samsung/android/sdk/ppmt/content/CardState;

.field public static final enum INCOMP_API:Lcom/samsung/android/sdk/ppmt/content/CardState;

.field public static final enum INCOMP_CANCEL_API:Lcom/samsung/android/sdk/ppmt/content/CardState;

.field public static final enum INCOMP_DISPLAY:Lcom/samsung/android/sdk/ppmt/content/CardState;

.field public static final enum INCOMP_RESOURCE:Lcom/samsung/android/sdk/ppmt/content/CardState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/samsung/android/sdk/ppmt/content/CardState;

    const-string v1, "INCOMP_CANCEL_API"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/ppmt/content/CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_CANCEL_API:Lcom/samsung/android/sdk/ppmt/content/CardState;

    .line 7
    new-instance v0, Lcom/samsung/android/sdk/ppmt/content/CardState;

    const-string v1, "INCOMP_RESOURCE"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/ppmt/content/CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_RESOURCE:Lcom/samsung/android/sdk/ppmt/content/CardState;

    .line 8
    new-instance v0, Lcom/samsung/android/sdk/ppmt/content/CardState;

    const-string v1, "INCOMP_DISPLAY"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/sdk/ppmt/content/CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/ppmt/content/CardState;

    .line 9
    new-instance v0, Lcom/samsung/android/sdk/ppmt/content/CardState;

    const-string v1, "DISPLAYED"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/sdk/ppmt/content/CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/content/CardState;->DISPLAYED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    .line 10
    new-instance v0, Lcom/samsung/android/sdk/ppmt/content/CardState;

    const-string v1, "GONE"

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/sdk/ppmt/content/CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/content/CardState;->GONE:Lcom/samsung/android/sdk/ppmt/content/CardState;

    .line 11
    new-instance v0, Lcom/samsung/android/sdk/ppmt/content/CardState;

    const-string v1, "FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/ppmt/content/CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/content/CardState;->FAILED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    .line 12
    new-instance v0, Lcom/samsung/android/sdk/ppmt/content/CardState;

    const-string v1, "CANCELED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/ppmt/content/CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/content/CardState;->CANCELED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    .line 13
    new-instance v0, Lcom/samsung/android/sdk/ppmt/content/CardState;

    const-string v1, "INCOMP_API"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/ppmt/content/CardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_API:Lcom/samsung/android/sdk/ppmt/content/CardState;

    .line 5
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/samsung/android/sdk/ppmt/content/CardState;

    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_CANCEL_API:Lcom/samsung/android/sdk/ppmt/content/CardState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_RESOURCE:Lcom/samsung/android/sdk/ppmt/content/CardState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/ppmt/content/CardState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardState;->DISPLAYED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardState;->GONE:Lcom/samsung/android/sdk/ppmt/content/CardState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/CardState;->FAILED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/CardState;->CANCELED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_API:Lcom/samsung/android/sdk/ppmt/content/CardState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/ppmt/content/CardState;->$VALUES:[Lcom/samsung/android/sdk/ppmt/content/CardState;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/CardState;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v2, Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-static {v2}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ppmt/content/CardState;

    .line 17
    .local v0, "cs":Lcom/samsung/android/sdk/ppmt/content/CardState;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/content/CardState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    .end local v0    # "cs":Lcom/samsung/android/sdk/ppmt/content/CardState;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/CardState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ppmt/content/CardState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/ppmt/content/CardState;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/CardState;->$VALUES:[Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/ppmt/content/CardState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/ppmt/content/CardState;

    return-object v0
.end method
