.class public Lcom/android/server/policy/TspGripCommand;
.super Ljava/lang/Object;
.source "TspGripCommand.java"


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT_EDGE_ZONE:I = 0x3c

.field private static final DEFAULT_LAND_X1:I = 0xa

.field private static final DEFAULT_PORT_X1:I = 0xa

.field private static final DEFAULT_PORT_X2:I = 0x20

.field private static final DEFAULT_PORT_Y1:I = 0x300

.field private static final INDEX_DEADZONE_LAND_X1:I = 0x3

.field private static final INDEX_DEADZONE_PORT_X1:I = 0x0

.field private static final INDEX_DEADZONE_PORT_X2:I = 0x1

.field private static final INDEX_DEADZONE_PORT_Y1:I = 0x2

.field private static final INDEX_EDGE_LAND:I = 0x5

.field private static final INDEX_EDGE_PORT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "TspGripCommand"


# instance fields
.field mLandEdgeZone:I

.field mLandX1:I

.field mPortEdgeZone:I

.field mPortX1:I

.field mPortX2:I

.field mPortY1:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/TspGripCommand;->DEBUG:Z

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0}, Lcom/android/server/policy/TspGripCommand;->reset()V

    .line 53
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0
    .param p1, "portX1"    # I
    .param p2, "portX2"    # I
    .param p3, "portY1"    # I
    .param p4, "landX1"    # I
    .param p5, "portEdgeZone"    # I
    .param p6, "landEdgeZone"    # I

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/policy/TspGripCommand;->set(IIIIII)V

    .line 56
    return-void
.end method

.method private convertToInt(IILjava/lang/String;)I
    .locals 6
    .param p1, "size"    # I
    .param p2, "firmwareSize"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 232
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    return v4

    .line 235
    :cond_0
    const/4 v1, -0x1

    .line 236
    .local v1, "index":I
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "changedString":Ljava/lang/String;
    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 239
    int-to-float v3, p2

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    return v3

    .line 240
    :cond_1
    const-string v3, "px"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 241
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 242
    .local v2, "px":F
    int-to-float v3, p2

    mul-float/2addr v3, v2

    int-to-float v4, p1

    div-float/2addr v3, v4

    float-to-int v3, v3

    return v3

    .line 244
    .end local v2    # "px":F
    :cond_2
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public static getTspHeightPixel(IIIII)I
    .locals 4
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "firmwareWidth"    # I
    .param p3, "firmwareHeight"    # I
    .param p4, "realHeight"    # I

    .prologue
    .line 192
    mul-int v2, p3, p4

    div-int v1, v2, p1

    .line 193
    .local v1, "ret":I
    sget-boolean v2, Lcom/android/server/policy/TspGripCommand;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 194
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 195
    .local v0, "debugString":Ljava/lang/StringBuffer;
    const-string v2, "getTspHeightPixel: init="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 196
    const-string v2, " h="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 197
    const-string v2, "TspGripCommand"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .end local v0    # "debugString":Ljava/lang/StringBuffer;
    :cond_0
    return v1
.end method

.method public static getTspWidthPixel(IIIII)I
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "firmwareWidth"    # I
    .param p3, "firmwareHeight"    # I
    .param p4, "realWidth"    # I

    .prologue
    .line 186
    mul-int v0, p2, p4

    div-int/2addr v0, p0

    return v0
.end method

.method private getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;III)I
    .locals 3
    .param p1, "command"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I
    .param p4, "width"    # I
    .param p5, "firmwareWidth"    # I

    .prologue
    .line 174
    const/4 v2, -0x1

    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 175
    .local v1, "value":I
    if-ltz v1, :cond_0

    .line 176
    return v1

    .line 178
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "strValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    return p3

    .line 182
    :cond_1
    invoke-direct {p0, p4, p5, v0}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;)I

    move-result v2

    return v2
.end method

.method private setMiniumValue()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 248
    iget v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    if-ge v0, v1, :cond_0

    .line 249
    iput v1, p0, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    .line 251
    :cond_0
    iget v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    if-ge v0, v1, :cond_1

    .line 252
    iput v1, p0, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    .line 254
    :cond_1
    iget v0, p0, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    if-ge v0, v1, :cond_2

    .line 255
    iput v1, p0, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    .line 247
    :cond_2
    return-void
.end method


# virtual methods
.method public parse(IIIILandroid/os/Bundle;)Z
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "firmwareWidth"    # I
    .param p4, "firmwareHeight"    # I
    .param p5, "command"    # Landroid/os/Bundle;

    .prologue
    .line 128
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILandroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method

