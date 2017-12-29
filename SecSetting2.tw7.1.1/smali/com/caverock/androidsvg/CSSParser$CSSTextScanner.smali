.class Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;
.super Lcom/caverock/androidsvg/SVGParser$TextScanner;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CSSTextScanner"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v0, "(?s)/\\*.*?\\*/"

    const-string/jumbo v1, ""

    .line 339
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method private nextAttribValue()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 513
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextQuotedString()Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 519
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 514
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    return-object v2

    .line 518
    .restart local v0    # "result":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private scanForIdentifier()I
    .locals 10

    .prologue
    const/16 v9, 0x61

    const/16 v8, 0x5f

    const/16 v7, 0x5a

    const/16 v6, 0x41

    const/16 v5, 0x2d

    .line 357
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 359
    iget v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 360
    .local v2, "start":I
    iget v1, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 362
    .local v1, "lastValidPos":I
    iget-object v3, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v4, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 363
    .local v0, "ch":I
    if-eq v0, v5, :cond_3

    .line 366
    :goto_0
    if-ge v0, v6, :cond_4

    :cond_0
    if-ge v0, v9, :cond_a

    :cond_1
    if-eq v0, v8, :cond_5

    .line 375
    :goto_1
    iput v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 376
    return v1

    .line 358
    .end local v0    # "ch":I
    .end local v1    # "lastValidPos":I
    .end local v2    # "start":I
    :cond_2
    iget v3, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    return v3

    .line 364
    .restart local v0    # "ch":I
    .restart local v1    # "lastValidPos":I
    .restart local v2    # "start":I
    :cond_3
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v0

    goto :goto_0

    .line 366
    :cond_4
    if-gt v0, v7, :cond_0

    .line 368
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v0

    .line 370
    :goto_3
    if-ge v0, v6, :cond_b

    :cond_6
    if-ge v0, v9, :cond_c

    :cond_7
    const/16 v3, 0x30

    if-ge v0, v3, :cond_d

    :cond_8
    if-ne v0, v5, :cond_e

    .line 371
    :cond_9
    :goto_4
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v0

    goto :goto_3

    :cond_a
    const/16 v3, 0x7a

    .line 366
    if-gt v0, v3, :cond_1

    goto :goto_2

    .line 370
    :cond_b
    if-gt v0, v7, :cond_6

    goto :goto_4

    :cond_c
    const/16 v3, 0x7a

    if-gt v0, v3, :cond_7

    goto :goto_4

    :cond_d
    const/16 v3, 0x39

    if-gt v0, v3, :cond_8

    goto :goto_4

    :cond_e
    if-eq v0, v8, :cond_9

    .line 373
    iget v1, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    goto :goto_1
.end method


# virtual methods
.method public nextIdentifier()Ljava/lang/String;
    .locals 4

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->scanForIdentifier()I

    move-result v0

    .line 348
    .local v0, "end":I
    iget v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    if-eq v0, v2, :cond_0

    .line 350
    iget-object v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "result":Ljava/lang/String;
    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 352
    return-object v1

    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    .line 349
    return-object v2
.end method

