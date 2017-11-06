.class public final enum Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;
.super Ljava/lang/Enum;
.source "ServerErrorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

.field public static final enum SE_CP_SERVER_ERROR:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

.field public static final enum SE_INVALID_ALBUM_ID:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

.field public static final enum SE_INVALID_ARTIST_ID:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

.field public static final enum SE_INVALID_PICK_ID:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

.field public static final enum SE_INVALID_TRACK_ID:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

.field public static final enum SE_MOD_DOWNLOAD_COUNT_OVERFLOW:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

.field public static final enum SE_MOD_ORDER:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

.field public static final enum SE_MOD_SEARCH:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

.field public static final enum SE_MOD_TRACK_MUSIC_VIDEO:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

.field public static final enum SE_NORMA_ERROR:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

.field private static final TAG:Ljava/lang/String;

.field private static final valueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mErrorCode:I

.field private final mResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    const v6, 0x7f0a02d7

    .line 13
    new-instance v2, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    const-string v3, "SE_NORMA_ERROR"

    const/4 v4, -0x1

    const v5, 0x7f0a02db

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_NORMA_ERROR:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    .line 14
    new-instance v2, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    const-string v3, "SE_CP_SERVER_ERROR"

    const/16 v4, 0x1389

    const v5, 0x7f0a02da

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_CP_SERVER_ERROR:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    .line 15
    new-instance v2, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    const-string v3, "SE_INVALID_ARTIST_ID"

    const/16 v4, 0x2008

    invoke-direct {v2, v3, v8, v4, v6}, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_INVALID_ARTIST_ID:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    .line 16
    new-instance v2, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    const-string v3, "SE_INVALID_ALBUM_ID"

    const/16 v4, 0x2009

    invoke-direct {v2, v3, v9, v4, v6}, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_INVALID_ALBUM_ID:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    .line 17
    new-instance v2, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    const-string v3, "SE_INVALID_PICK_ID"

    const/4 v4, 0x4

    const/16 v5, 0x200a

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_INVALID_PICK_ID:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    .line 18
    new-instance v2, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    const-string v3, "SE_INVALID_TRACK_ID"

    const/4 v4, 0x5

    const/16 v5, 0x200b

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_INVALID_TRACK_ID:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    .line 19
    new-instance v2, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    const-string v3, "SE_MOD_TRACK_MUSIC_VIDEO"

    const/4 v4, 0x6

    const/16 v5, 0x20d0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_MOD_TRACK_MUSIC_VIDEO:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    .line 20
    new-instance v2, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    const-string v3, "SE_MOD_SEARCH"

    const/4 v4, 0x7

    const/16 v5, 0x2134

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_MOD_SEARCH:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    .line 21
    new-instance v2, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    const-string v3, "SE_MOD_ORDER"

    const/16 v4, 0x8

    const/16 v5, 0x2198

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_MOD_ORDER:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    .line 22
    new-instance v2, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    const-string v3, "SE_MOD_DOWNLOAD_COUNT_OVERFLOW"

    const/16 v4, 0x9

    const/16 v5, 0x219a

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_MOD_DOWNLOAD_COUNT_OVERFLOW:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    .line 12
    const/16 v2, 0xa

    new-array v2, v2, [Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    sget-object v3, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_NORMA_ERROR:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    aput-object v3, v2, v1

    sget-object v3, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_CP_SERVER_ERROR:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    aput-object v3, v2, v7

    sget-object v3, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_INVALID_ARTIST_ID:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    aput-object v3, v2, v8

    sget-object v3, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_INVALID_ALBUM_ID:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    aput-object v3, v2, v9

    const/4 v3, 0x4

    sget-object v4, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_INVALID_PICK_ID:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_INVALID_TRACK_ID:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_MOD_TRACK_MUSIC_VIDEO:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_MOD_SEARCH:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_MOD_ORDER:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_MOD_DOWNLOAD_COUNT_OVERFLOW:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    aput-object v4, v2, v3

    sput-object v2, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->$VALUES:[Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    .line 24
    const-class v2, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->TAG:Ljava/lang/String;

    .line 32
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->valueMap:Ljava/util/Map;

    .line 35
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->values()[Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    move-result-object v2

    array-length v3, v2

    .local v0, "type":Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 36
    sget-object v4, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->valueMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->toErrorCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "errorCode"    # I
    .param p4, "stringResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->mErrorCode:I

    .line 42
    iput p4, p0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->mResId:I

    .line 43
    return-void
.end method

.method public static fromErrorCode(I)Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;
    .locals 3
    .param p0, "errorCode"    # I

    .prologue
    .line 50
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->valueMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromErrorCode: Unknown Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->SE_NORMA_ERROR:Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    .line 55
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->valueMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    goto :goto_0
.end method

.method private getResId()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->mResId:I

    return v0
.end method

.method public static toString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "errorCode"    # I

    .prologue
    .line 59
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->fromErrorCode(I)Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    move-result-object v1

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->getResId()I

    move-result v0

    .line 60
    .local v0, "resId":I
    const/16 v1, 0x1389

    if-ne p1, v1, :cond_0

    .line 61
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 63
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->$VALUES:[Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;

    return-object v0
.end method


# virtual methods
.method public toErrorCode()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->mErrorCode:I

    return v0
.end method
