.class Lcom/android/launcher3/util/locale/LocaleUtils$TraditionalChineseHKUtils;
.super Lcom/android/launcher3/util/locale/LocaleUtils$SimplifiedChineseUtils;
.source "LocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/locale/LocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TraditionalChineseHKUtils"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 502
    invoke-direct {p0}, Lcom/android/launcher3/util/locale/LocaleUtils$SimplifiedChineseUtils;-><init>()V

    .line 503
    return-void
.end method

.method private getStrokeNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 14
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 564
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 565
    .local v6, "keys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 566
    .local v7, "maxNameLength":I
    const/16 v11, 0x1e

    if-le v7, v11, :cond_0

    .line 567
    const/16 v7, 0x1e

    .line 570
    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke;->getIntance()Lcom/android/launcher3/util/locale/hanzi/HanziToStroke;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p1, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 572
    .local v10, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;>;"
    if-nez v10, :cond_1

    .line 573
    const/4 v11, 0x0

    .line 642
    :goto_0
    return-object v11

    .line 576
    :cond_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 577
    .local v9, "tokenCount":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    .local v4, "keyStroke":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 579
    .local v1, "keyInitial":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 580
    .local v3, "keyOrignal":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 581
    .local v5, "keyStrokeNotMap":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 583
    .local v2, "keyInitialNotMap":Ljava/lang/StringBuilder;
    add-int/lit8 v0, v9, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_a

    .line 584
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;

    .line 588
    .local v8, "token":Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;
    const/4 v11, 0x2

    iget v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->type:I

    if-ne v11, v12, :cond_4

    .line 589
    if-nez v0, :cond_3

    .line 590
    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->target:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->makeActionCodeHKTW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->target:Ljava/lang/String;

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    :goto_2
    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->target:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->convertTraditionalChineseKeypadLettersToDigits(C)C

    move-result v12

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 597
    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->target:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 632
    :goto_3
    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->source:Ljava/lang/String;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 634
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 635
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 637
    if-nez v0, :cond_2

    .line 638
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 639
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 583
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 593
    :cond_3
    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->target:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->convertTraditionalChineseKeypadLettersToDigits(C)C

    move-result v12

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 594
    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->target:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 598
    :cond_4
    const/4 v11, 0x1

    iget v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->type:I

    if-ne v11, v12, :cond_8

    .line 600
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_5

    .line 601
    const/4 v11, 0x0

    const/16 v12, 0x20

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 602
    const/4 v11, 0x0

    const/16 v12, 0x20

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 605
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_6

    .line 606
    const/4 v11, 0x0

    const/16 v12, 0x20

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 609
    :cond_6
    if-nez v0, :cond_7

    .line 610
    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->source:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->makeActionCodeHKTW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->source:Ljava/lang/String;

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    :goto_4
    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->source:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->convertTraditionalChineseKeypadLettersToDigits(C)C

    move-result v12

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 618
    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->source:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 613
    :cond_7
    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->source:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->convertTraditionalChineseKeypadLettersToDigits(C)C

    move-result v12

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 614
    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->source:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 620
    :cond_8
    if-nez v0, :cond_9

    .line 621
    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->source:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->makeActionCodeHKTW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->source:Ljava/lang/String;

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    :goto_5
    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->source:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->convertTraditionalChineseKeypadLettersToDigits(C)C

    move-result v12

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 629
    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->source:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 624
    :cond_9
    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->source:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->convertTraditionalChineseKeypadLettersToDigits(C)C

    move-result v12

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 625
    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->source:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 642
    .end local v8    # "token":Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;
    :cond_a
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    goto/16 :goto_0
.end method


# virtual methods
.method public getConsistKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 532
    const/16 v7, 0xa0

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 533
    .local v5, "trimmedName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 534
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 535
    .local v0, "ch":C
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v6

    .line 536
    .local v6, "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    invoke-static {v6}, Lcom/android/launcher3/util/locale/LocaleUtils;->access$800(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 537
    const/4 v7, 0x1

    invoke-virtual {v5, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 538
    .local v2, "tmpDisplayName":Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke;->getIntance()Lcom/android/launcher3/util/locale/hanzi/HanziToStroke;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 539
    .local v4, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;>;"
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 540
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;

    .line 541
    .local v3, "token":Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;
    const/4 v7, 0x2

    iget v8, v3, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->type:I

    if-ne v7, v8, :cond_0

    .line 542
    iget-object v7, v3, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->target:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 554
    .end local v0    # "ch":C
    .end local v2    # "tmpDisplayName":Ljava/lang/String;
    .end local v3    # "token":Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;
    .end local v4    # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;>;"
    .end local v6    # "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    :goto_0
    return-object v1

    .line 548
    .restart local v0    # "ch":C
    .restart local v2    # "tmpDisplayName":Ljava/lang/String;
    .restart local v3    # "token":Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;
    .restart local v4    # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;>;"
    .restart local v6    # "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/util/locale/LocaleUtils$SimplifiedChineseUtils;->getConsistKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 554
    .end local v0    # "ch":C
    .end local v2    # "tmpDisplayName":Ljava/lang/String;
    .end local v3    # "token":Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;
    .end local v4    # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;>;"
    .end local v6    # "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher3/util/locale/LocaleUtils$SimplifiedChineseUtils;->getConsistKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 559
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/locale/LocaleUtils$TraditionalChineseHKUtils;->getStrokeNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 507
    move-object v1, p1

    .line 508
    .local v1, "tmpDisplayName":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 509
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 511
    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke;->getIntance()Lcom/android/launcher3/util/locale/hanzi/HanziToStroke;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 512
    .local v3, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;>;"
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 514
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;

    .line 515
    .local v2, "token":Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;
    const/4 v5, 0x2

    iget v6, v2, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->type:I

    if-ne v5, v6, :cond_1

    .line 516
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 518
    const/16 v5, 0xa4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 519
    iget-object v5, v2, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->source:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    iget-object v5, v2, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->target:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 522
    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher3/util/locale/LocaleUtils$SimplifiedChineseUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 527
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "token":Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;
    :goto_1
    return-object v4

    .line 525
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 527
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    invoke-super {p0, p1}, Lcom/android/launcher3/util/locale/LocaleUtils$SimplifiedChineseUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method