.method public parse(IIIILandroid/os/Bundle;Z)Z
    .locals 20
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "firmwareWidth"    # I
    .param p4, "firmwareHeight"    # I
    .param p5, "command"    # Landroid/os/Bundle;
    .param p6, "applyMin"    # Z

    .prologue
    .line 132
    if-eqz p5, :cond_6

    .line 133
    const-string v5, "deadzone_v2"

    const/4 v6, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, "deadzoneV2Command":Ljava/lang/String;
    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    .line 134
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 135
    const/4 v5, 0x1

    return v5

    .line 138
    :cond_0
    const-string v13, "dead_zone_port_x1"

    const/4 v14, -0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p5

    move/from16 v15, p1

    move/from16 v16, p3

    invoke-direct/range {v11 .. v16}, Lcom/android/server/policy/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;III)I

    move-result v17

    .line 139
    .local v17, "portX1":I
    const-string v13, "dead_zone_port_x2"

    const/4 v14, -0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p5

    move/from16 v15, p1

    move/from16 v16, p3

    invoke-direct/range {v11 .. v16}, Lcom/android/server/policy/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;III)I

    move-result v18

    .line 140
    .local v18, "portX2":I
    const/4 v5, -0x1

    move/from16 v0, v17

    if-eq v0, v5, :cond_5

    const/4 v5, -0x1

    move/from16 v0, v18

    if-ne v0, v5, :cond_5

    .line 141
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    .line 146
    :cond_1
    :goto_0
    const/4 v5, -0x1

    move/from16 v0, v18

    if-eq v0, v5, :cond_2

    .line 147
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    .line 151
    :cond_2
    const-string v13, "dead_zone_port_y1"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    move-object/from16 v11, p0

    move-object/from16 v12, p5

    move/from16 v15, p2

    move/from16 v16, p4

    invoke-direct/range {v11 .. v16}, Lcom/android/server/policy/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;III)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    .line 153
    const-string v5, "dead_zone_port_real_y1"

    const/4 v6, -0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 154
    .local v19, "realPortY1":I
    const/4 v5, -0x1

    move/from16 v0, v19

    if-eq v0, v5, :cond_3

    .line 155
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/policy/TspGripCommand;->getTspHeightPixel(IIIII)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    .line 158
    :cond_3
    const-string v13, "dead_zone_land_x1"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    move-object/from16 v11, p0

    move-object/from16 v12, p5

    move/from16 v15, p1

    move/from16 v16, p3

    invoke-direct/range {v11 .. v16}, Lcom/android/server/policy/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;III)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    .line 159
    const-string v13, "edge_zone_width"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    move-object/from16 v11, p0

    move-object/from16 v12, p5

    move/from16 v15, p1

    move/from16 v16, p3

    invoke-direct/range {v11 .. v16}, Lcom/android/server/policy/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;III)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    .line 160
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    .line 161
    const-string v13, "edge_zone_land"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    move-object/from16 v11, p0

    move-object/from16 v12, p5

    move/from16 v15, p1

    move/from16 v16, p3

    invoke-direct/range {v11 .. v16}, Lcom/android/server/policy/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;III)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    .line 162
    const-string v13, "edge_zone_port"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    move-object/from16 v11, p0

    move-object/from16 v12, p5

    move/from16 v15, p1

    move/from16 v16, p3

    invoke-direct/range {v11 .. v16}, Lcom/android/server/policy/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;III)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    .line 163
    if-eqz p6, :cond_4

    .line 164
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/TspGripCommand;->setMiniumValue()V

    .line 166
    :cond_4
    const/4 v5, 0x1

    return v5

    .line 142
    .end local v19    # "realPortY1":I
    :cond_5
    const/4 v5, -0x1

    move/from16 v0, v17

    if-eq v0, v5, :cond_1

    .line 143
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    goto/16 :goto_0

    .line 168
    .end local v10    # "deadzoneV2Command":Ljava/lang/String;
    .end local v17    # "portX1":I
    .end local v18    # "portX2":I
    :cond_6
    const/4 v5, 0x0

    return v5
.end method

