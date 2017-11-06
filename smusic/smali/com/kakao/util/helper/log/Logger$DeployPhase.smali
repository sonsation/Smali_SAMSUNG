.class public final enum Lcom/kakao/util/helper/log/Logger$DeployPhase;
.super Ljava/lang/Enum;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/util/helper/log/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeployPhase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kakao/util/helper/log/Logger$DeployPhase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/util/helper/log/Logger$DeployPhase;

.field public static final enum Alpha:Lcom/kakao/util/helper/log/Logger$DeployPhase;

.field public static final enum Beta:Lcom/kakao/util/helper/log/Logger$DeployPhase;

.field public static final enum Local:Lcom/kakao/util/helper/log/Logger$DeployPhase;

.field public static final enum Release:Lcom/kakao/util/helper/log/Logger$DeployPhase;

.field public static final enum Sandbox:Lcom/kakao/util/helper/log/Logger$DeployPhase;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/kakao/util/helper/log/Logger$DeployPhase;

    const-string v1, "Local"

    invoke-direct {v0, v1, v2}, Lcom/kakao/util/helper/log/Logger$DeployPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/util/helper/log/Logger$DeployPhase;->Local:Lcom/kakao/util/helper/log/Logger$DeployPhase;

    new-instance v0, Lcom/kakao/util/helper/log/Logger$DeployPhase;

    const-string v1, "Alpha"

    invoke-direct {v0, v1, v3}, Lcom/kakao/util/helper/log/Logger$DeployPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/util/helper/log/Logger$DeployPhase;->Alpha:Lcom/kakao/util/helper/log/Logger$DeployPhase;

    new-instance v0, Lcom/kakao/util/helper/log/Logger$DeployPhase;

    const-string v1, "Sandbox"

    invoke-direct {v0, v1, v4}, Lcom/kakao/util/helper/log/Logger$DeployPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/util/helper/log/Logger$DeployPhase;->Sandbox:Lcom/kakao/util/helper/log/Logger$DeployPhase;

    new-instance v0, Lcom/kakao/util/helper/log/Logger$DeployPhase;

    const-string v1, "Beta"

    invoke-direct {v0, v1, v5}, Lcom/kakao/util/helper/log/Logger$DeployPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/util/helper/log/Logger$DeployPhase;->Beta:Lcom/kakao/util/helper/log/Logger$DeployPhase;

    new-instance v0, Lcom/kakao/util/helper/log/Logger$DeployPhase;

    const-string v1, "Release"

    invoke-direct {v0, v1, v6}, Lcom/kakao/util/helper/log/Logger$DeployPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/util/helper/log/Logger$DeployPhase;->Release:Lcom/kakao/util/helper/log/Logger$DeployPhase;

    .line 11
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/kakao/util/helper/log/Logger$DeployPhase;

    sget-object v1, Lcom/kakao/util/helper/log/Logger$DeployPhase;->Local:Lcom/kakao/util/helper/log/Logger$DeployPhase;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kakao/util/helper/log/Logger$DeployPhase;->Alpha:Lcom/kakao/util/helper/log/Logger$DeployPhase;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kakao/util/helper/log/Logger$DeployPhase;->Sandbox:Lcom/kakao/util/helper/log/Logger$DeployPhase;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kakao/util/helper/log/Logger$DeployPhase;->Beta:Lcom/kakao/util/helper/log/Logger$DeployPhase;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kakao/util/helper/log/Logger$DeployPhase;->Release:Lcom/kakao/util/helper/log/Logger$DeployPhase;

    aput-object v1, v0, v6

    sput-object v0, Lcom/kakao/util/helper/log/Logger$DeployPhase;->$VALUES:[Lcom/kakao/util/helper/log/Logger$DeployPhase;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static convert(Ljava/lang/String;)Lcom/kakao/util/helper/log/Logger$DeployPhase;
    .locals 5
    .param p0, "i"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-static {}, Lcom/kakao/util/helper/log/Logger$DeployPhase;->values()[Lcom/kakao/util/helper/log/Logger$DeployPhase;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 16
    .local v0, "current":Lcom/kakao/util/helper/log/Logger$DeployPhase;
    invoke-virtual {v0}, Lcom/kakao/util/helper/log/Logger$DeployPhase;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 20
    .end local v0    # "current":Lcom/kakao/util/helper/log/Logger$DeployPhase;
    :goto_1
    return-object v0

    .line 15
    .restart local v0    # "current":Lcom/kakao/util/helper/log/Logger$DeployPhase;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    .end local v0    # "current":Lcom/kakao/util/helper/log/Logger$DeployPhase;
    :cond_1
    sget-object v0, Lcom/kakao/util/helper/log/Logger$DeployPhase;->Release:Lcom/kakao/util/helper/log/Logger$DeployPhase;

    goto :goto_1
.end method

.method public static current()Lcom/kakao/util/helper/log/Logger$DeployPhase;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/kakao/util/helper/log/Logger$DeployPhase;->Release:Lcom/kakao/util/helper/log/Logger$DeployPhase;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/util/helper/log/Logger$DeployPhase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/kakao/util/helper/log/Logger$DeployPhase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kakao/util/helper/log/Logger$DeployPhase;

    return-object v0
.end method

.method public static values()[Lcom/kakao/util/helper/log/Logger$DeployPhase;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/kakao/util/helper/log/Logger$DeployPhase;->$VALUES:[Lcom/kakao/util/helper/log/Logger$DeployPhase;

    invoke-virtual {v0}, [Lcom/kakao/util/helper/log/Logger$DeployPhase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/util/helper/log/Logger$DeployPhase;

    return-object v0
.end method
