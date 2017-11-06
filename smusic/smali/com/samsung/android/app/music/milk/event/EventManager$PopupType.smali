.class public final enum Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;
.super Ljava/lang/Enum;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/event/EventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PopupType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;

.field public static final enum IMAGE_DEEPLINK:Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;

.field public static final enum IMAGE_NO_ACTION:Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;

.field public static final enum IMAGE_WEBLINK:Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;

.field public static final enum LINK:Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;


# instance fields
.field value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 77
    new-instance v0, Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;

    const-string v1, "LINK"

    const-string v2, "1"

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;->LINK:Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;

    new-instance v0, Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;

    const-string v1, "IMAGE_DEEPLINK"

    const-string v2, "2"

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;->IMAGE_DEEPLINK:Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;

    new-instance v0, Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;

    const-string v1, "IMAGE_WEBLINK"

    const-string v2, "3"

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;->IMAGE_WEBLINK:Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;

    new-instance v0, Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;

    const-string v1, "IMAGE_NO_ACTION"

    const-string v2, "4"

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;->IMAGE_NO_ACTION:Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;

    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;

    sget-object v1, Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;->LINK:Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;->IMAGE_DEEPLINK:Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;->IMAGE_WEBLINK:Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;->IMAGE_NO_ACTION:Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;->$VALUES:[Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;

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
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 82
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;->value:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public static getTypeByValue(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {}, Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;->values()[Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 91
    .local v0, "type":Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    .end local v0    # "type":Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;
    :goto_1
    return-object v0

    .line 90
    .restart local v0    # "type":Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "type":Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 76
    const-class v0, Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;->$VALUES:[Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;->value:Ljava/lang/String;

    return-object v0
.end method