.method public parse(IIIILjava/lang/String;)Z
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "firmwareWidth"    # I
    .param p4, "firmwareHeight"    # I
    .param p5, "command"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public parse(IIIILjava/lang/String;Z)Z
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "firmwareWidth"    # I
    .param p4, "firmwareHeight"    # I
    .param p5, "command"    # Ljava/lang/String;
    .param p6, "applyMin"    # Z

    .prologue
    .line 78
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 124
    :cond_0
    const/4 v7, 0x0

    return v7

    .line 79
    :cond_1
    const-string v7, ","

    invoke-virtual {p5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, "tspDeadzoneArray":[Ljava/lang/String;
    :try_start_0
    array-length v7, v6

    const/4 v8, 0x1

    if-gt v7, v8, :cond_5

    .line 82
    const/4 v7, 0x0

    aget-object v7, v6, v7

    if-eqz v7, :cond_4

    .line 83
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 84
    :goto_0
    invoke-direct {p0, p1, p3, v4}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/TspGripCommand;->mPortX2:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_2
    :goto_1
    if-eqz p6, :cond_3

    .line 120
    invoke-direct {p0}, Lcom/android/server/policy/TspGripCommand;->setMiniumValue()V

    .line 122
    :cond_3
    const/4 v7, 0x1

    return v7

    .line 83
    :cond_4
    const/4 v4, 0x0

    .local v4, "portX2String":Ljava/lang/String;
    goto :goto_0

    .line 87
    .end local v4    # "portX2String":Ljava/lang/String;
    :cond_5
    const/4 v7, 0x0

    :try_start_1
    aget-object v7, v6, v7

    if-eqz v7, :cond_9

    .line 88
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "portX1String":Ljava/lang/String;
    :goto_2
    invoke-direct {p0, p1, p3, v3}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    .line 91
    array-length v7, v6

    const/4 v8, 0x3

    if-lt v7, v8, :cond_6

    .line 92
    const/4 v7, 0x1

    aget-object v7, v6, v7

    if-eqz v7, :cond_a

    .line 93
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 94
    :goto_3
    const/4 v7, 0x2

    aget-object v7, v6, v7

    if-eqz v7, :cond_b

    .line 95
    const/4 v7, 0x2

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 96
    :goto_4
    invoke-direct {p0, p1, p3, v4}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    .line 97
    invoke-direct {p0, p2, p4, v5}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    .line 99
    :cond_6
    array-length v7, v6

    const/4 v8, 0x4

    if-lt v7, v8, :cond_7

    .line 100
    const/4 v7, 0x3

    aget-object v7, v6, v7

    if-eqz v7, :cond_c

    .line 101
    const/4 v7, 0x3

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "landX1String":Ljava/lang/String;
    :goto_5
    invoke-direct {p0, p1, p3, v2}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    .line 104
    .end local v2    # "landX1String":Ljava/lang/String;
    :cond_7
    array-length v7, v6

    const/4 v8, 0x5

    if-lt v7, v8, :cond_8

    .line 105
    const/4 v7, 0x4

    aget-object v7, v6, v7

    if-eqz v7, :cond_d

    .line 106
    const/4 v7, 0x4

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "edgeZoneString":Ljava/lang/String;
    :goto_6
    invoke-direct {p0, p1, p3, v1}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    .line 109
    .end local v1    # "edgeZoneString":Ljava/lang/String;
    :cond_8
    iget v7, p0, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    iput v7, p0, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    .line 110
    array-length v7, v6

    const/4 v8, 0x6

    if-lt v7, v8, :cond_2

    .line 111
    const/4 v7, 0x5

    aget-object v7, v6, v7

    if-eqz v7, :cond_e

    .line 112
    const/4 v7, 0x5

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 113
    .restart local v1    # "edgeZoneString":Ljava/lang/String;
    :goto_7
    invoke-direct {p0, p1, p3, v1}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 116
    .end local v1    # "edgeZoneString":Ljava/lang/String;
    .end local v3    # "portX1String":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_1

    .line 88
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    const/4 v3, 0x0

    goto :goto_2

    .line 93
    .restart local v3    # "portX1String":Ljava/lang/String;
    :cond_a
    const/4 v4, 0x0

    .restart local v4    # "portX2String":Ljava/lang/String;
    goto :goto_3

    .line 95
    .end local v4    # "portX2String":Ljava/lang/String;
    :cond_b
    const/4 v5, 0x0

    .local v5, "portY1String":Ljava/lang/String;
    goto :goto_4

    .line 101
    .end local v5    # "portY1String":Ljava/lang/String;
    :cond_c
    const/4 v2, 0x0

    goto :goto_5

    .line 106
    :cond_d
    const/4 v1, 0x0

    goto :goto_6

    .line 112
    :cond_e
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public reset()V
    .locals 3

    .prologue
    const/16 v2, 0x3c

    const/16 v1, 0xa

    .line 223
    iput v1, p0, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    .line 224
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    .line 225
    const/16 v0, 0x300

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    .line 226
    iput v1, p0, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    .line 227
    iput v2, p0, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    .line 228
    iput v2, p0, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    .line 222
    return-void
.end method

.method public set(IIIIII)V
    .locals 0
    .param p1, "portX1"    # I
    .param p2, "portX2"    # I
    .param p3, "portY1"    # I
    .param p4, "landX1"    # I
    .param p5, "portEdgeZone"    # I
    .param p6, "landEdgeZone"    # I

    .prologue
    .line 214
    iput p1, p0, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    .line 215
    iput p2, p0, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    .line 216
    iput p3, p0, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    .line 217
    iput p4, p0, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    .line 218
    iput p5, p0, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    .line 219
    iput p6, p0, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    .line 213
    return-void
.end method

.method public set(Lcom/android/server/policy/TspGripCommand;)V
    .locals 1
    .param p1, "command"    # Lcom/android/server/policy/TspGripCommand;

    .prologue
    .line 62
    iget v0, p1, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    .line 63
    iget v0, p1, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    .line 64
    iget v0, p1, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    .line 65
    iget v0, p1, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    .line 66
    iget v0, p1, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    .line 67
    iget v0, p1, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "portX1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    const-string v1, ",portX2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    const-string v1, ",landX1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    const-string v1, ",portEdge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    const-string v1, ",landEdge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
