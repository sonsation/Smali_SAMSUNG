.class public final Lcom/google/android/exoplayer/util/MimeTypes;
.super Ljava/lang/Object;
.source "MimeTypes.java"


# direct methods
.method public static getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "codecs"    # Ljava/lang/String;

    .prologue
    .line 164
    if-nez p0, :cond_0

    .line 165
    const-string v5, "audio/x-unknown"

    .line 188
    :goto_0
    return-object v5

    .line 167
    :cond_0
    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "codecList":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_c

    aget-object v1, v0, v3

    .line 169
    .local v1, "codec":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 170
    const-string v5, "mp4a"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 171
    const-string v5, "audio/mp4a-latm"

    goto :goto_0

    .line 172
    :cond_1
    const-string v5, "ac-3"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "dac3"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 173
    :cond_2
    const-string v5, "audio/ac3"

    goto :goto_0

    .line 174
    :cond_3
    const-string v5, "ec-3"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "dec3"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 175
    :cond_4
    const-string v5, "audio/eac3"

    goto :goto_0

    .line 176
    :cond_5
    const-string v5, "dtsc"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 177
    const-string v5, "audio/vnd.dts"

    goto :goto_0

    .line 178
    :cond_6
    const-string v5, "dtsh"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "dtsl"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 179
    :cond_7
    const-string v5, "audio/vnd.dts.hd"

    goto :goto_0

    .line 180
    :cond_8
    const-string v5, "dtse"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 181
    const-string v5, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_0

    .line 182
    :cond_9
    const-string/jumbo v5, "opus"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 183
    const-string v5, "audio/opus"

    goto :goto_0

    .line 184
    :cond_a
    const-string/jumbo v5, "vorbis"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 185
    const-string v5, "audio/vorbis"

    goto/16 :goto_0

    .line 168
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 188
    .end local v1    # "codec":Ljava/lang/String;
    :cond_c
    const-string v5, "audio/x-unknown"

    goto/16 :goto_0
.end method

.method private static getTopLevelType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 124
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 125
    .local v0, "indexOfSlash":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 126
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid mime type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "codecs"    # Ljava/lang/String;

    .prologue
    .line 138
    if-nez p0, :cond_0

    .line 139
    const-string/jumbo v5, "video/x-unknown"

    .line 154
    :goto_0
    return-object v5

    .line 141
    :cond_0
    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "codecList":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_7

    aget-object v1, v0, v3

    .line 143
    .local v1, "codec":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 144
    const-string v5, "avc1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "avc3"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 145
    :cond_1
    const-string/jumbo v5, "video/avc"

    goto :goto_0

    .line 146
    :cond_2
    const-string v5, "hev1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "hvc1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 147
    :cond_3
    const-string/jumbo v5, "video/hevc"

    goto :goto_0

    .line 148
    :cond_4
    const-string/jumbo v5, "vp9"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 149
    const-string/jumbo v5, "video/x-vnd.on2.vp9"

    goto :goto_0

    .line 150
    :cond_5
    const-string/jumbo v5, "vp8"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 151
    const-string/jumbo v5, "video/x-vnd.on2.vp8"

    goto :goto_0

    .line 142
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 154
    .end local v1    # "codec":Ljava/lang/String;
    :cond_7
    const-string/jumbo v5, "video/x-unknown"

    goto :goto_0
.end method

.method public static isAudio(Ljava/lang/String;)Z
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {p0}, Lcom/google/android/exoplayer/util/MimeTypes;->getTopLevelType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isText(Ljava/lang/String;)Z
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-static {p0}, Lcom/google/android/exoplayer/util/MimeTypes;->getTopLevelType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isVideo(Ljava/lang/String;)Z
    .locals 2
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {p0}, Lcom/google/android/exoplayer/util/MimeTypes;->getTopLevelType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
