.class public final enum Lcom/samsung/android/app/music/milk/advertise/AdPlayType;
.super Ljava/lang/Enum;
.source "AdPlayType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/music/milk/advertise/AdPlayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/milk/advertise/AdPlayType;

.field public static final enum AD:Lcom/samsung/android/app/music/milk/advertise/AdPlayType;

.field public static final enum AI:Lcom/samsung/android/app/music/milk/advertise/AdPlayType;

.field public static final enum SONG:Lcom/samsung/android/app/music/milk/advertise/AdPlayType;


# instance fields
.field value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;

    const-string v1, "SONG"

    const-string v2, "Song"

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;->SONG:Lcom/samsung/android/app/music/milk/advertise/AdPlayType;

    new-instance v0, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;

    const-string v1, "AD"

    const-string v2, "AD"

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;->AD:Lcom/samsung/android/app/music/milk/advertise/AdPlayType;

    new-instance v0, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;

    const-string v1, "AI"

    const-string v2, "AI"

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;->AI:Lcom/samsung/android/app/music/milk/advertise/AdPlayType;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/app/music/milk/advertise/AdPlayType;

    sget-object v1, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;->SONG:Lcom/samsung/android/app/music/milk/advertise/AdPlayType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;->AD:Lcom/samsung/android/app/music/milk/advertise/AdPlayType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;->AI:Lcom/samsung/android/app/music/milk/advertise/AdPlayType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;->$VALUES:[Lcom/samsung/android/app/music/milk/advertise/AdPlayType;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;->value:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/advertise/AdPlayType;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-static {}, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;->values()[Lcom/samsung/android/app/music/milk/advertise/AdPlayType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 14
    .local v0, "type":Lcom/samsung/android/app/music/milk/advertise/AdPlayType;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 18
    .end local v0    # "type":Lcom/samsung/android/app/music/milk/advertise/AdPlayType;
    :goto_1
    return-object v0

    .line 13
    .restart local v0    # "type":Lcom/samsung/android/app/music/milk/advertise/AdPlayType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    .end local v0    # "type":Lcom/samsung/android/app/music/milk/advertise/AdPlayType;
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;->SONG:Lcom/samsung/android/app/music/milk/advertise/AdPlayType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/advertise/AdPlayType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/music/milk/advertise/AdPlayType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;->$VALUES:[Lcom/samsung/android/app/music/milk/advertise/AdPlayType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/milk/advertise/AdPlayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/milk/advertise/AdPlayType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;->value:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdPlayType{value=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
