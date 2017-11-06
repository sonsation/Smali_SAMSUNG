.class public final enum Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;
.super Ljava/lang/Enum;
.source "ConnectivityObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

.field public static final enum CONNECT:Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

.field public static final enum DISCONNECT:Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

.field public static final enum NONE:Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;->NONE:Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

    const-string v1, "CONNECT"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;->CONNECT:Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

    new-instance v0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

    const-string v1, "DISCONNECT"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;->DISCONNECT:Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

    sget-object v1, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;->NONE:Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;->CONNECT:Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;->DISCONNECT:Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;->$VALUES:[Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;->$VALUES:[Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

    return-object v0
.end method
