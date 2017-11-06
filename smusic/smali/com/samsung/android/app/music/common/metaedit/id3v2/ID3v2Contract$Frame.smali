.class Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Frame;
.super Ljava/lang/Object;
.source "ID3v2Contract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Frame"
.end annotation


# static fields
.field static final ALBUM:Ljava/lang/String; = "54414c42"

.field static final ALBUM_ART:Ljava/lang/String; = "41504943"

.field static final ALBUM_ARTIST:Ljava/lang/String; = "54504532"

.field static final APIC:Ljava/lang/String; = "41504943"

.field static final ARTIST:Ljava/lang/String; = "54504531"

.field static final BYTES_ALBUM:[B

.field static final BYTES_ALBUM_ART:[B

.field static final BYTES_ALBUM_ARTIST:[B

.field static final BYTES_ARTIST:[B

.field static final BYTES_DISC_NUMBER:[B

.field static final BYTES_EMPTY_FLAG:[B

.field static final BYTES_GENRE:[B

.field static final BYTES_TDRC:[B

.field static final BYTES_TITLE:[B

.field static final BYTES_TRACK_NUMBER:[B

.field static final BYTES_YEAR:[B

.field static final DISC_NUMBER:Ljava/lang/String; = "54504f53"

.field static final EQUA:Ljava/lang/String; = "45515541"

.field static final FLAG_COMPRESSION:B = 0x8t

.field static final FLAG_DATA_LENGTH_INDICATOR:B = 0x1t

.field static final FLAG_ENCRYPTION:B = 0x4t

.field static final FLAG_FILE_ALTER_PRESERVATION:B = 0x20t

.field static final FLAG_READ_ONLY:B = 0x10t

.field static final FLAG_TAG_ALTER_PRESERVATION:B = 0x40t

.field static final GENRE:Ljava/lang/String; = "54434f4e"

.field static final INDEX_FRAME_FORMAT_FLAG:I = 0x1

.field static final IPLS:Ljava/lang/String; = "49504c53"

.field static final ISO_8859_1:B = 0x0t

.field static final LENGTH_DATA_LENGTH_INDICATOR:I = 0x4

.field static final LENGTH_ENCODING_FIELD:I = 0x1

.field static final LENGTH_FLAGS:I = 0x2

.field static final LENGTH_HEADER:I = 0xa

.field static final LENGTH_ID:I = 0x4

.field static final LENGTH_SIZE:I = 0x4

.field static final OFFSET_FRAME_FORMAT_FLAG:J = 0x9L

.field static final RVAD:Ljava/lang/String; = "52564144"

.field static final TALB:Ljava/lang/String; = "54414c42"

.field static final TCON:Ljava/lang/String; = "54434f4e"

.field static final TDAT:Ljava/lang/String; = "54444154"

.field static final TDRC:Ljava/lang/String; = "54445243"

.field static final TIME:Ljava/lang/String; = "54494d45"

.field static final TIT2:Ljava/lang/String; = "54495432"

.field static final TITLE:Ljava/lang/String; = "54495432"

.field static final TORY:Ljava/lang/String; = "544f5259"

.field static final TPE1:Ljava/lang/String; = "54504531"

.field static final TPE2:Ljava/lang/String; = "54504532"

.field static final TPOS:Ljava/lang/String; = "54504f53"

.field static final TRACK_NUMBER:Ljava/lang/String; = "5452434b"

.field static final TRCK:Ljava/lang/String; = "5452434b"

.field static final TRDA:Ljava/lang/String; = "54524441"

.field static final TSIZ:Ljava/lang/String; = "5453495a"

.field static final TYER:Ljava/lang/String; = "54594552"

.field static final UTF_16:B = 0x1t

.field static final UTF_16BE_NO_BOM:B = 0x2t

.field static final UTF_8:B = 0x3t

.field static final YEAR:Ljava/lang/String; = "54594552"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 216
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Frame;->BYTES_EMPTY_FLAG:[B

    .line 218
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Frame;->BYTES_TITLE:[B

    .line 220
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Frame;->BYTES_ARTIST:[B

    .line 222
    new-array v0, v1, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Frame;->BYTES_ALBUM:[B

    .line 224
    new-array v0, v1, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Frame;->BYTES_ALBUM_ARTIST:[B

    .line 226
    new-array v0, v1, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Frame;->BYTES_GENRE:[B

    .line 232
    new-array v0, v1, [B

    fill-array-data v0, :array_6

    sput-object v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Frame;->BYTES_YEAR:[B

    .line 234
    new-array v0, v1, [B

    fill-array-data v0, :array_7

    sput-object v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Frame;->BYTES_TDRC:[B

    .line 236
    new-array v0, v1, [B

    fill-array-data v0, :array_8

    sput-object v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Frame;->BYTES_TRACK_NUMBER:[B

    .line 238
    new-array v0, v1, [B

    fill-array-data v0, :array_9

    sput-object v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Frame;->BYTES_DISC_NUMBER:[B

    .line 240
    new-array v0, v1, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/samsung/android/app/music/common/metaedit/id3v2/ID3v2Contract$Frame;->BYTES_ALBUM_ART:[B

    return-void

    .line 216
    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    .line 218
    nop

    :array_1
    .array-data 1
        0x54t
        0x49t
        0x54t
        0x32t
    .end array-data

    .line 220
    :array_2
    .array-data 1
        0x54t
        0x50t
        0x45t
        0x31t
    .end array-data

    .line 222
    :array_3
    .array-data 1
        0x54t
        0x41t
        0x4ct
        0x42t
    .end array-data

    .line 224
    :array_4
    .array-data 1
        0x54t
        0x50t
        0x45t
        0x32t
    .end array-data

    .line 226
    :array_5
    .array-data 1
        0x54t
        0x43t
        0x4ft
        0x4et
    .end array-data

    .line 232
    :array_6
    .array-data 1
        0x54t
        0x59t
        0x45t
        0x52t
    .end array-data

    .line 234
    :array_7
    .array-data 1
        0x54t
        0x44t
        0x52t
        0x43t
    .end array-data

    .line 236
    :array_8
    .array-data 1
        0x54t
        0x52t
        0x43t
        0x4bt
    .end array-data

    .line 238
    :array_9
    .array-data 1
        0x54t
        0x50t
        0x4ft
        0x53t
    .end array-data

    .line 240
    :array_a
    .array-data 1
        0x41t
        0x50t
        0x49t
        0x43t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
