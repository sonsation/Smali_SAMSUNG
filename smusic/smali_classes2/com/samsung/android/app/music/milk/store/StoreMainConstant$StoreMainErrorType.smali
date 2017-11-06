.class public final enum Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;
.super Ljava/lang/Enum;
.source "StoreMainConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/StoreMainConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StoreMainErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

.field public static final enum LEGAL_NOT_AGREED:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

.field public static final enum NO_CONNECTION:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

.field public static final enum NO_ERROR:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

.field public static final enum SERVICE_NOT_CONNECTED:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

.field public static final enum TIME_OUT:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

.field public static final enum UNKNOWN:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;


# instance fields
.field private final mMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 183
    new-instance v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    const-string v1, "NO_ERROR"

    const-string v2, "No error !!"

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->NO_ERROR:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    .line 184
    new-instance v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    const-string v1, "UNKNOWN"

    const-string v2, "Unknown error !!"

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->UNKNOWN:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    .line 185
    new-instance v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    const-string v1, "TIME_OUT"

    const-string v2, "Time out !! "

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->TIME_OUT:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    .line 186
    new-instance v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    const-string v1, "NO_CONNECTION"

    const-string v2, "No connection !!"

    invoke-direct {v0, v1, v7, v2}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->NO_CONNECTION:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    .line 187
    new-instance v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    const-string v1, "SERVICE_NOT_CONNECTED"

    const-string v2, "No service connection !!"

    invoke-direct {v0, v1, v8, v2}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    .line 188
    new-instance v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    const-string v1, "LEGAL_NOT_AGREED"

    const/4 v2, 0x5

    const-string v3, "Legal not agreed"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->LEGAL_NOT_AGREED:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    .line 182
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->NO_ERROR:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->UNKNOWN:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->TIME_OUT:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->NO_CONNECTION:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->LEGAL_NOT_AGREED:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->$VALUES:[Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 192
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 193
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->mMessage:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public static fromException(Ljava/lang/Throwable;)Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;
    .locals 2
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 201
    sget-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->UNKNOWN:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    .line 202
    .local v0, "errorType":Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;
    instance-of v1, p0, Ljava/util/concurrent/TimeoutException;

    if-eqz v1, :cond_0

    .line 203
    sget-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->TIME_OUT:Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    .line 206
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 182
    const-class v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->$VALUES:[Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;

    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainErrorType;->mMessage:Ljava/lang/String;

    return-object v0
.end method
