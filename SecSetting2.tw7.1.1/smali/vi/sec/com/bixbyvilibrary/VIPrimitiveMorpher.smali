.class public Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;
.super Ljava/lang/Object;
.source "VIPrimitiveMorpher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher$VIBlendShapeInfo;
    }
.end annotation


# instance fields
.field private mAnimForward:Z

.field private mEndShape:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

.field private mFromShape:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

.field private mIdxFromShape:I

.field private mIdxToShape:I

.field private mListBlendShape:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher$VIBlendShapeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStartShape:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

.field private mToShape:Lvi/sec/com/bixbyvilibrary/VIPrimitive;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mListBlendShape:Ljava/util/List;

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mIdxFromShape:I

    .line 19
    iput v2, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mIdxToShape:I

    .line 20
    iput-boolean v2, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mAnimForward:Z

    .line 24
    iput-object v1, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mFromShape:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    .line 25
    iput-object v1, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mToShape:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    .line 26
    iput-object v1, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mStartShape:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    .line 27
    iput-object v1, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mEndShape:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    .line 28
    return-void
.end method

.method private getAdjustedTimeCursor(F)F
    .locals 5
    .param p1, "curPos"    # F

    .prologue
    .line 231
    iget-object v2, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mListBlendShape:Ljava/util/List;

    iget v3, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mIdxToShape:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher$VIBlendShapeInfo;

    invoke-virtual {v2}, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher$VIBlendShapeInfo;->getPivotTimeCursor()F

    move-result v3

    iget-object v2, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mListBlendShape:Ljava/util/List;

    iget v4, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mIdxFromShape:I

    .line 232
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher$VIBlendShapeInfo;

    invoke-virtual {v2}, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher$VIBlendShapeInfo;->getPivotTimeCursor()F

    move-result v2

    sub-float v0, v3, v2

    .local v0, "delta":F
    const/high16 v2, 0x42c80000    # 100.0f

    .line 234
    div-float v1, v2, v0

    .line 236
    .local v1, "multiply":F
    iget-object v2, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mListBlendShape:Ljava/util/List;

    iget v3, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mIdxFromShape:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher$VIBlendShapeInfo;

    invoke-virtual {v2}, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher$VIBlendShapeInfo;->getPivotTimeCursor()F

    move-result v2

    sub-float v2, p1, v2

    mul-float/2addr v2, v1

    return v2
.end method

.method private setFromAndToShape(F)V
    .locals 5
    .param p1, "curPos"    # F

    .prologue
    const/4 v4, 0x0

    .line 186
    iget-boolean v3, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mAnimForward:Z

    if-nez v3, :cond_1

    const/4 v3, 0x0

    .line 206
    cmpl-float v3, p1, v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    .line 207
    iput v3, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mIdxFromShape:I

    .line 208
    iput v4, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mIdxToShape:I

    .line 225
    :cond_0
    :goto_0
    iget-object v3, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mListBlendShape:Ljava/util/List;

    iget v4, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mIdxFromShape:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher$VIBlendShapeInfo;

    invoke-virtual {v3}, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher$VIBlendShapeInfo;->getPrimitive()Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    move-result-object v3

    iput-object v3, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mFromShape:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    .line 226
    iget-object v3, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mListBlendShape:Ljava/util/List;

    iget v4, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mIdxToShape:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher$VIBlendShapeInfo;

    invoke-virtual {v3}, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher$VIBlendShapeInfo;->getPrimitive()Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    move-result-object v3

    iput-object v3, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mToShape:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    .line 227
    return-void

    :cond_1
    const/high16 v3, 0x42c80000    # 100.0f

    .line 187
    cmpl-float v3, p1, v3

    if-nez v3, :cond_2

    .line 188
    iget-object v3, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mListBlendShape:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    iput v3, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mIdxFromShape:I

    .line 189
    iget-object v3, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mListBlendShape:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mIdxToShape:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 192
    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mListBlendShape:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-gt v0, v3, :cond_0

    .line 193
    move v1, v0

    .line 194
    .local v1, "idFrom":I
    add-int/lit8 v2, v0, 0x1

    .line 196
    .local v2, "idTo":I
    iget-object v3, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mListBlendShape:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher$VIBlendShapeInfo;

    invoke-virtual {v3}, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher$VIBlendShapeInfo;->getPivotTimeCursor()F

    move-result v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_3

    iget-object v3, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mListBlendShape:Ljava/util/List;

    .line 197
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher$VIBlendShapeInfo;

    invoke-virtual {v3}, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher$VIBlendShapeInfo;->getPivotTimeCursor()F

    move-result v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_3

    .line 198
    iput v1, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mIdxFromShape:I

    .line 199
    iput v2, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mIdxToShape:I

    goto :goto_0

    .line 192
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 211
    .end local v0    # "i":I
    .end local v1    # "idFrom":I
    .end local v2    # "idTo":I
    :cond_4
    iget-object v3, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mListBlendShape:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x2

    .restart local v0    # "i":I
    :goto_2
    if-lez v0, :cond_0

    .line 212
    move v1, v0

    .line 213
    .restart local v1    # "idFrom":I
    add-int/lit8 v2, v0, -0x1

    .line 215
    .restart local v2    # "idTo":I
    iget-object v3, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mListBlendShape:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher$VIBlendShapeInfo;

    invoke-virtual {v3}, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher$VIBlendShapeInfo;->getPivotTimeCursor()F

    move-result v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_5

    iget-object v3, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mListBlendShape:Ljava/util/List;

    .line 216
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher$VIBlendShapeInfo;

    invoke-virtual {v3}, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher$VIBlendShapeInfo;->getPivotTimeCursor()F

    move-result v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_5

    .line 217
    iput v1, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mIdxFromShape:I

    .line 218
    iput v2, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mIdxToShape:I

    goto/16 :goto_0

    .line 211
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method