.method public nextPropertyValue()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 527
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 529
    iget v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 530
    .local v2, "start":I
    iget v1, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 532
    .local v1, "lastValidPos":I
    iget-object v3, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v4, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "ch":I
    :goto_0
    const/4 v3, -0x1

    .line 533
    if-ne v0, v3, :cond_2

    .line 538
    :cond_0
    iget v3, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    if-gt v3, v2, :cond_4

    .line 540
    iput v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 541
    return-object v5

    .line 528
    .end local v0    # "ch":I
    .end local v1    # "lastValidPos":I
    .end local v2    # "start":I
    :cond_1
    return-object v5

    .restart local v0    # "ch":I
    .restart local v1    # "lastValidPos":I
    .restart local v2    # "start":I
    :cond_2
    const/16 v3, 0x3b

    .line 533
    if-eq v0, v3, :cond_0

    const/16 v3, 0x7d

    if-eq v0, v3, :cond_0

    const/16 v3, 0x21

    if-eq v0, v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->isEOL(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 534
    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->isWhitespace(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 536
    :goto_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v0

    goto :goto_0

    .line 535
    :cond_3
    iget v3, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    add-int/lit8 v1, v3, 0x1

    goto :goto_1

    .line 539
    :cond_4
    iget-object v3, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public nextSimpleSelector(Lcom/caverock/androidsvg/CSSParser$Selector;)Z
    .locals 13
    .param p1, "selector"    # Lcom/caverock/androidsvg/CSSParser$Selector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 386
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 389
    iget v6, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .local v6, "start":I
    const/4 v2, 0x0

    .local v2, "combinator":Lcom/caverock/androidsvg/CSSParser$Combinator;
    const/4 v5, 0x0

    .line 393
    .local v5, "selectorPart":Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 404
    .end local v2    # "combinator":Lcom/caverock/androidsvg/CSSParser$Combinator;
    :cond_0
    :goto_0
    const/16 v9, 0x2a

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-nez v9, :cond_5

    .line 407
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v7

    .line 408
    .local v7, "tag":Ljava/lang/String;
    if-nez v7, :cond_6

    .line 414
    .end local v5    # "selectorPart":Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    .end local v7    # "tag":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 497
    :cond_1
    :goto_2
    if-nez v5, :cond_19

    .line 504
    iput v6, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 505
    return v11

    .line 387
    .end local v6    # "start":I
    :cond_2
    return v11

    .line 395
    .restart local v2    # "combinator":Lcom/caverock/androidsvg/CSSParser$Combinator;
    .restart local v5    # "selectorPart":Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    .restart local v6    # "start":I
    :cond_3
    const/16 v9, 0x3e

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-nez v9, :cond_4

    .line 398
    const/16 v9, 0x2b

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 399
    sget-object v2, Lcom/caverock/androidsvg/CSSParser$Combinator;->FOLLOWS:Lcom/caverock/androidsvg/CSSParser$Combinator;

    .line 400
    .local v2, "combinator":Lcom/caverock/androidsvg/CSSParser$Combinator;
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    goto :goto_0

    .line 396
    .local v2, "combinator":Lcom/caverock/androidsvg/CSSParser$Combinator;
    :cond_4
    sget-object v2, Lcom/caverock/androidsvg/CSSParser$Combinator;->CHILD:Lcom/caverock/androidsvg/CSSParser$Combinator;

    .line 397
    .local v2, "combinator":Lcom/caverock/androidsvg/CSSParser$Combinator;
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    goto :goto_0

    .line 405
    .end local v2    # "combinator":Lcom/caverock/androidsvg/CSSParser$Combinator;
    :cond_5
    new-instance v5, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    .end local v5    # "selectorPart":Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    invoke-direct {v5, v2, v12}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    .local v5, "selectorPart":Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    goto :goto_1

    .line 409
    .local v5, "selectorPart":Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    .restart local v7    # "tag":Ljava/lang/String;
    :cond_6
    new-instance v5, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    .end local v5    # "selectorPart":Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    invoke-direct {v5, v2, v7}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    .line 410
    .local v5, "selectorPart":Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedElement()V

    goto :goto_1

    .line 416
    .end local v5    # "selectorPart":Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    .end local v7    # "tag":Ljava/lang/String;
    :cond_7
    const/16 v9, 0x2e

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-nez v9, :cond_9

    .line 429
    const/16 v9, 0x23

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-nez v9, :cond_c

    .line 441
    :goto_3
    if-eqz v5, :cond_1

    .line 445
    const/16 v9, 0x5b

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-nez v9, :cond_f

    .line 474
    const/16 v9, 0x3a

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 477
    iget v4, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 478
    .local v4, "pseudoStart":I
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 479
    const/16 v9, 0x28

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-nez v9, :cond_18

    .line 489
    :cond_8
    iget-object v9, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v10, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v9, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addPseudo(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto :goto_2

    .line 419
    .end local v4    # "pseudoStart":I
    :cond_9
    if-eqz v5, :cond_a

    .line 421
    :goto_4
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v8

    .line 422
    .local v8, "value":Ljava/lang/String;
    if-eqz v8, :cond_b

    const-string/jumbo v9, "class"

    .line 424
    sget-object v10, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    invoke-virtual {v5, v9, v10, v8}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    .line 425
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto/16 :goto_1

    .line 420
    .end local v8    # "value":Ljava/lang/String;
    :cond_a
    new-instance v5, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v5, v2, v12}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    .restart local v5    # "selectorPart":Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    goto :goto_4

    .line 423
    .end local v5    # "selectorPart":Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    .restart local v8    # "value":Ljava/lang/String;
    :cond_b
    new-instance v9, Lorg/xml/sax/SAXException;

    const-string/jumbo v10, "Invalid \".class\" selector in <style> element"

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 432
    .end local v8    # "value":Ljava/lang/String;
    :cond_c
    if-eqz v5, :cond_d

    .line 434
    :goto_5
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v8

    .line 435
    .restart local v8    # "value":Ljava/lang/String;
    if-eqz v8, :cond_e

    const-string/jumbo v9, "id"

    .line 437
    sget-object v10, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    invoke-virtual {v5, v9, v10, v8}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    .line 438
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedIdAttribute()V

    goto :goto_3

    .line 433
    .end local v8    # "value":Ljava/lang/String;
    :cond_d
    new-instance v5, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v5, v2, v12}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    .restart local v5    # "selectorPart":Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    goto :goto_5

    .line 436
    .end local v5    # "selectorPart":Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    .restart local v8    # "value":Ljava/lang/String;
    :cond_e
    new-instance v9, Lorg/xml/sax/SAXException;

    const-string/jumbo v10, "Invalid \"#id\" selector in <style> element"

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 447
    .end local v8    # "value":Ljava/lang/String;
    :cond_f
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 448
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v0

    .local v0, "attrName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 450
    .local v1, "attrValue":Ljava/lang/String;
    if-eqz v0, :cond_10

    .line 452
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    const/4 v3, 0x0

    .line 454
    .local v3, "op":Lcom/caverock/androidsvg/CSSParser$AttribOp;
    const/16 v9, 0x3d

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-nez v9, :cond_11

    const-string/jumbo v9, "~="

    .line 456
    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_12

    const-string/jumbo v9, "|="

    .line 458
    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_13

    .line 460
    .end local v3    # "op":Lcom/caverock/androidsvg/CSSParser$AttribOp;
    :goto_6
    if-nez v3, :cond_14

    .line 467
    .end local v1    # "attrValue":Ljava/lang/String;
    :goto_7
    const/16 v9, 0x5d

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 469
    if-eqz v3, :cond_17

    :goto_8
    invoke-virtual {v5, v0, v3, v1}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    .line 470
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    goto/16 :goto_1

    .line 451
    .restart local v1    # "attrValue":Ljava/lang/String;
    :cond_10
    new-instance v9, Lorg/xml/sax/SAXException;

    const-string/jumbo v10, "Invalid attribute selector in <style> element"

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 455
    .restart local v3    # "op":Lcom/caverock/androidsvg/CSSParser$AttribOp;
    :cond_11
    sget-object v3, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    .local v3, "op":Lcom/caverock/androidsvg/CSSParser$AttribOp;
    goto :goto_6

    .line 457
    .local v3, "op":Lcom/caverock/androidsvg/CSSParser$AttribOp;
    :cond_12
    sget-object v3, Lcom/caverock/androidsvg/CSSParser$AttribOp;->INCLUDES:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    .local v3, "op":Lcom/caverock/androidsvg/CSSParser$AttribOp;
    goto :goto_6

    .line 459
    .local v3, "op":Lcom/caverock/androidsvg/CSSParser$AttribOp;
    :cond_13
    sget-object v3, Lcom/caverock/androidsvg/CSSParser$AttribOp;->DASHMATCH:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    .local v3, "op":Lcom/caverock/androidsvg/CSSParser$AttribOp;
    goto :goto_6

    .line 461
    .end local v3    # "op":Lcom/caverock/androidsvg/CSSParser$AttribOp;
    :cond_14
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 462
    invoke-direct {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextAttribValue()Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, "attrValue":Ljava/lang/String;
    if-eqz v1, :cond_15

    .line 465
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    goto :goto_7

    .line 464
    :cond_15
    new-instance v9, Lorg/xml/sax/SAXException;

    const-string/jumbo v10, "Invalid attribute selector in <style> element"

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 468
    .end local v1    # "attrValue":Ljava/lang/String;
    :cond_16
    new-instance v9, Lorg/xml/sax/SAXException;

    const-string/jumbo v10, "Invalid attribute selector in <style> element"

    invoke-direct {v9, v10}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 469
    :cond_17
    sget-object v3, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EXISTS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    goto :goto_8

    .line 480
    .end local v0    # "attrName":Ljava/lang/String;
    .restart local v4    # "pseudoStart":I
    :cond_18
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 481
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 482
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 483
    const/16 v9, 0x29

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-nez v9, :cond_8

    .line 484
    add-int/lit8 v9, v4, -0x1

    iput v9, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    goto/16 :goto_2

    .line 499
    .end local v4    # "pseudoStart":I
    :cond_19
    invoke-virtual {p1, v5}, Lcom/caverock/androidsvg/CSSParser$Selector;->add(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;)V

    .line 500
    const/4 v9, 0x1

    return v9
.end method
