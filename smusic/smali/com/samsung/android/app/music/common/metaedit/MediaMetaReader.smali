.class public Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;
.super Ljava/lang/Object;
.source "MediaMetaReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$OnCompletedParsingListener;,
        Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$ParsingTask;
    }
.end annotation


# static fields
.field private static final DISC_NUMBER_TRACK_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-MediaMetaReader"

.field private static final MAX_NUM_DISC_NUMBER:I = 0x1

.field private static final MAX_NUM_TRACK_NUMBER:I = 0x3

.field private static final PREFIX_UNICODE:Ljava/lang/String; = "UTF"

.field private static final TAG:Ljava/lang/String; = "MediaMetaReader"

.field private static final YEAR_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mMetaEditor:Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;

.field private mOnCompletedParsingListener:Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$OnCompletedParsingListener;

.field private mResultCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "([\\d]+)(/[\\d]+)?"

    .line 31
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;->DISC_NUMBER_TRACK_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 33
    const-string v0, "([\\d]{4})[\\D]?([\\d]{2})?[\\D]?([\\d]{2})?"

    .line 34
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    .line 33
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;->mResultCode:I

    .line 47
    return-void
.end method

.method static synthetic access$102(Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;)Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;
    .param p1, "x1"    # Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;->mMetaEditor:Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;

    return-object p1
.end method

.method static synthetic access$202(Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;->mResultCode:I

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;)Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$OnCompletedParsingListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;->mOnCompletedParsingListener:Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$OnCompletedParsingListener;

    return-object v0
.end method

.method private isNumericStringType(I)Z
    .locals 1
    .param p1, "metaType"    # I

    .prologue
    .line 147
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private normalizeTrackDiscNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "max"    # I

    .prologue
    const/4 v3, 0x0

    .line 177
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    :goto_0
    return-object v3

    .line 180
    :cond_0
    sget-object v4, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;->DISC_NUMBER_TRACK_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 181
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v3, p1

    .line 182
    goto :goto_0

    .line 185
    :cond_1
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 186
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 187
    .local v1, "len":I
    if-le v1, p2, :cond_2

    .line 188
    sub-int v4, v1, p2

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 190
    :cond_2
    const-string v4, "^0+(?!$)"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 191
    const-string v4, "MediaMetaReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "normalized track or disc number : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p1

    .line 192
    goto :goto_0

    .line 193
    .end local v1    # "len":I
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    const-string v4, "SMUSIC-MediaMetaReader"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private normalizeYear(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "year"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 172
    :goto_0
    return-object v4

    .line 156
    :cond_0
    sget-object v5, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 157
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v4, p1

    .line 158
    goto :goto_0

    .line 161
    :cond_1
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 162
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, "month":Ljava/lang/String;
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "day":Ljava/lang/String;
    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 165
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 168
    :cond_2
    const-string v5, "MediaMetaReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "normalized year : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, p1

    .line 169
    goto :goto_0

    .line 170
    .end local v0    # "day":Ljava/lang/String;
    .end local v3    # "month":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_1
    const-string v5, "SMUSIC-MediaMetaReader"

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 170
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private readInternal(Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;IILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "editor"    # Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;
    .param p2, "metaType"    # I
    .param p3, "resultCode"    # I
    .param p4, "encoding"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 107
    if-nez p1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-object v6

    .line 110
    :cond_1
    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;->getBytes(I)[B

    move-result-object v0

    .line 111
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    array-length v7, v0

    if-eqz v7, :cond_0

    .line 115
    if-ne p3, v8, :cond_3

    const/4 v7, 0x5

    if-eq p2, v7, :cond_2

    .line 116
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;->isNumericStringType(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 117
    :cond_2
    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 120
    :cond_3
    const/4 v7, 0x2

    if-ne p3, v7, :cond_4

    :try_start_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;->isNumericStringType(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 121
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/CharsetDetector;->findCharset([B)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "charset":Ljava/lang/String;
    const-string v7, "UTF-16"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 123
    const-string p4, "UTF-16"

    .line 127
    :goto_1
    packed-switch p2, :pswitch_data_0

    .line 140
    .end local v1    # "charset":Ljava/lang/String;
    :cond_4
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0, p4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 125
    .restart local v1    # "charset":Ljava/lang/String;
    :cond_5
    const-string p4, "ISO-8859-1"

    goto :goto_1

    .line 129
    :pswitch_0
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0, p4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "discNumber":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-direct {p0, v2, v7}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;->normalizeTrackDiscNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 132
    .end local v2    # "discNumber":Ljava/lang/String;
    :pswitch_1
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0, p4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, "trackNumber":Ljava/lang/String;
    const/4 v7, 0x3

    invoke-direct {p0, v4, v7}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;->normalizeTrackDiscNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 135
    .end local v4    # "trackNumber":Ljava/lang/String;
    :pswitch_2
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0, p4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, "year":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;->normalizeYear(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 141
    .end local v1    # "charset":Ljava/lang/String;
    .end local v5    # "year":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 142
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method checkUnifiedUnicodeEncoding(Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "metaTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .line 71
    iget-object v5, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;->mMetaEditor:Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;

    if-nez v5, :cond_1

    move-object v3, v6

    .line 99
    :cond_0
    :goto_0
    return-object v3

    .line 74
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v2, "charsetList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 76
    .local v4, "metaType":I
    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;->isNumericStringType(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 79
    iget-object v5, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;->mMetaEditor:Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;

    invoke-interface {v5, v4}, Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;->getBytes(I)[B

    move-result-object v0

    .line 80
    .local v0, "bytes":[B
    if-eqz v0, :cond_2

    array-length v5, v0

    if-lez v5, :cond_2

    .line 81
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/CharsetDetector;->findCharset([B)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "charset":Ljava/lang/String;
    const-string v5, "MediaMetaReader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "charset : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v5, "UTF-16"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 84
    const-string v1, "UTF-16"

    .line 86
    :cond_3
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 87
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 91
    .end local v0    # "bytes":[B
    .end local v1    # "charset":Ljava/lang/String;
    .end local v4    # "metaType":I
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_5

    .line 92
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 93
    .local v3, "charsetString":Ljava/lang/String;
    const-string v5, "MediaMetaReader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unified charset : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v5, "UTF"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .end local v3    # "charsetString":Ljava/lang/String;
    :cond_5
    move-object v3, v6

    .line 99
    goto/16 :goto_0
.end method

.method getResultCode()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;->mResultCode:I

    return v0
.end method

.method parse(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 54
    new-instance v0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$ParsingTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$ParsingTask;-><init>(Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$1;)V

    .line 55
    .local v0, "parsingTask":Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$ParsingTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$ParsingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 56
    return-void
.end method

.method read(Ljava/util/List;Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 5
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "metaTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;->mMetaEditor:Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;

    if-nez v2, :cond_1

    .line 60
    const/4 v0, 0x0

    .line 67
    :cond_0
    return-object v0

    .line 62
    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 63
    .local v0, "infoSparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 64
    .local v1, "metaType":I
    iget-object v2, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;->mMetaEditor:Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;

    iget v4, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;->mResultCode:I

    .line 65
    invoke-direct {p0, v2, v1, v4, p2}, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;->readInternal(Lcom/samsung/android/app/music/common/metaedit/IMetaEditor;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method setOnCompletedParsingListener(Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$OnCompletedParsingListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$OnCompletedParsingListener;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader;->mOnCompletedParsingListener:Lcom/samsung/android/app/music/common/metaedit/MediaMetaReader$OnCompletedParsingListener;

    .line 51
    return-void
.end method