# virtual methods
.method public addPrimitiveToShape(Lvi/sec/com/bixbyvilibrary/VIPrimitive;F)Z
    .locals 2
    .param p1, "toShape"    # Lvi/sec/com/bixbyvilibrary/VIPrimitive;
    .param p2, "timeline"    # F

    .prologue
    const/4 v1, 0x0

    .line 46
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mFromShape:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    invoke-virtual {p0, v0, p1}, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->isValidBlendShape(Lvi/sec/com/bixbyvilibrary/VIPrimitive;Lvi/sec/com/bixbyvilibrary/VIPrimitive;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mListBlendShape:Ljava/util/List;

    new-instance v1, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher$VIBlendShapeInfo;

    invoke-direct {v1, p0, p1, p2}, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher$VIBlendShapeInfo;-><init>(Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;Lvi/sec/com/bixbyvilibrary/VIPrimitive;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v0, 0x42c80000    # 100.0f

    .line 52
    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 53
    iput-object p1, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mEndShape:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    .line 56
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 47
    :cond_1
    return v1
.end method

.method public exchangeIndexShape()V
    .locals 2

    .prologue
    .line 32
    iget v0, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mIdxFromShape:I

    .line 33
    .local v0, "tmpIdx":I
    iget v1, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mIdxToShape:I

    iput v1, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mIdxFromShape:I

    .line 34
    iput v0, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mIdxToShape:I

    .line 35
    return-void
.end method

.method public interpolateCubicToCommand(Lvi/sec/com/bixbyvilibrary/VIPrimitive;IF)V
    .locals 18
    .param p1, "genShape"    # Lvi/sec/com/bixbyvilibrary/VIPrimitive;
    .param p2, "idx"    # I
    .param p3, "editedTimeCursor"    # F

    .prologue
    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mToShape:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->getCommand(I)Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;

    move-result-object v10

    .line 156
    .local v10, "cmdTo":Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;
    move-object/from16 v0, p0

    iget-object v2, v0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mFromShape:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->getCommand(I)Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;

    move-result-object v9

    .line 158
    .local v9, "cmdFrom":Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;
    invoke-virtual {v10}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getX1()F

    move-result v2

    invoke-virtual {v9}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getX1()F

    move-result v17

    sub-float v11, v2, v17

    .line 159
    .local v11, "deltaX1":F
    invoke-virtual {v10}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getY1()F

    move-result v2

    invoke-virtual {v9}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getY1()F

    move-result v17

    sub-float v14, v2, v17

    .line 161
    .local v14, "deltaY1":F
    invoke-virtual {v10}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getX2()F

    move-result v2

    invoke-virtual {v9}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getX2()F

    move-result v17

    sub-float v12, v2, v17

    .line 162
    .local v12, "deltaX2":F
    invoke-virtual {v10}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getY2()F

    move-result v2

    invoke-virtual {v9}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getY2()F

    move-result v17

    sub-float v15, v2, v17

    .line 164
    .local v15, "deltaY2":F
    invoke-virtual {v10}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getX3()F

    move-result v2

    invoke-virtual {v9}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getX3()F

    move-result v17

    sub-float v13, v2, v17

    .line 165
    .local v13, "deltaX3":F
    invoke-virtual {v10}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getY3()F

    move-result v2

    invoke-virtual {v9}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getY3()F

    move-result v17

    sub-float v16, v2, v17

    .line 167
    .local v16, "deltaY3":F
    invoke-virtual {v9}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getX1()F

    move-result v2

    const/high16 v17, 0x42c80000    # 100.0f

    div-float v17, p3, v17

    mul-float v17, v17, v11

    add-float v3, v2, v17

    .line 168
    .local v3, "curX1":F
    invoke-virtual {v9}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getY1()F

    move-result v2

    const/high16 v17, 0x42c80000    # 100.0f

    div-float v17, p3, v17

    mul-float v17, v17, v14

    add-float v4, v2, v17

    .line 170
    .local v4, "curY1":F
    invoke-virtual {v9}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getX2()F

    move-result v2

    const/high16 v17, 0x42c80000    # 100.0f

    div-float v17, p3, v17

    mul-float v17, v17, v12

    add-float v5, v2, v17

    .line 171
    .local v5, "curX2":F
    invoke-virtual {v9}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getY2()F

    move-result v2

    const/high16 v17, 0x42c80000    # 100.0f

    div-float v17, p3, v17

    mul-float v17, v17, v15

    add-float v6, v2, v17

    .line 173
    .local v6, "curY2":F
    invoke-virtual {v9}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getX3()F

    move-result v2

    const/high16 v17, 0x42c80000    # 100.0f

    div-float v17, p3, v17

    mul-float v17, v17, v13

    add-float v7, v2, v17

    .line 174
    .local v7, "curX3":F
    invoke-virtual {v9}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getY3()F

    move-result v2

    const/high16 v17, 0x42c80000    # 100.0f

    div-float v17, p3, v17

    mul-float v17, v17, v16

    add-float v8, v2, v17

    .line 176
    .local v8, "curY3":F
    new-instance v1, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;

    const/16 v2, 0xca

    invoke-direct/range {v1 .. v8}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;-><init>(IFFFFFF)V

    .line 179
    .local v1, "cmdGen":Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->addDrawingCommand(Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;)V

    .line 180
    return-void
.end method

.method public interpolateMoveToCommand(Lvi/sec/com/bixbyvilibrary/VIPrimitive;IF)V
    .locals 10
    .param p1, "genShape"    # Lvi/sec/com/bixbyvilibrary/VIPrimitive;
    .param p2, "idx"    # I
    .param p3, "editedTimeCursor"    # F

    .prologue
    const/high16 v9, 0x42c80000    # 100.0f

    .line 138
    iget-object v7, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mToShape:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    invoke-virtual {v7, p2}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->getCommand(I)Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;

    move-result-object v2

    .line 139
    .local v2, "cmdTo":Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;
    iget-object v7, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mFromShape:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    invoke-virtual {v7, p2}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->getCommand(I)Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;

    move-result-object v0

    .line 141
    .local v0, "cmdFrom":Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;
    invoke-virtual {v2}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getX1()F

    move-result v7

    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getX1()F

    move-result v8

    sub-float v5, v7, v8

    .line 142
    .local v5, "deltaX":F
    invoke-virtual {v2}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getY1()F

    move-result v7

    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getY1()F

    move-result v8

    sub-float v6, v7, v8

    .line 144
    .local v6, "deltaY":F
    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getX1()F

    move-result v7

    div-float v8, p3, v9

    mul-float/2addr v8, v5

    add-float v3, v7, v8

    .line 145
    .local v3, "curX":F
    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getY1()F

    move-result v7

    div-float v8, p3, v9

    mul-float/2addr v8, v6

    add-float v4, v7, v8

    .line 147
    .local v4, "curY":F
    new-instance v1, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;

    const/16 v7, 0xc8

    invoke-direct {v1, v7, v3, v4}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;-><init>(IFF)V

    .line 149
    .local v1, "cmdGen":Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;
    invoke-virtual {p1, v1}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->addDrawingCommand(Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;)V

    .line 150
    return-void
.end method

.method public isValidBlendShape(Lvi/sec/com/bixbyvilibrary/VIPrimitive;Lvi/sec/com/bixbyvilibrary/VIPrimitive;)Z
    .locals 7
    .param p1, "fromShape"    # Lvi/sec/com/bixbyvilibrary/VIPrimitive;
    .param p2, "toShape"    # Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    .prologue
    const/4 v6, 0x0

    .line 61
    invoke-virtual {p1}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->countOfCommand()I

    move-result v3

    invoke-virtual {p2}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->countOfCommand()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x0

    .line 69
    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->countOfCommand()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 81
    const/4 v3, 0x1

    return v3

    .end local v2    # "i":I
    :cond_0
    const-string/jumbo v3, "VI_DEV"

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[ERROR] setMorphingPrimitive() -> Invalid command count / from="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 63
    invoke-virtual {p1}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->countOfCommand()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / to="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->countOfCommand()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 62
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return v6

    .line 70
    .restart local v2    # "i":I
    :cond_1
    invoke-virtual {p1, v2}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->getCommand(I)Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;

    move-result-object v0

    .line 71
    .local v0, "cTypeFrom":Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;
    invoke-virtual {p2, v2}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->getCommand(I)Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;

    move-result-object v1

    .line 73
    .local v1, "cTypeTo":Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;
    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getType()I

    move-result v3

    invoke-virtual {v1}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getType()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "VI_DEV"

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[ERROR] setMorphingPrimitive() -> Invalid command type / from="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 75
    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / to="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return v6
.end method

.method public makeInterpolatedCommand(FZ)Lvi/sec/com/bixbyvilibrary/VIPrimitive;
    .locals 5
    .param p1, "curPositionTimeline"    # F
    .param p2, "animForward"    # Z

    .prologue
    .line 86
    iput-boolean p2, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mAnimForward:Z

    const/4 v4, 0x0

    .line 88
    cmpl-float v4, p1, v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mStartShape:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    if-nez v4, :cond_2

    :cond_0
    const/high16 v4, 0x42c80000    # 100.0f

    .line 94
    cmpl-float v4, p1, v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mEndShape:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    if-nez v4, :cond_3

    .line 100
    :cond_1
    new-instance v2, Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    invoke-direct {v2}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;-><init>()V

    .line 102
    .local v2, "genShape":Lvi/sec/com/bixbyvilibrary/VIPrimitive;
    invoke-direct {p0, p1}, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->setFromAndToShape(F)V

    .line 104
    invoke-direct {p0, p1}, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->getAdjustedTimeCursor(F)F

    move-result v1

    .local v1, "editedCurPosTimeline":F
    const/4 v3, 0x0

    .line 106
    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mFromShape:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    invoke-virtual {v4}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->countOfCommand()I

    move-result v4

    if-lt v3, v4, :cond_4

    .line 133
    return-object v2

    .line 91
    .end local v1    # "editedCurPosTimeline":F
    .end local v2    # "genShape":Lvi/sec/com/bixbyvilibrary/VIPrimitive;
    .end local v3    # "i":I
    :cond_2
    iget-object v4, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mStartShape:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    return-object v4

    .line 97
    :cond_3
    iget-object v4, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mEndShape:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    return-object v4

    .line 107
    .restart local v1    # "editedCurPosTimeline":F
    .restart local v2    # "genShape":Lvi/sec/com/bixbyvilibrary/VIPrimitive;
    .restart local v3    # "i":I
    :cond_4
    iget-object v4, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mToShape:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    invoke-virtual {v4, v3}, Lvi/sec/com/bixbyvilibrary/VIPrimitive;->getCommand(I)Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;

    move-result-object v0

    .line 109
    .local v0, "cmdTo":Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;
    invoke-virtual {v0}, Lvi/sec/com/bixbyvilibrary/VIDrawingCommand;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 106
    :goto_1
    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    :pswitch_1
    invoke-virtual {p0, v2, v3, v1}, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->interpolateMoveToCommand(Lvi/sec/com/bixbyvilibrary/VIPrimitive;IF)V

    goto :goto_1

    .line 118
    :pswitch_2
    invoke-virtual {p0, v2, v3, v1}, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->interpolateCubicToCommand(Lvi/sec/com/bixbyvilibrary/VIPrimitive;IF)V

    goto :goto_1

    .line 122
    :pswitch_3
    invoke-virtual {p0, v2, v3, v1}, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->interpolateCubicToCommand(Lvi/sec/com/bixbyvilibrary/VIPrimitive;IF)V

    goto :goto_1

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPrimitiveFromShape(Lvi/sec/com/bixbyvilibrary/VIPrimitive;)V
    .locals 3
    .param p1, "fromShape"    # Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    .prologue
    .line 39
    iget-object v0, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mListBlendShape:Ljava/util/List;

    new-instance v1, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher$VIBlendShapeInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher$VIBlendShapeInfo;-><init>(Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;Lvi/sec/com/bixbyvilibrary/VIPrimitive;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iput-object p1, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mFromShape:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    .line 41
    iput-object p1, p0, Lvi/sec/com/bixbyvilibrary/VIPrimitiveMorpher;->mStartShape:Lvi/sec/com/bixbyvilibrary/VIPrimitive;

    .line 42
    return-void
.end method
