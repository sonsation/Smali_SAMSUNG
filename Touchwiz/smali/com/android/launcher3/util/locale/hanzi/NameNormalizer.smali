.class public Lcom/android/launcher3/util/locale/hanzi/NameNormalizer;
.super Ljava/lang/Object;
.source "NameNormalizer.java"


# static fields
.field private static final sComplexityCollator:Ljava/text/RuleBasedCollator;

.field private static final sCompressingCollator:Ljava/text/RuleBasedCollator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 35
    const-string v0, "ga_IE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "et_EE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    :cond_0
    const-string v0, "NameNormalizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ sCompressingCollator set to u k  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    check-cast v0, Ljava/text/RuleBasedCollator;

    sput-object v0, Lcom/android/launcher3/util/locale/hanzi/NameNormalizer;->sCompressingCollator:Ljava/text/RuleBasedCollator;

    .line 41
    :goto_0
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/NameNormalizer;->sCompressingCollator:Ljava/text/RuleBasedCollator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/RuleBasedCollator;->setStrength(I)V

    .line 42
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/NameNormalizer;->sCompressingCollator:Ljava/text/RuleBasedCollator;

    invoke-virtual {v0, v3}, Ljava/text/RuleBasedCollator;->setDecomposition(I)V

    .line 47
    const-string v0, "ga_IE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "et_EE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    :cond_1
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    check-cast v0, Ljava/text/RuleBasedCollator;

    sput-object v0, Lcom/android/launcher3/util/locale/hanzi/NameNormalizer;->sComplexityCollator:Ljava/text/RuleBasedCollator;

    .line 52
    :goto_1
    sget-object v0, Lcom/android/launcher3/util/locale/hanzi/NameNormalizer;->sComplexityCollator:Ljava/text/RuleBasedCollator;

    invoke-virtual {v0, v3}, Ljava/text/RuleBasedCollator;->setStrength(I)V

    .line 53
    return-void

    .line 39
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    check-cast v0, Ljava/text/RuleBasedCollator;

    sput-object v0, Lcom/android/launcher3/util/locale/hanzi/NameNormalizer;->sCompressingCollator:Ljava/text/RuleBasedCollator;

    goto :goto_0

    .line 50
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    check-cast v0, Ljava/text/RuleBasedCollator;

    sput-object v0, Lcom/android/launcher3/util/locale/hanzi/NameNormalizer;->sComplexityCollator:Ljava/text/RuleBasedCollator;

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 97
    .local v4, "letters":[C
    const/4 v2, 0x0

    .line 98
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 99
    aget-char v0, v4, v1

    .line 100
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 101
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "length":I
    .local v3, "length":I
    aput-char v0, v4, v2

    move v2, v3

    .line 98
    .end local v3    # "length":I
    .restart local v2    # "length":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "c":C
    :cond_1
    array-length v5, v4

    if-eq v2, v5, :cond_2

    .line 106
    new-instance p0, Ljava/lang/String;

    .end local p0    # "name":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v2}, Ljava/lang/String;-><init>([CII)V

    .line 109
    :cond_2
    return-object p0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    const-string v2, ""

    .line 61
    .local v2, "result":Ljava/lang/String;
    sget-object v3, Lcom/android/launcher3/util/locale/hanzi/NameNormalizer;->sCompressingCollator:Ljava/text/RuleBasedCollator;

    invoke-static {p0}, Lcom/android/launcher3/util/locale/hanzi/NameNormalizer;->lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/RuleBasedCollator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v1

    .line 62
    .local v1, "key":Ljava/text/CollationKey;
    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v1}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object v0

    .line 64
    .local v0, "array":[B
    if-eqz v0, :cond_0

    .line 65
    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/android/launcher3/util/locale/hanzi/Hex;->encodeHex([BZ)Ljava/lang/String;

    move-result-object v2

    .line 68
    .end local v0    # "array":[B
    :cond_0
    return-object v2
.end method
