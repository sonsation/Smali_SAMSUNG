.class public Lcom/samsung/android/app/musiclibrary/ui/provider/PinyinUtil;
.super Ljava/lang/Object;
.source "PinyinUtil.java"


# static fields
.field protected static mCollator:Ljava/text/Collator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeChineseSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "displayName"    # Ljava/lang/String;

    .prologue
    .line 12
    const-string v13, "<unknown>"

    invoke-virtual {p0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 13
    const-string v10, "\u0001"

    .line 75
    :cond_0
    :goto_0
    return-object v10

    .line 15
    :cond_1
    const-string v13, "[\\[\\]\\(\\)\"\'.,?!]"

    const-string v14, ""

    invoke-virtual {p0, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;

    move-result-object v13

    invoke-virtual {v13, p0}, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin;->getTokens(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 17
    .local v12, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;>;"
    const-string v6, ""

    .line 19
    .local v6, "result":Ljava/lang/String;
    if-eqz v12, :cond_10

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_10

    .line 20
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 21
    .local v5, "n":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .local v3, "keyBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_5

    .line 23
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;

    .line 24
    .local v11, "token":Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;
    iget v13, v11, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->type:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_3

    .line 25
    iget-object v13, v11, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 26
    .local v7, "sources":[C
    iget-object v13, v11, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->target:Ljava/lang/String;

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 27
    .local v9, "targets":[Ljava/lang/String;
    array-length v13, v7

    array-length v14, v9

    if-ge v13, v14, :cond_2

    array-length v4, v7

    .line 29
    .local v4, "m":I
    :goto_2
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    if-ge v2, v4, :cond_4

    .line 30
    aget-object v13, v9, v2

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 27
    .end local v2    # "j":I
    .end local v4    # "m":I
    :cond_2
    array-length v4, v9

    goto :goto_2

    .line 36
    .end local v7    # "sources":[C
    .end local v9    # "targets":[Ljava/lang/String;
    :cond_3
    iget-object v13, v11, Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;->target:Ljava/lang/String;

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 37
    .restart local v9    # "targets":[Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_4
    array-length v13, v9

    if-ge v2, v13, :cond_4

    .line 38
    aget-object v13, v9, v2

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const/16 v13, 0x20

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 22
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 44
    .end local v2    # "j":I
    .end local v9    # "targets":[Ljava/lang/String;
    .end local v11    # "token":Lcom/samsung/android/app/musiclibrary/ui/provider/HanziToPinyin$Token;
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    .line 45
    .local v10, "tmp":Ljava/lang/String;
    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "firstLetter":Ljava/lang/String;
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v13

    sput-object v13, Lcom/samsung/android/app/musiclibrary/ui/provider/PinyinUtil;->mCollator:Ljava/text/Collator;

    .line 47
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 49
    .local v8, "symbol":Ljava/lang/String;
    sget-object v13, Lcom/samsung/android/app/musiclibrary/ui/provider/PinyinUtil;->mCollator:Ljava/text/Collator;

    const-string v14, "#"

    invoke-virtual {v13, v0, v14}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_6

    .line 50
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 51
    :cond_6
    const-string v13, "%7C"

    invoke-virtual {v8, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_7

    .line 52
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 53
    :cond_7
    const-string v13, "%5B"

    invoke-virtual {v8, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_8

    .line 54
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 55
    :cond_8
    const-string/jumbo v13, "~"

    invoke-virtual {v8, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_9

    .line 56
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 57
    :cond_9
    const-string v13, "_"

    invoke-virtual {v8, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_a

    .line 58
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 59
    :cond_a
    const-string v13, "%C2%A2"

    invoke-virtual {v8, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_b

    .line 60
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 61
    :cond_b
    const-string v13, "%C2%A3"

    invoke-virtual {v8, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_c

    .line 62
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 63
    :cond_c
    const-string v13, "%C2%A5"

    invoke-virtual {v8, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_d

    .line 64
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 65
    :cond_d
    const-string v13, "%C3%97"

    invoke-virtual {v8, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_e

    .line 66
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 67
    :cond_e
    const-string v13, "%C3%B7"

    invoke-virtual {v8, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_f

    .line 68
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 69
    :cond_f
    const-string v13, "%E2%82%AC"

    invoke-virtual {v8, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_0

    .line 70
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .end local v0    # "firstLetter":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v3    # "keyBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "n":I
    .end local v8    # "symbol":Ljava/lang/String;
    .end local v10    # "tmp":Ljava/lang/String;
    :cond_10
    move-object v10, v6

    .line 75
    goto/16 :goto_0
.end method
