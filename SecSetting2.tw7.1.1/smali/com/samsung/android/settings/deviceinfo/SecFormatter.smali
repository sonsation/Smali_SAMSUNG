.class public final Lcom/samsung/android/settings/deviceinfo/SecFormatter;
.super Ljava/lang/Object;
.source "SecFormatter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 65
    .local v0, "locale":Ljava/util/Locale;
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 66
    invoke-static {v2}, Landroid/text/BidiFormatter;->getInstance(Z)Landroid/text/BidiFormatter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 68
    :cond_0
    return-object p1
.end method

.method public static formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "bytes"    # J
    .param p3, "isAvailableSize"    # I

    .prologue
    const/4 v0, 0x0

    .line 90
    if-nez p3, :cond_0

    :goto_0
    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/settings/deviceinfo/SecFormatter;->formatBytes(Landroid/content/res/Resources;JZ)Landroid/text/format/Formatter$BytesResult;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static formatBytes(Landroid/content/res/Resources;JZ)Landroid/text/format/Formatter$BytesResult;
    .locals 11
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "bytes"    # J
    .param p3, "isAvailableSize"    # Z

    .prologue
    .line 97
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-nez v6, :cond_0

    .line 98
    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2}, Ljava/text/DecimalFormat;-><init>()V

    .line 99
    .local v2, "mMBFormat":Ljava/text/DecimalFormat;
    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "number":Ljava/lang/String;
    const v6, 0x10400a0

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 133
    .end local v2    # "mMBFormat":Ljava/text/DecimalFormat;
    .local v5, "unit":Ljava/lang/String;
    :goto_0
    new-instance v6, Landroid/text/format/Formatter$BytesResult;

    const-wide/16 v8, 0x0

    invoke-direct {v6, v3, v5, v8, v9}, Landroid/text/format/Formatter$BytesResult;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v6

    .line 101
    .end local v3    # "number":Ljava/lang/String;
    .end local v5    # "unit":Ljava/lang/String;
    :cond_0
    const-wide/16 v6, 0x3e8

    cmp-long v6, p1, v6

    if-gez v6, :cond_1

    .line 102
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    .line 103
    .local v0, "mByteFormat":Ljava/text/DecimalFormat;
    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    .line 104
    .restart local v3    # "number":Ljava/lang/String;
    const v6, 0x104009e

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "unit":Ljava/lang/String;
    goto :goto_0

    .line 105
    .end local v0    # "mByteFormat":Ljava/text/DecimalFormat;
    .end local v3    # "number":Ljava/lang/String;
    .end local v5    # "unit":Ljava/lang/String;
    :cond_1
    const-wide/32 v6, 0xf4240

    cmp-long v6, p1, v6

    if-gez v6, :cond_2

    .line 106
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    .line 107
    .restart local v0    # "mByteFormat":Ljava/text/DecimalFormat;
    const-wide/16 v6, 0x400

    div-long v6, p1, v6

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    .line 108
    .restart local v3    # "number":Ljava/lang/String;
    const v6, 0x104009f

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "unit":Ljava/lang/String;
    goto :goto_0

    .line 109
    .end local v0    # "mByteFormat":Ljava/text/DecimalFormat;
    .end local v3    # "number":Ljava/lang/String;
    .end local v5    # "unit":Ljava/lang/String;
    :cond_2
    const-wide/32 v6, 0x3b9aca00

    cmp-long v6, p1, v6

    if-gez v6, :cond_5

    .line 110
    const/4 v2, 0x0

    .line 111
    .local v2, "mMBFormat":Ljava/text/DecimalFormat;
    const-wide/32 v6, 0x100000

    div-long v6, p1, v6

    long-to-int v4, v6

    .line 112
    .local v4, "size":I
    const/16 v6, 0xa

    if-ge v4, v6, :cond_3

    .line 113
    new-instance v2, Ljava/text/DecimalFormat;

    .end local v2    # "mMBFormat":Ljava/text/DecimalFormat;
    const-string/jumbo v6, "0.##"

    invoke-direct {v2, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 119
    .local v2, "mMBFormat":Ljava/text/DecimalFormat;
    :goto_1
    sget-object v6, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v2, v6}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 120
    long-to-double v6, p1

    const-wide/high16 v8, 0x4130000000000000L    # 1048576.0

    div-double/2addr v6, v8

    invoke-virtual {v2, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .line 121
    .restart local v3    # "number":Ljava/lang/String;
    const v6, 0x10400a0

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "unit":Ljava/lang/String;
    goto :goto_0

    .line 114
    .end local v3    # "number":Ljava/lang/String;
    .end local v5    # "unit":Ljava/lang/String;
    .local v2, "mMBFormat":Ljava/text/DecimalFormat;
    :cond_3
    const/16 v6, 0x64

    if-ge v4, v6, :cond_4

    .line 115
    new-instance v2, Ljava/text/DecimalFormat;

    .end local v2    # "mMBFormat":Ljava/text/DecimalFormat;
    const-string/jumbo v6, "#0.#"

    invoke-direct {v2, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .local v2, "mMBFormat":Ljava/text/DecimalFormat;
    goto :goto_1

    .line 117
    .local v2, "mMBFormat":Ljava/text/DecimalFormat;
    :cond_4
    new-instance v2, Ljava/text/DecimalFormat;

    .end local v2    # "mMBFormat":Ljava/text/DecimalFormat;
    const-string/jumbo v6, "##0"

    invoke-direct {v2, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .local v2, "mMBFormat":Ljava/text/DecimalFormat;
    goto :goto_1

    .line 123
    .end local v2    # "mMBFormat":Ljava/text/DecimalFormat;
    .end local v4    # "size":I
    :cond_5
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v6, "##0.#"

    invoke-direct {v1, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, "mGBFormat":Ljava/text/DecimalFormat;
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 125
    if-eqz p3, :cond_6

    sget-object v6, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    :goto_2
    invoke-virtual {v1, v6}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 129
    :goto_3
    long-to-double v6, p1

    const-wide/high16 v8, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .line 130
    .restart local v3    # "number":Ljava/lang/String;
    const v6, 0x10400a1

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "unit":Ljava/lang/String;
    goto/16 :goto_0

    .line 125
    .end local v3    # "number":Ljava/lang/String;
    .end local v5    # "unit":Ljava/lang/String;
    :cond_6
    sget-object v6, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    goto :goto_2

    .line 127
    :cond_7
    sget-object v6, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v1, v6}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    goto :goto_3
.end method

.method public static formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sizeBytes"    # J

    .prologue
    const/4 v3, 0x0

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, p2, v3}, Lcom/samsung/android/settings/deviceinfo/SecFormatter;->formatBytes(Landroid/content/res/Resources;JZ)Landroid/text/format/Formatter$BytesResult;

    move-result-object v0

    .line 74
    .local v0, "result":Landroid/text/format/Formatter$BytesResult;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x10400a4

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/settings/deviceinfo/SecFormatter;->bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatFileSize(Landroid/content/Context;JLcom/android/settings/deviceinfo/StorageItemPreference;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sizeBytes"    # J
    .param p3, "pref"    # Lcom/android/settings/deviceinfo/StorageItemPreference;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 80
    :try_start_0
    invoke-virtual {p3}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 85
    .local v1, "itemTitleId":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v3, 0x7f0b16cb

    if-ne v1, v3, :cond_0

    move v3, v4

    :goto_1
    invoke-static {v6, p1, p2, v3}, Lcom/samsung/android/settings/deviceinfo/SecFormatter;->formatBytes(Landroid/content/res/Resources;JZ)Landroid/text/format/Formatter$BytesResult;

    move-result-object v2

    .line 86
    .local v2, "result":Landroid/text/format/Formatter$BytesResult;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, v2, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v6, v3, v5

    iget-object v5, v2, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v5, v3, v4

    const v4, 0x10400a4

    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/samsung/android/settings/deviceinfo/SecFormatter;->bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 81
    .end local v1    # "itemTitleId":I
    .end local v2    # "result":Landroid/text/format/Formatter$BytesResult;
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .restart local v1    # "itemTitleId":I
    goto :goto_0

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    move v3, v5

    .line 85
    goto :goto_1
.end method

.method public static isUseSecFormatter(Lcom/android/settings/deviceinfo/StorageItemPreference;)Z
    .locals 3
    .param p0, "pref"    # Lcom/android/settings/deviceinfo/StorageItemPreference;

    .prologue
    .line 46
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 51
    .local v1, "itemTitleId":I
    :goto_0
    const v2, 0x7f0b16cd

    if-eq v2, v1, :cond_0

    .line 52
    const v2, 0x7f0b16cb

    if-ne v2, v1, :cond_1

    .line 55
    :cond_0
    const v2, 0x7f0b1719

    if-eq v2, v1, :cond_2

    .line 56
    const/4 v2, 0x1

    return v2

    .line 47
    .end local v1    # "itemTitleId":I
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .restart local v1    # "itemTitleId":I
    goto :goto_0

    .line 53
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    const v2, 0x7f0b05f8

    if-eq v2, v1, :cond_0

    .line 54
    const v2, 0x7f0b05f7

    if-eq v2, v1, :cond_0

    .line 58
    :cond_2
    const/4 v2, 0x0

    return v2
.end method
