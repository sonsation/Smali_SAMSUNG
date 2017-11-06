.class public final Lcom/google/android/exoplayer/extractor/GaplessInfo;
.super Ljava/lang/Object;
.source "GaplessInfo.java"


# static fields
.field private static final GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final encoderDelay:I

.field public final encoderPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/extractor/GaplessInfo;->GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0
    .param p1, "encoderDelay"    # I
    .param p2, "encoderPadding"    # I

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lcom/google/android/exoplayer/extractor/GaplessInfo;->encoderDelay:I

    .line 85
    iput p2, p0, Lcom/google/android/exoplayer/extractor/GaplessInfo;->encoderPadding:I

    .line 86
    return-void
.end method

.method public static createFromComment(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer/extractor/GaplessInfo;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 38
    const-string v4, "iTunSMPB"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-object v3

    .line 41
    :cond_1
    sget-object v4, Lcom/google/android/exoplayer/extractor/GaplessInfo;->GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 42
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 44
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 45
    .local v0, "encoderDelay":I
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 46
    .local v1, "encoderPadding":I
    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    :cond_2
    new-instance v4, Lcom/google/android/exoplayer/extractor/GaplessInfo;

    invoke-direct {v4, v0, v1}, Lcom/google/android/exoplayer/extractor/GaplessInfo;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_0

    .line 48
    .end local v0    # "encoderDelay":I
    .end local v1    # "encoderPadding":I
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static createFromXingHeaderValue(I)Lcom/google/android/exoplayer/extractor/GaplessInfo;
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 62
    shr-int/lit8 v0, p0, 0xc

    .line 63
    .local v0, "encoderDelay":I
    and-int/lit16 v1, p0, 0xfff

    .line 64
    .local v1, "encoderPadding":I
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/google/android/exoplayer/extractor/GaplessInfo;

    invoke-direct {v2, v0, v1}, Lcom/google/android/exoplayer/extractor/GaplessInfo;-><init>(II)V

    goto :goto_0
.end method
