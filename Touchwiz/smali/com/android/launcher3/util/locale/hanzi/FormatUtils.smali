.class public Lcom/android/launcher3/util/locale/hanzi/FormatUtils;
.super Ljava/lang/Object;
.source "FormatUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static indexOfWordPrefix(Ljava/lang/CharSequence;Ljava/lang/String;)I
    .locals 8
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 34
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move v0, v4

    .line 80
    :cond_1
    :goto_0
    return v0

    .line 37
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 38
    .local v3, "textLength":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 40
    .local v2, "prefixLength":I
    if-eqz v2, :cond_3

    if-ge v3, v2, :cond_4

    :cond_3
    move v0, v4

    .line 41
    goto :goto_0

    .line 49
    :cond_4
    const/4 v0, 0x0

    .line 50
    .local v0, "i":I
    :cond_5
    if-ge v0, v3, :cond_a

    .line 52
    :goto_1
    if-ge v0, v3, :cond_6

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_6

    .line 53
    const-string v5, "STT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "text.charAt(i) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 57
    :cond_6
    add-int v5, v0, v2

    if-le v5, v3, :cond_7

    move v0, v4

    .line 58
    goto :goto_0

    .line 63
    :cond_7
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-ge v1, v2, :cond_8

    .line 64
    add-int v5, v0, v1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_9

    .line 68
    :cond_8
    if-eq v1, v2, :cond_1

    .line 73
    :goto_3
    if-ge v0, v3, :cond_5

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 74
    const-string v5, "STT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "text.charAt(i) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 63
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "j":I
    :cond_a
    move v0, v4

    .line 80
    goto/16 :goto_0
.end method
