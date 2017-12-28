.class public Lcom/android/launcher3/util/locale/hanzi/ChineseHighlightHelper;
.super Ljava/lang/Object;
.source "ChineseHighlightHelper.java"


# static fields
.field private static final LIMIT_TEXT:I = 0x32

.field private static final TAG:Ljava/lang/String; = "ChineseHighlightHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static aggregateMultiPinyins([Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "arrayA"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "arrayB":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v3, p0

    .line 40
    .local v3, "lengthAA":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 42
    .local v4, "lengthBB":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v5, "mArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-lez v3, :cond_2

    .line 45
    array-length v8, p0

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v0, p0, v7

    .line 46
    .local v0, "anArrayA":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const/16 v6, 0x7c

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    if-lez v4, :cond_0

    .line 50
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v4, :cond_1

    .line 51
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 54
    .end local v2    # "j":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_1
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_0

    .line 57
    .end local v0    # "anArrayA":Ljava/lang/String;
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_2
    return-object v5
.end method

.method private static buildMultiPinyinArrayList([[Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 3
    .param p0, "array"    # [[Ljava/lang/String;
    .param p1, "arrayLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v1, "mArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 67
    aget-object v2, p0, v0

    invoke-static {v2, v1}, Lcom/android/launcher3/util/locale/hanzi/ChineseHighlightHelper;->aggregateMultiPinyins([Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 66
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 69
    :cond_0
    return-object v1
.end method

.method public static findPosToPinyin(Ljava/lang/CharSequence;Ljava/lang/String;[I)Z
    .locals 29
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "indexes"    # [I

    .prologue
    .line 221
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    .line 222
    :cond_0
    const/4 v6, 0x0

    .line 413
    :cond_1
    :goto_0
    return v6

    .line 225
    :cond_2
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v26

    const/16 v27, 0x32

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/util/locale/hanzi/ChineseHighlightHelper;->isLatin(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_3

    .line 226
    const/4 v6, 0x0

    goto :goto_0

    .line 228
    :cond_3
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v24

    .line 229
    .local v24, "textLength":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 230
    .local v8, "prefixLength":I
    if-nez v8, :cond_4

    .line 231
    const/4 v6, 0x0

    goto :goto_0

    .line 233
    :cond_4
    const/4 v6, 0x0

    .line 234
    .local v6, "cpResult":Z
    invoke-static {}, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin;->getInstance()Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin;

    move-result-object v26

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v23

    .line 235
    .local v23, "targetToken":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v20, "targetAddr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v22, "targetStr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v9, "regArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v21, v0

    .line 240
    .local v21, "targetInitialAddr":[I
    const/4 v5, 0x0

    .local v5, "count":I
    :goto_1
    if-ge v5, v8, :cond_6

    .line 241
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0x20

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_5

    .line 242
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 246
    :cond_6
    const/4 v5, 0x0

    :goto_2
    move/from16 v0, v24

    if-ge v5, v0, :cond_8

    .line 247
    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v26

    const/16 v27, 0x20

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_7

    .line 248
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 253
    :cond_8
    const/4 v11, 0x0

    .line 254
    .local v11, "tAddr":I
    const/4 v14, 0x0

    .line 256
    .local v14, "tCount":I
    const/4 v5, 0x0

    :goto_3
    :try_start_0
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v5, v0, :cond_9

    .line 257
    aput v11, v21, v5

    .line 258
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    add-int v11, v11, v26

    .line 256
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 260
    :cond_9
    const/4 v5, 0x0

    :goto_4
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v5, v0, :cond_1

    .line 261
    const/4 v6, 0x0

    .line 262
    aget v14, v21, v5

    .line 264
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    invoke-static/range {v26 .. v27}, Lcom/android/launcher3/util/locale/hanzi/ChineseHighlightHelper;->getCompareNormalizedString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    if-lez v26, :cond_1b

    .line 265
    const/4 v6, 0x1

    .line 266
    const/16 v27, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    aput v26, p2, v27

    .line 267
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1

    .line 271
    const/4 v12, -0x1

    .line 272
    .local v12, "tCheck1":I
    const/4 v13, -0x1

    .line 277
    .local v13, "tCheck2":I
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int/lit8 v27, v14, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_a

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_a

    .line 278
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_a

    .line 279
    add-int/lit8 v26, v14, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    const/16 v27, 0x1

    .line 280
    move/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 279
    invoke-static/range {v26 .. v27}, Lcom/android/launcher3/util/locale/hanzi/ChineseHighlightHelper;->getCompareNormalizedString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 281
    if-lez v12, :cond_a

    .line 282
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int v26, v26, v14

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_a

    .line 283
    const/4 v12, 0x0

    .line 288
    :cond_a
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v26, v0

    add-int/lit8 v27, v5, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_b

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_b

    .line 289
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_b

    .line 290
    add-int/lit8 v26, v5, 0x1

    aget v26, v21, v26

    .line 291
    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 290
    invoke-static/range {v26 .. v27}, Lcom/android/launcher3/util/locale/hanzi/ChineseHighlightHelper;->getCompareNormalizedString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 292
    if-lez v13, :cond_b

    .line 293
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int v26, v26, v14

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_b

    .line 294
    const/4 v13, 0x0

    .line 299
    :cond_b
    if-lez v12, :cond_d

    .line 300
    const/4 v2, 0x1

    .local v2, "chk1":I
    :goto_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v2, v0, :cond_18

    .line 301
    add-int v26, v14, v2

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 302
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 301
    invoke-static/range {v26 .. v27}, Lcom/android/launcher3/util/locale/hanzi/ChineseHighlightHelper;->getCompareNormalizedString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    if-lez v26, :cond_c

    .line 303
    add-int v26, v14, v2

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    aput v26, p2, v2

    .line 300
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 305
    :cond_c
    const/4 v6, 0x0

    goto :goto_6

    .line 308
    .end local v2    # "chk1":I
    :cond_d
    if-lez v13, :cond_f

    .line 309
    const/4 v2, 0x1

    .restart local v2    # "chk1":I
    :goto_7
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v2, v0, :cond_18

    .line 310
    add-int v26, v5, v2

    aget v26, v21, v26

    .line 311
    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 312
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 310
    invoke-static/range {v26 .. v27}, Lcom/android/launcher3/util/locale/hanzi/ChineseHighlightHelper;->getCompareNormalizedString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    if-lez v26, :cond_e

    .line 313
    add-int v26, v5, v2

    aget v26, v21, v26

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    aput v26, p2, v2

    .line 309
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 315
    :cond_e
    const/4 v6, 0x0

    goto :goto_8

    .line 318
    .end local v2    # "chk1":I
    :cond_f
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_1a

    .line 320
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->charAt(I)C

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v27

    const/16 v26, 0x0

    .line 321
    move/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 319
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/launcher3/util/locale/hanzi/ChineseHighlightHelper;->getCompareNormalizedString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    if-lez v26, :cond_1a

    .line 322
    const-string v15, ""

    .line 323
    .local v15, "tStr":Ljava/lang/String;
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v26, 0x0

    const-string v27, ""

    aput-object v27, v17, v26

    const/16 v26, 0x1

    const-string v27, ""

    aput-object v27, v17, v26

    .line 327
    .local v17, "tStrD":[Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v16, "tStrArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 329
    .restart local v2    # "chk1":I
    const/16 v18, 0x0

    .line 330
    .local v18, "tStrLength":I
    const/4 v6, 0x1

    .line 331
    :goto_9
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v18

    move/from16 v1, v26

    if-ge v0, v1, :cond_14

    .line 332
    add-int v26, v14, v2

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    invoke-static/range {v26 .. v26}, Lcom/android/launcher3/util/locale/hanzi/ChineseHighlightHelper;->getDuoYinziString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 333
    if-nez v2, :cond_11

    .line 334
    const/16 v26, 0x0

    aget-object v26, v17, v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    const/16 v26, 0x0

    aget-object v26, v17, v26

    const/16 v27, 0x1

    aget-object v27, v17, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_10

    .line 336
    const/16 v26, 0x1

    aget-object v26, v17, v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_10
    const/16 v26, 0x0

    aget-object v26, v17, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x1

    aget-object v27, v17, v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_13

    const/16 v26, 0x0

    aget-object v26, v17, v26

    .line 349
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    :goto_a
    add-int v18, v18, v26

    .line 350
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 339
    :cond_11
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 340
    .local v19, "tStrSize":I
    const/4 v3, 0x0

    .local v3, "chk2":I
    :goto_b
    move/from16 v0, v19

    if-ge v3, v0, :cond_10

    .line 341
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 342
    .local v25, "tmp1":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x0

    aget-object v27, v17, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 343
    const/16 v26, 0x0

    aget-object v26, v17, v26

    const/16 v27, 0x1

    aget-object v27, v17, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_12

    .line 344
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x1

    aget-object v27, v17, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 349
    .end local v3    # "chk2":I
    .end local v19    # "tStrSize":I
    .end local v25    # "tmp1":Ljava/lang/String;
    :cond_13
    const/16 v26, 0x1

    aget-object v26, v17, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    goto :goto_a

    .line 353
    :cond_14
    const/4 v4, 0x0

    .local v4, "chk3":I
    :goto_c
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v4, v0, :cond_17

    .line 354
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "tStr":Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .line 355
    .restart local v15    # "tStr":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v15, v0}, Lcom/android/launcher3/util/locale/hanzi/ChineseHighlightHelper;->getCompareNormalizedString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    if-lez v26, :cond_16

    .line 356
    const/4 v3, 0x0

    .restart local v3    # "chk2":I
    :goto_d
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v3, v0, :cond_1

    .line 357
    if-ge v3, v2, :cond_15

    .line 358
    add-int v26, v14, v3

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    aput v26, p2, v3

    .line 356
    :goto_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 360
    :cond_15
    add-int v26, v14, v2

    add-int/lit8 v26, v26, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    aput v26, p2, v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_e

    .line 406
    .end local v2    # "chk1":I
    .end local v3    # "chk2":I
    .end local v4    # "chk3":I
    .end local v12    # "tCheck1":I
    .end local v13    # "tCheck2":I
    .end local v15    # "tStr":Ljava/lang/String;
    .end local v16    # "tStrArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "tStrD":[Ljava/lang/String;
    .end local v18    # "tStrLength":I
    :catch_0
    move-exception v7

    .line 407
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string v26, "ChineseHighlightHelper"

    const-string v27, "search highlight RuntimeException!"

    invoke-static/range {v26 .. v27}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v6, 0x0

    .line 412
    goto/16 :goto_0

    .line 353
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .restart local v2    # "chk1":I
    .restart local v4    # "chk3":I
    .restart local v12    # "tCheck1":I
    .restart local v13    # "tCheck2":I
    .restart local v15    # "tStr":Ljava/lang/String;
    .restart local v16    # "tStrArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17    # "tStrD":[Ljava/lang/String;
    .restart local v18    # "tStrLength":I
    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 366
    :cond_17
    const/4 v6, 0x0

    .line 371
    .end local v2    # "chk1":I
    .end local v4    # "chk3":I
    .end local v15    # "tStr":Ljava/lang/String;
    .end local v16    # "tStrArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17    # "tStrD":[Ljava/lang/String;
    .end local v18    # "tStrLength":I
    :cond_18
    :goto_f
    if-nez v6, :cond_1

    .line 260
    .end local v12    # "tCheck1":I
    .end local v13    # "tCheck2":I
    :cond_19
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 368
    .restart local v12    # "tCheck1":I
    .restart local v13    # "tCheck2":I
    :cond_1a
    const/4 v6, 0x0

    goto :goto_f

    .line 376
    .end local v12    # "tCheck1":I
    .end local v13    # "tCheck2":I
    :cond_1b
    :try_start_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_19

    .line 378
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->charAt(I)C

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v27

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 377
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/launcher3/util/locale/hanzi/ChineseHighlightHelper;->getCompareNormalizedString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    if-lez v26, :cond_19

    .line 379
    const-string v15, ""

    .line 380
    .restart local v15    # "tStr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 381
    .restart local v2    # "chk1":I
    const/4 v6, 0x1

    .line 382
    :goto_10
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_1c

    .line 383
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 384
    .local v10, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v10, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    invoke-static {}, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin;->getInstance()Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin;

    move-result-object v27

    add-int v26, v5, v2

    .line 386
    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v26

    .line 385
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin;->getPinyin(C)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    .line 389
    add-int/lit8 v2, v2, 0x1

    .line 390
    goto :goto_10

    .line 392
    .end local v10    # "sb":Ljava/lang/StringBuffer;
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v15, v0}, Lcom/android/launcher3/util/locale/hanzi/ChineseHighlightHelper;->getCompareNormalizedString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    if-lez v26, :cond_1e

    .line 393
    const/4 v3, 0x0

    .restart local v3    # "chk2":I
    :goto_11
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v3, v0, :cond_1

    .line 394
    if-ge v3, v2, :cond_1d

    .line 395
    add-int v26, v5, v3

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    aput v26, p2, v3

    .line 393
    :goto_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 397
    :cond_1d
    add-int v26, v5, v2

    add-int/lit8 v26, v26, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    aput v26, p2, v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_12

    .line 409
    .end local v2    # "chk1":I
    .end local v3    # "chk2":I
    .end local v15    # "tStr":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 410
    .local v7, "e":Ljava/lang/Exception;
    const-string v26, "ChineseHighlightHelper"

    const-string v27, "search highlight exception!"

    invoke-static/range {v26 .. v27}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 401
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v2    # "chk1":I
    .restart local v15    # "tStr":Ljava/lang/String;
    :cond_1e
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method private static getArrayListWithLastSuffix(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    return-object p0
.end method

.method private static getCompareNormalizedString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "reg"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 193
    const/4 v4, 0x0

    .line 194
    .local v4, "result":I
    invoke-static {p0}, Lcom/android/launcher3/util/locale/hanzi/ChineseHighlightHelper;->getDuoYinziString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "cpStrDuo":[Ljava/lang/String;
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    aget-object v5, v1, v6

    .line 196
    invoke-static {v5}, Lcom/android/launcher3/util/locale/hanzi/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v6

    aget-object v5, v1, v7

    invoke-static {v5}, Lcom/android/launcher3/util/locale/hanzi/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v7

    .line 198
    .local v0, "cpStr":[Ljava/lang/String;
    invoke-static {p1}, Lcom/android/launcher3/util/locale/hanzi/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "normalizedReg":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 200
    aget-object v5, v0, v6

    if-eqz v5, :cond_0

    aget-object v5, v0, v6

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    aget-object v5, v0, v7

    if-eqz v5, :cond_3

    aget-object v5, v0, v7

    .line 201
    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    .line 202
    :cond_1
    const/4 v4, 0x1

    .line 210
    :cond_2
    :goto_0
    return v4

    .line 204
    :cond_3
    invoke-static {p0}, Lcom/android/launcher3/util/locale/hanzi/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "normalizedTarget":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 206
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static getDuoYinziString(Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .param p0, "inString"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 160
    new-array v3, v11, [Ljava/lang/String;

    const-string v7, ""

    aput-object v7, v3, v9

    const-string v7, ""

    aput-object v7, v3, v10

    .line 163
    .local v3, "mOut":[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v10, :cond_1

    .line 164
    aput-object p0, v3, v9

    .line 165
    aput-object p0, v3, v10

    .line 189
    :cond_0
    :goto_0
    return-object v3

    .line 167
    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/util/locale/hanzi/ChineseHighlightHelper;->getMultiPinyinsForName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 168
    .local v4, "multiPinyin":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 170
    .local v6, "pinyinCount":I
    if-eqz v4, :cond_2

    .line 171
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 173
    :cond_2
    if-eqz v4, :cond_5

    if-le v6, v10, :cond_5

    .line 174
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v11, :cond_0

    .line 175
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "\\|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "array":[Ljava/lang/String;
    array-length v5, v0

    .line 177
    .local v5, "multiPinyinCount":I
    add-int/lit8 v2, v5, -0x1

    .local v2, "j":I
    :goto_2
    if-ltz v2, :cond_4

    .line 178
    const-string v7, ""

    aget-object v8, v0, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 177
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 181
    :cond_3
    aget-object v7, v0, v2

    aput-object v7, v3, v1

    goto :goto_3

    .line 174
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 185
    .end local v0    # "array":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v5    # "multiPinyinCount":I
    :cond_5
    invoke-static {}, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin;->getInstance()Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin;

    move-result-object v7

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin;->getPinyin(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v9

    .line 186
    invoke-static {}, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin;->getInstance()Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin;

    move-result-object v7

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin;->getPinyin(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v10

    goto :goto_0
.end method

.method private static getMultiPinYinWithPrefixWithoutTokenSource([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 79
    array-length v0, p0

    .line 80
    .local v0, "arraySize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const/16 v3, 0x7c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p0, v1

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    return-object p0
.end method

.method private static getMultiPinyinsForName(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 15
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x0

    const/16 v12, 0x7c

    .line 107
    const/4 v0, 0x3

    .line 108
    .local v0, "MAX_MUTI_PINYIN_COUNT":I
    invoke-static {}, Lcom/android/launcher3/util/locale/hanzi/HanziToMultiPinyin;->getInstance()Lcom/android/launcher3/util/locale/hanzi/HanziToMultiPinyin;

    move-result-object v9

    invoke-virtual {v9, p0}, Lcom/android/launcher3/util/locale/hanzi/HanziToMultiPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 109
    .local v8, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;>;"
    new-array v2, v14, [[Ljava/lang/String;

    .line 110
    .local v2, "arrayB":[[Ljava/lang/String;
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_7

    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v5, "sb":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v6, "sb2":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 114
    .local v4, "count":I
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;

    .line 115
    .local v7, "token":Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;
    const/4 v10, 0x2

    iget v11, v7, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;->type:I

    if-ne v10, v11, :cond_3

    .line 116
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 117
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    :cond_0
    iget-object v10, v7, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "arrayA":[Ljava/lang/String;
    array-length v10, v1

    const/4 v11, 0x1

    if-gt v10, v11, :cond_1

    .line 122
    iget-object v10, v7, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v10, v7, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :goto_1
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    iget-object v10, v7, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 125
    :cond_1
    if-ge v4, v14, :cond_2

    .line 126
    aget-object v10, v1, v13

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 127
    invoke-static {v1, v10}, Lcom/android/launcher3/util/locale/hanzi/ChineseHighlightHelper;->getMultiPinYinWithPrefixWithoutTokenSource([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v4

    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6    # "sb2":Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .restart local v6    # "sb2":Ljava/lang/StringBuilder;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 132
    :cond_2
    aget-object v10, v1, v13

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    aget-object v10, v1, v13

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 139
    .end local v1    # "arrayA":[Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 140
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    :cond_4
    iget-object v10, v7, Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 145
    .end local v7    # "token":Lcom/android/launcher3/util/locale/hanzi/HanziToPinyin$Token;
    :cond_5
    array-length v9, v2

    if-lez v9, :cond_6

    .line 146
    invoke-static {v2, v4}, Lcom/android/launcher3/util/locale/hanzi/ChineseHighlightHelper;->buildMultiPinyinArrayList([[Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 147
    .local v3, "arrayC":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/android/launcher3/util/locale/hanzi/ChineseHighlightHelper;->getArrayListWithLastSuffix(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 154
    .end local v3    # "arrayC":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "count":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "sb2":Ljava/lang/StringBuilder;
    :goto_2
    return-object v3

    .line 150
    .restart local v4    # "count":I
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    .restart local v6    # "sb2":Ljava/lang/StringBuilder;
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .restart local v3    # "arrayC":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 154
    .end local v3    # "arrayC":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "count":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "sb2":Ljava/lang/StringBuilder;
    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2
.end method

.method private static isLatin(Ljava/lang/String;)Z
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;

    .prologue
    .line 217
    const-string v0, "\\p{ASCII}+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
