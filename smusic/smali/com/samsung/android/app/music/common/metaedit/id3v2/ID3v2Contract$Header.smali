.class Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Header;
.super Ljava/lang/Object;
.source "ID3v2Contract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Header"
.end annotation


# static fields
.field static final BYTES_EMPTY_FLAG:[B

.field static final BYTES_IDENTIFIER:[B

.field static final FLAG_EXTENDED_HEADER:B = 0x40t

.field static final IDENTIFIER:Ljava/lang/String; = "494433"

.field static final INDEX_VERSION_MAJOR:I = 0x0

.field static final LENGTH_FLAGS:I = 0x1

.field static final LENGTH_IDENTIFIER:I = 0x3

.field static final LENGTH_SIZE:I = 0x4

.field static final LENGTH_VERSION:I = 0x2

.field static final LENGTH_WHOLE:I = 0xa

.field static final MAJOR_V2:B = 0x2t

.field static final MAJOR_V3:B = 0x3t

.field static final MAJOR_V4:B = 0x4t

.field static final MINOR_V0:B = 0x0t

.field static final OFFSET_TAG_SIZE:J = 0x6L

.field static final OFFSET_VERSION_MAJOR:J = 0x3L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Header;->BYTES_IDENTIFIER:[B

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Header;->BYTES_EMPTY_FLAG:[B

    return-void

    .line 44
    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
