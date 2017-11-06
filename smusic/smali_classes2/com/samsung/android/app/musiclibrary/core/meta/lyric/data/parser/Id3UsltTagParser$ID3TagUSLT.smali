.class Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$ID3TagUSLT;
.super Ljava/lang/Object;
.source "Id3UsltTagParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ID3TagUSLT"
.end annotation


# static fields
.field static final TAG_LYRIC_CONTENTS_DESCRIPTO_NONUNICODE:I = 0x1

.field static final TAG_LYRIC_CONTENTS_DESCRIPTO_UNICODE:I = 0x2

.field static final TAG_LYRIC_ENCODING:I = 0x1

.field static final TAG_LYRIC_LANGUAGE:I = 0x3

.field static final USLT:Ljava/lang/String; = "USLT"


# instance fields
.field final encoding:[B

.field final language:[B

.field final nonUnicodDescripto:[B

.field unicodDescripto:[B


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$ID3TagUSLT;->encoding:[B

    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$ID3TagUSLT;->language:[B

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$ID3TagUSLT;->unicodDescripto:[B

    .line 58
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$ID3TagUSLT;->nonUnicodDescripto:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$1;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UsltTagParser$ID3TagUSLT;-><init>()V

    return-void
.end method
