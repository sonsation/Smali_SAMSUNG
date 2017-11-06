.class public final enum Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;
.super Ljava/lang/Enum;
.source "DeepLinkConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HostType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

.field public static final enum ANNOUNCEMENT:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

.field public static final enum APP:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

.field public static final enum MAIN:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

.field public static final enum ME:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

.field public static final enum MENU:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

.field public static final enum MOD:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

.field public static final enum NOTICE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

.field public static final enum PURCHASE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

.field public static final enum RECOMMEND:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

.field public static final enum SERVICE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;


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

    .line 33
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    const-string v1, "MOD"

    const-string v2, "mod"

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->MOD:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    .line 34
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    const-string v1, "MAIN"

    const-string v2, "main"

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->MAIN:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    .line 35
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    const-string v1, "ME"

    const-string v2, "me"

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->ME:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    .line 36
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    const-string v1, "MENU"

    const-string v2, "menu"

    invoke-direct {v0, v1, v7, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->MENU:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    .line 37
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    const-string v1, "NOTICE"

    const-string v2, "notice"

    invoke-direct {v0, v1, v8, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->NOTICE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    .line 38
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    const-string v1, "ANNOUNCEMENT"

    const/4 v2, 0x5

    const-string v3, "announcement"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->ANNOUNCEMENT:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    .line 39
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    const-string v1, "APP"

    const/4 v2, 0x6

    const-string v3, "app"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->APP:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    .line 40
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    const-string v1, "PURCHASE"

    const/4 v2, 0x7

    const-string/jumbo v3, "purchase"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->PURCHASE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    .line 41
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    const-string v1, "RECOMMEND"

    const/16 v2, 0x8

    const-string/jumbo v3, "recommend"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->RECOMMEND:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    .line 42
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    const-string v1, "SERVICE"

    const/16 v2, 0x9

    const-string/jumbo v3, "service"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->SERVICE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    .line 32
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->MOD:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->MAIN:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->ME:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->MENU:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->NOTICE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->ANNOUNCEMENT:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->APP:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->PURCHASE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->RECOMMEND:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->SERVICE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->$VALUES:[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->value:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static getHostType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;
    .locals 5
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->values()[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 56
    .local v0, "type":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;
    iget-object v4, v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    .end local v0    # "type":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;
    :goto_1
    return-object v0

    .line 55
    .restart local v0    # "type":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "type":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->$VALUES:[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    return-object v0
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->value:Ljava/lang/String;

    return-object v0
.end method
