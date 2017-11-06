.class public final enum Lcom/devbrackets/android/exomedia/type/MediaSourceType;
.super Ljava/lang/Enum;
.source "MediaSourceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/devbrackets/android/exomedia/type/MediaSourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/devbrackets/android/exomedia/type/MediaSourceType;

.field public static final enum AAC:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

.field public static final enum DASH:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

.field public static final enum FMP4:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

.field public static final enum HLS:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

.field public static final enum M4A:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

.field public static final enum MKV:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

.field public static final enum MP3:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

.field public static final enum MP4:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

.field public static final enum SMOOTH_STREAM:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

.field public static final enum TS:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

.field public static final enum UNKNOWN:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

.field public static final enum WEBM:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

.field public static final enum _3GP:Lcom/devbrackets/android/exomedia/type/MediaSourceType;


# instance fields
.field private extension:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private looseComparisonRegex:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 8
    new-instance v0, Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    const-string v1, "AAC"

    const-string v2, ".aac"

    invoke-direct {v0, v1, v6, v2, v5}, Lcom/devbrackets/android/exomedia/type/MediaSourceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->AAC:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    .line 9
    new-instance v0, Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    const-string v1, "MP4"

    const-string v2, ".mp4"

    invoke-direct {v0, v1, v7, v2, v5}, Lcom/devbrackets/android/exomedia/type/MediaSourceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->MP4:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    .line 10
    new-instance v0, Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    const-string v1, "MP3"

    const-string v2, ".mp3"

    invoke-direct {v0, v1, v8, v2, v5}, Lcom/devbrackets/android/exomedia/type/MediaSourceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->MP3:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    .line 11
    new-instance v0, Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    const-string v1, "M4A"

    const-string v2, ".m4a"

    invoke-direct {v0, v1, v9, v2, v5}, Lcom/devbrackets/android/exomedia/type/MediaSourceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->M4A:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    .line 12
    new-instance v0, Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    const-string v1, "FMP4"

    const/4 v2, 0x4

    const-string v3, ".fmp4"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/devbrackets/android/exomedia/type/MediaSourceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->FMP4:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    .line 13
    new-instance v0, Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    const-string v1, "TS"

    const/4 v2, 0x5

    const-string v3, ".ts"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/devbrackets/android/exomedia/type/MediaSourceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->TS:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    .line 14
    new-instance v0, Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    const-string v1, "WEBM"

    const/4 v2, 0x6

    const-string v3, ".webm"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/devbrackets/android/exomedia/type/MediaSourceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->WEBM:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    .line 15
    new-instance v0, Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    const-string v1, "MKV"

    const/4 v2, 0x7

    const-string v3, ".mkv"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/devbrackets/android/exomedia/type/MediaSourceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->MKV:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    .line 16
    new-instance v0, Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    const-string v1, "_3GP"

    const/16 v2, 0x8

    const-string v3, ".3gp"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/devbrackets/android/exomedia/type/MediaSourceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->_3GP:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    .line 17
    new-instance v0, Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    const-string v1, "HLS"

    const/16 v2, 0x9

    const-string v3, ".m3u8"

    const-string v4, ".*m3u8.*"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/devbrackets/android/exomedia/type/MediaSourceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->HLS:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    .line 18
    new-instance v0, Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    const-string v1, "DASH"

    const/16 v2, 0xa

    const-string v3, ".mpd"

    const-string v4, ".*mpd.*"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/devbrackets/android/exomedia/type/MediaSourceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->DASH:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    .line 19
    new-instance v0, Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    const-string v1, "SMOOTH_STREAM"

    const/16 v2, 0xb

    const-string v3, ".ism"

    const-string v4, ".*ism.*"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/devbrackets/android/exomedia/type/MediaSourceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->SMOOTH_STREAM:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    .line 20
    new-instance v0, Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    const-string v1, "UNKNOWN"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v5, v5}, Lcom/devbrackets/android/exomedia/type/MediaSourceType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->UNKNOWN:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    .line 7
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    sget-object v1, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->AAC:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->MP4:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->MP3:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->M4A:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    aput-object v1, v0, v9

    const/4 v1, 0x4

    sget-object v2, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->FMP4:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->TS:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->WEBM:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->MKV:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->_3GP:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->HLS:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->DASH:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->SMOOTH_STREAM:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->UNKNOWN:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->$VALUES:[Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "extension"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "looseComparisonRegex"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput-object p3, p0, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->extension:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->looseComparisonRegex:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static getByExtension(Ljava/lang/String;)Lcom/devbrackets/android/exomedia/type/MediaSourceType;
    .locals 5
    .param p0, "extension"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 44
    invoke-static {}, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->values()[Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 45
    .local v0, "type":Lcom/devbrackets/android/exomedia/type/MediaSourceType;
    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->getExtension()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->getExtension()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    .end local v0    # "type":Lcom/devbrackets/android/exomedia/type/MediaSourceType;
    :goto_1
    return-object v0

    .line 44
    .restart local v0    # "type":Lcom/devbrackets/android/exomedia/type/MediaSourceType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    .end local v0    # "type":Lcom/devbrackets/android/exomedia/type/MediaSourceType;
    :cond_1
    sget-object v0, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->UNKNOWN:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    goto :goto_1
.end method

.method public static getByLooseComparison(Landroid/net/Uri;)Lcom/devbrackets/android/exomedia/type/MediaSourceType;
    .locals 6
    .param p0, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 55
    invoke-static {}, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->values()[Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 56
    .local v0, "type":Lcom/devbrackets/android/exomedia/type/MediaSourceType;
    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->getLooseComparisonRegex()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->getLooseComparisonRegex()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    .end local v0    # "type":Lcom/devbrackets/android/exomedia/type/MediaSourceType;
    :goto_1
    return-object v0

    .line 55
    .restart local v0    # "type":Lcom/devbrackets/android/exomedia/type/MediaSourceType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "type":Lcom/devbrackets/android/exomedia/type/MediaSourceType;
    :cond_1
    sget-object v0, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->UNKNOWN:Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/devbrackets/android/exomedia/type/MediaSourceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    return-object v0
.end method

.method public static values()[Lcom/devbrackets/android/exomedia/type/MediaSourceType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->$VALUES:[Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    invoke-virtual {v0}, [Lcom/devbrackets/android/exomedia/type/MediaSourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    return-object v0
.end method


# virtual methods
.method public getExtension()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getLooseComparisonRegex()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->looseComparisonRegex:Ljava/lang/String;

    return-object v0
.end method
