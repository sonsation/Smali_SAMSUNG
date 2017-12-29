.class public Lvi/sec/com/bixbyvilibrary/VISVGParser;
.super Ljava/lang/Object;
.source "VISVGParser.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getToken(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "idxS"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 305
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 307
    .local v2, "token":Ljava/lang/String;
    move v1, p1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 346
    return-object v2

    .line 309
    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 311
    .local v0, "c":C
    packed-switch v0, :pswitch_data_0

    .line 307
    :cond_1
    :goto_1
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 336
    :pswitch_2
    if-ne v1, p1, :cond_2

    const/16 v3, 0x2d

    .line 339
    if-ne v0, v3, :cond_1

    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 337
    :cond_2
    return-object v2

    .line 311
    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public initialize(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    iput-object p1, p0, Lvi/sec/com/bixbyvilibrary/VISVGParser;->mContext:Landroid/content/Context;

    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public parsingPathElement(Ljava/lang/String;Lvi/sec/com/bixbyvilibrary/VIPrimitive;)Lvi/sec/com/bixbyvilibrary/VIPrimitive;
    .locals 36
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "svgPrimitive"    # Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    .prologue
    .line 127
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v29

    .local v29, "n":I
    const/16 v19, 0x0

    .local v19, "bx1":F
    const/16 v20, 0x0

    .local v20, "bx2":F
    const/16 v21, 0x0

    .local v21, "bx3":F
    const/16 v22, 0x0

    .local v22, "by1":F
    const/16 v23, 0x0

    .local v23, "by2":F
    const/16 v24, 0x0

    .local v24, "by3":F
    const/16 v27, 0x0

    .local v27, "lastX":F
    const/16 v28, 0x0

    .local v28, "lastY":F
    const/4 v5, 0x0

    .local v5, "x1":F
    const/4 v7, 0x0

    .local v7, "x2":F
    const/4 v9, 0x0

    .local v9, "x3":F
    const/4 v6, 0x0

    .local v6, "y1":F
    const/4 v8, 0x0

    .local v8, "y2":F
    const/4 v10, 0x0

    .local v10, "y3":F
    const/16 v26, 0x0

    .line 135
    .local v26, "i":I
    :goto_0
    move/from16 v0, v26

    move/from16 v1, v29

    if-lt v0, v1, :cond_0

    .line 300
    return-object p2

    .line 137
    :cond_0
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v25

    .line 139
    .local v25, "c":C
    sparse-switch v25, :sswitch_data_0

    .line 135
    :goto_1
    :sswitch_0
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 142
    :sswitch_1
    add-int/lit8 v26, v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->getToken(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .local v30, "sx1":Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v4

    add-int v26, v26, v4

    .line 143
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->getToken(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .local v33, "sy1":Ljava/lang/String;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v4

    add-int v26, v26, v4

    .line 145
    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 146
    invoke-static/range {v33 .. v33}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 150
    new-instance v3, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;

    const/16 v4, 0xc8

    invoke-direct {v3, v4, v5, v6}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;-><init>(IFF)V

    .line 152
    .local v3, "cmdSVG":Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->addDrawingCommand(Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;)V

    .line 154
    move/from16 v27, v5

    .line 155
    move/from16 v28, v6

    goto :goto_1

    .line 167
    .end local v3    # "cmdSVG":Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;
    .end local v30    # "sx1":Ljava/lang/String;
    .end local v33    # "sy1":Ljava/lang/String;
    :sswitch_2
    add-int/lit8 v26, v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->getToken(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .restart local v30    # "sx1":Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v4

    add-int v26, v26, v4

    .line 168
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->getToken(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .restart local v33    # "sy1":Ljava/lang/String;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int v26, v26, v4

    const/4 v4, 0x0

    .line 169
    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v11, 0x2d

    if-eq v4, v11, :cond_1

    .line 172
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->getToken(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .local v31, "sx2":Ljava/lang/String;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int v26, v26, v4

    const/4 v4, 0x0

    .line 173
    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v11, 0x2d

    if-eq v4, v11, :cond_2

    .line 174
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->getToken(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .local v34, "sy2":Ljava/lang/String;
    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int v26, v26, v4

    const/4 v4, 0x0

    .line 175
    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v11, 0x2d

    if-eq v4, v11, :cond_3

    .line 178
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->getToken(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .local v32, "sx3":Ljava/lang/String;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int v26, v26, v4

    const/4 v4, 0x0

    .line 179
    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v11, 0x2d

    if-eq v4, v11, :cond_4

    .line 180
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->getToken(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .local v35, "sy3":Ljava/lang/String;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v4

    add-int v26, v26, v4

    const/4 v4, 0x0

    .line 181
    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v11, 0x2d

    if-eq v4, v11, :cond_5

    .line 183
    :goto_6
    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 184
    invoke-static/range {v33 .. v33}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 185
    invoke-static/range {v31 .. v31}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 186
    invoke-static/range {v34 .. v34}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 187
    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    .line 188
    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 191
    new-instance v3, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;

    const/16 v4, 0xca

    invoke-direct/range {v3 .. v10}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;-><init>(IFFFFFF)V

    .line 193
    .restart local v3    # "cmdSVG":Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->addDrawingCommand(Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;)V

    .line 195
    move/from16 v27, v9

    .line 196
    move/from16 v28, v10

    goto/16 :goto_1

    .line 169
    .end local v3    # "cmdSVG":Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;
    .end local v31    # "sx2":Ljava/lang/String;
    .end local v32    # "sx3":Ljava/lang/String;
    .end local v34    # "sy2":Ljava/lang/String;
    .end local v35    # "sy3":Ljava/lang/String;
    :cond_1
    add-int/lit8 v26, v26, -0x1

    goto/16 :goto_2

    .line 173
    .restart local v31    # "sx2":Ljava/lang/String;
    :cond_2
    add-int/lit8 v26, v26, -0x1

    goto/16 :goto_3

    .line 175
    .restart local v34    # "sy2":Ljava/lang/String;
    :cond_3
    add-int/lit8 v26, v26, -0x1

    goto :goto_4

    .line 179
    .restart local v32    # "sx3":Ljava/lang/String;
    :cond_4
    add-int/lit8 v26, v26, -0x1

    goto :goto_5

    .line 181
    .restart local v35    # "sy3":Ljava/lang/String;
    :cond_5
    add-int/lit8 v26, v26, -0x1

    goto :goto_6

    .line 204
    .end local v30    # "sx1":Ljava/lang/String;
    .end local v31    # "sx2":Ljava/lang/String;
    .end local v32    # "sx3":Ljava/lang/String;
    .end local v33    # "sy1":Ljava/lang/String;
    .end local v34    # "sy2":Ljava/lang/String;
    .end local v35    # "sy3":Ljava/lang/String;
    :sswitch_3
    add-int/lit8 v26, v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->getToken(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .restart local v30    # "sx1":Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v4

    add-int v26, v26, v4

    .line 205
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->getToken(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .restart local v33    # "sy1":Ljava/lang/String;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int v26, v26, v4

    const/4 v4, 0x0

    .line 206
    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v11, 0x2d

    if-eq v4, v11, :cond_6

    .line 209
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->getToken(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "sx2":Ljava/lang/String;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int v26, v26, v4

    const/4 v4, 0x0

    .line 210
    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v11, 0x2d

    if-eq v4, v11, :cond_7

    .line 211
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->getToken(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .restart local v34    # "sy2":Ljava/lang/String;
    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int v26, v26, v4

    const/4 v4, 0x0

    .line 212
    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v11, 0x2d

    if-eq v4, v11, :cond_8

    .line 215
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->getToken(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .restart local v32    # "sx3":Ljava/lang/String;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int v26, v26, v4

    const/4 v4, 0x0

    .line 216
    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v11, 0x2d

    if-eq v4, v11, :cond_9

    .line 217
    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->getToken(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .restart local v35    # "sy3":Ljava/lang/String;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v4

    add-int v26, v26, v4

    const/4 v4, 0x0

    .line 218
    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v11, 0x2d

    if-eq v4, v11, :cond_a

    .line 220
    :goto_b
    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 221
    invoke-static/range {v33 .. v33}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 222
    invoke-static/range {v31 .. v31}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 223
    invoke-static/range {v34 .. v34}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 224
    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    .line 225
    invoke-static/range {v35 .. v35}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 232
    new-instance v3, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;

    const/16 v12, 0xca

    add-float v13, v5, v27

    add-float v14, v6, v28

    add-float v15, v7, v27

    add-float v16, v8, v28

    add-float v17, v9, v27

    add-float v18, v10, v28

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;-><init>(IFFFFFF)V

    .line 236
    .restart local v3    # "cmdSVG":Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->addDrawingCommand(Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;)V

    .line 238
    add-float v20, v7, v27

    .line 239
    add-float v23, v8, v28

    .line 241
    add-float v21, v9, v27

    .line 242
    add-float v24, v10, v28

    .line 244
    add-float v27, v27, v9

    .line 245
    add-float v28, v28, v10

    goto/16 :goto_1

    .line 206
    .end local v3    # "cmdSVG":Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;
    .end local v31    # "sx2":Ljava/lang/String;
    .end local v32    # "sx3":Ljava/lang/String;
    .end local v34    # "sy2":Ljava/lang/String;
    .end local v35    # "sy3":Ljava/lang/String;
    :cond_6
    add-int/lit8 v26, v26, -0x1

    goto/16 :goto_7

    .line 210
    .restart local v31    # "sx2":Ljava/lang/String;
    :cond_7
    add-int/lit8 v26, v26, -0x1

    goto/16 :goto_8

    .line 212
    .restart local v34    # "sy2":Ljava/lang/String;
    :cond_8
    add-int/lit8 v26, v26, -0x1

    goto/16 :goto_9

    .line 216
    .restart local v32    # "sx3":Ljava/lang/String;
    :cond_9
    add-int/lit8 v26, v26, -0x1

    goto :goto_a

    .line 218
    .restart local v35    # "sy3":Ljava/lang/String;
    :cond_a
    add-int/lit8 v26, v26, -0x1

    goto :goto_b

    .line 258
    .end local v30    # "sx1":Ljava/lang/String;
    .end local v31    # "sx2":Ljava/lang/String;
    .end local v32    # "sx3":Ljava/lang/String;
    .end local v33    # "sy1":Ljava/lang/String;
    .end local v34    # "sy2":Ljava/lang/String;
    .end local v35    # "sy3":Ljava/lang/String;
    :sswitch_4
    add-int/lit8 v26, v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->getToken(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .restart local v30    # "sx1":Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v4

    add-int v26, v26, v4

    .line 259
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->getToken(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .restart local v33    # "sy1":Ljava/lang/String;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int v26, v26, v4

    const/4 v4, 0x0

    .line 260
    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v11, 0x2d

    if-eq v4, v11, :cond_b

    .line 263
    :goto_c
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->getToken(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .restart local v31    # "sx2":Ljava/lang/String;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int v26, v26, v4

    const/4 v4, 0x0

    .line 264
    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v11, 0x2d

    if-eq v4, v11, :cond_c

    .line 265
    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lvi/sec/com/bixbyvilibrary/VISVGParser;->getToken(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .restart local v34    # "sy2":Ljava/lang/String;
    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v4

    add-int v26, v26, v4

    const/4 v4, 0x0

    .line 266
    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v11, 0x2d

    if-eq v4, v11, :cond_d

    .line 268
    :goto_e
    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 269
    invoke-static/range {v33 .. v33}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 270
    invoke-static/range {v31 .. v31}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 271
    invoke-static/range {v34 .. v34}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 280
    new-instance v3, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;

    const/16 v12, 0xca

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, v21

    sub-float v13, v4, v20

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, v24

    sub-float v14, v4, v23

    add-float v15, v5, v27

    add-float v16, v6, v28

    add-float v17, v7, v27

    add-float v18, v8, v28

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;-><init>(IFFFFFF)V

    .line 284
    .restart local v3    # "cmdSVG":Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->addDrawingCommand(Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;)V

    .line 286
    add-float v27, v27, v7

    .line 287
    add-float v28, v28, v8

    goto/16 :goto_1

    .line 260
    .end local v3    # "cmdSVG":Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;
    .end local v31    # "sx2":Ljava/lang/String;
    .end local v34    # "sy2":Ljava/lang/String;
    :cond_b
    add-int/lit8 v26, v26, -0x1

    goto :goto_c

    .line 264
    .restart local v31    # "sx2":Ljava/lang/String;
    :cond_c
    add-int/lit8 v26, v26, -0x1

    goto :goto_d

    .line 266
    .restart local v34    # "sy2":Ljava/lang/String;
    :cond_d
    add-int/lit8 v26, v26, -0x1

    goto :goto_e

    .line 139
    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_2
        0x4d -> :sswitch_1
        0x53 -> :sswitch_0
        0x5a -> :sswitch_0
        0x63 -> :sswitch_3
        0x6d -> :sswitch_0
        0x73 -> :sswitch_4
        0x7a -> :sswitch_0
    .end sparse-switch
.end method
