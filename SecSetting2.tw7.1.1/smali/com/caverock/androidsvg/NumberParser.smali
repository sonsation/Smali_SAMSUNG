.class public Lcom/caverock/androidsvg/NumberParser;
.super Ljava/lang/Object;
.source "NumberParser.java"


# static fields
.field static TOO_BIG:J

.field private static final negativePowersOf10:[F

.field private static final positivePowersOf10:[F


# instance fields
.field pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide v0, 0xcccccccccccccccL

    .line 38
    sput-wide v0, Lcom/caverock/androidsvg/NumberParser;->TOO_BIG:J

    const/16 v0, 0x27

    .line 267
    new-array v0, v0, [F

    aput v3, v0, v4

    const/high16 v1, 0x41200000    # 10.0f

    aput v1, v0, v5

    const/high16 v1, 0x42c80000    # 100.0f

    aput v1, v0, v6

    const/high16 v1, 0x447a0000    # 1000.0f

    aput v1, v0, v7

    const/4 v1, 0x4

    const v2, 0x461c4000    # 10000.0f

    aput v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x47c35000    # 100000.0f

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x49742400    # 1000000.0f

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x4b189680    # 1.0E7f

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x4cbebc20    # 1.0E8f

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x4e6e6b28    # 1.0E9f

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x501502f9    # 1.0E10f

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x51ba43b7    # 9.9999998E10f

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x5368d4a5    # 1.0E12f

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x551184e7    # 9.9999998E12f

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x56b5e621    # 1.0E14f

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x58635fa9    # 9.9999999E14f

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x5a0e1bca    # 1.00000003E16f

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, 0x5bb1a2bc    # 9.9999998E16f

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x5d5e0b6b    # 9.9999998E17f

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x5f0ac723    # 1.0E19f

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x60ad78ec    # 1.0E20f

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x6258d727    # 1.0E21f

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x64078678    # 1.0E22f

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x65a96816    # 1.0E23f

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x6753c21c    # 1.0E24f

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x69045951    # 1.0E25f

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0x6aa56fa6    # 1.0E26f

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x6c4ecb8f    # 1.0E27f

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x6e013f39    # 1.0E28f

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x6fa18f08    # 1.0E29f

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x7149f2ca    # 1.0E30f

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x72fc6f7c    # 1.0E31f

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x749dc5ae    # 1.0E32f

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x76453719    # 1.0E33f

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, 0x77f684df    # 1.0E34f

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x799a130c    # 1.0E35f

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, 0x7b4097ce    # 1.0E36f

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x7cf0bdc2    # 1.0E37f

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, 0x7e967699    # 1.0E38f

    aput v2, v0, v1

    sput-object v0, Lcom/caverock/androidsvg/NumberParser;->positivePowersOf10:[F

    const/16 v0, 0x27

    .line 273
    new-array v0, v0, [F

    aput v3, v0, v4

    const v1, 0x3dcccccd    # 0.1f

    aput v1, v0, v5

    const v1, 0x3c23d70a    # 0.01f

    aput v1, v0, v6

    const v1, 0x3a83126f    # 0.001f

    aput v1, v0, v7

    const/4 v1, 0x4

    const v2, 0x38d1b717    # 1.0E-4f

    aput v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x3727c5ac    # 1.0E-5f

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x358637bd    # 1.0E-6f

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x33d6bf95    # 1.0E-7f

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x322bcc77    # 1.0E-8f

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x3089705f    # 1.0E-9f

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x2edbe6ff    # 1.0E-10f

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x2d2febff    # 1.0E-11f

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x2b8cbccc    # 1.0E-12f

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x29e12e13    # 1.0E-13f

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x283424dc    # 1.0E-14f

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x26901d7d    # 1.0E-15f

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x24e69595    # 1.0E-16f

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, 0x233877aa    # 1.0E-17f

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x219392ef    # 1.0E-18f

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x1fec1e4a    # 1.0E-19f

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x1e3ce508    # 1.0E-20f

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x1c971da0    # 1.0E-21f

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x1af1c901    # 1.0E-22f

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x19416d9a    # 1.0E-23f

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x179abe15    # 1.0E-24f

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x15f79688    # 1.0E-25f

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0x14461206    # 1.0E-26f

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x129e74d2    # 1.0E-27f

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x10fd87b6    # 1.0E-28f

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0xf4ad2f8    # 1.0E-29f

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0xda24260    # 1.0E-30f

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0xc01ceb3    # 1.0E-31f

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, 0xa4fb11f    # 1.0E-32f

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x8a6274c    # 1.0E-33f

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, 0x704ec3d    # 1.0E-34f

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x554ad2e    # 1.0E-35f

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, 0x3aa2425    # 1.0E-36f

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x2081cea    # 1.0E-37f

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, 0x6ce3ee    # 1.0E-38f

    aput v2, v0, v1

    sput-object v0, Lcom/caverock/androidsvg/NumberParser;->negativePowersOf10:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndPos()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    return v0
.end method

.method public parseNumber(Ljava/lang/String;II)F
    .locals 22
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "startpos"    # I
    .param p3, "len"    # I

    .prologue
    .line 65
    const/4 v11, 0x0

    .local v11, "isNegative":Z
    const-wide/16 v16, 0x0

    .local v16, "significand":J
    const/4 v12, 0x0

    .local v12, "numDigits":I
    const/4 v13, 0x0

    .local v13, "numLeadingZeroes":I
    const/4 v14, 0x0

    .line 70
    .local v14, "numTrailingZeroes":I
    const/4 v5, 0x0

    .local v5, "decimalSeen":Z
    const/4 v15, 0x0

    .local v15, "sigStart":I
    const/4 v4, 0x0

    .local v4, "decimalPos":I
    const/4 v9, 0x0

    .line 75
    .local v9, "exponent":I
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/caverock/androidsvg/NumberParser;->pos:I

    .line 77
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p3

    if-ge v0, v1, :cond_4

    .line 80
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 81
    .local v3, "ch":C
    packed-switch v3, :pswitch_data_0

    .line 87
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    .line 89
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p3

    if-lt v0, v1, :cond_5

    .line 139
    :cond_0
    if-nez v5, :cond_11

    .line 146
    :cond_1
    if-eqz v12, :cond_12

    .line 156
    :goto_2
    if-nez v5, :cond_14

    .line 159
    move v9, v14

    .line 163
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p3

    if-lt v0, v1, :cond_15

    .line 236
    :cond_2
    :goto_4
    add-int v18, v9, v12

    const/16 v19, 0x27

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1f

    :cond_3
    const/high16 v18, 0x7fc00000    # NaNf

    .line 237
    return v18

    .end local v3    # "ch":C
    :cond_4
    const/high16 v18, 0x7fc00000    # NaNf

    .line 78
    return v18

    .line 82
    .restart local v3    # "ch":C
    :pswitch_1
    const/4 v11, 0x1

    .line 84
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/caverock/androidsvg/NumberParser;->pos:I

    goto :goto_0

    .line 91
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v18, 0x30

    .line 92
    move/from16 v0, v18

    if-eq v3, v0, :cond_8

    const/16 v18, 0x31

    .line 101
    move/from16 v0, v18

    if-ge v3, v0, :cond_a

    :cond_6
    const/16 v18, 0x2e

    .line 125
    move/from16 v0, v18

    if-ne v3, v0, :cond_0

    .line 127
    if-nez v5, :cond_0

    .line 131
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    sub-int v4, v18, v15

    .line 132
    const/4 v5, 0x1

    .line 136
    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/caverock/androidsvg/NumberParser;->pos:I

    goto :goto_1

    .line 94
    :cond_8
    if-eqz v12, :cond_9

    .line 98
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 95
    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_a
    const/16 v18, 0x39

    .line 101
    move/from16 v0, v18

    if-gt v3, v0, :cond_6

    .line 104
    add-int/2addr v12, v14

    .line 105
    :goto_6
    if-gtz v14, :cond_b

    .line 114
    sget-wide v18, Lcom/caverock/androidsvg/NumberParser;->TOO_BIG:J

    cmp-long v18, v16, v18

    if-gtz v18, :cond_e

    const/16 v18, 0x1

    :goto_7
    if-nez v18, :cond_f

    const/high16 v18, 0x7fc00000    # NaNf

    .line 117
    return v18

    .line 106
    :cond_b
    sget-wide v18, Lcom/caverock/androidsvg/NumberParser;->TOO_BIG:J

    cmp-long v18, v16, v18

    if-gtz v18, :cond_c

    const/16 v18, 0x1

    :goto_8
    if-nez v18, :cond_d

    const/high16 v18, 0x7fc00000    # NaNf

    .line 108
    return v18

    .line 106
    :cond_c
    const/16 v18, 0x0

    goto :goto_8

    :cond_d
    const-wide/16 v18, 0xa

    .line 110
    mul-long v16, v16, v18

    .line 111
    add-int/lit8 v14, v14, -0x1

    goto :goto_6

    .line 114
    :cond_e
    const/16 v18, 0x0

    goto :goto_7

    :cond_f
    const-wide/16 v18, 0xa

    .line 119
    mul-long v18, v18, v16

    add-int/lit8 v20, v3, -0x30

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v16, v18, v20

    .line 120
    add-int/lit8 v12, v12, 0x1

    const-wide/16 v18, 0x0

    .line 122
    cmp-long v18, v16, v18

    if-ltz v18, :cond_10

    const/16 v18, 0x1

    :goto_9
    if-nez v18, :cond_7

    const/high16 v18, 0x7fc00000    # NaNf

    .line 123
    return v18

    .line 122
    :cond_10
    const/16 v18, 0x0

    goto :goto_9

    .line 139
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    add-int/lit8 v19, v4, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    const/high16 v18, 0x7fc00000    # NaNf

    .line 142
    return v18

    .line 147
    :cond_12
    if-eqz v13, :cond_13

    const/4 v12, 0x1

    .line 153
    goto/16 :goto_2

    :cond_13
    const/high16 v18, 0x7fc00000    # NaNf

    .line 149
    return v18

    .line 157
    :cond_14
    sub-int v18, v4, v13

    sub-int v9, v18, v12

    goto/16 :goto_3

    .line 165
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v18, 0x45

    .line 166
    move/from16 v0, v18

    if-ne v3, v0, :cond_18

    .line 168
    :cond_16
    const/4 v6, 0x0

    .local v6, "expIsNegative":Z
    const/4 v8, 0x0

    .line 170
    .local v8, "expVal":I
    const/4 v2, 0x0

    .line 172
    .local v2, "abortExponent":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/caverock/androidsvg/NumberParser;->pos:I

    .line 173
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p3

    if-eq v0, v1, :cond_19

    .line 179
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    packed-switch v18, :pswitch_data_1

    .line 190
    :pswitch_3
    const/4 v2, 0x1

    .line 191
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/caverock/androidsvg/NumberParser;->pos:I

    .line 194
    :goto_a
    :pswitch_4
    if-nez v2, :cond_2

    .line 196
    move-object/from16 v0, p0

    iget v7, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    .line 198
    .local v7, "expStart":I
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p3

    if-lt v0, v1, :cond_1a

    .line 216
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v7, :cond_1d

    .line 221
    if-nez v6, :cond_1e

    .line 224
    add-int/2addr v9, v8

    goto/16 :goto_4

    .end local v2    # "abortExponent":Z
    .end local v6    # "expIsNegative":Z
    .end local v7    # "expStart":I
    .end local v8    # "expVal":I
    :cond_18
    const/16 v18, 0x65

    .line 166
    move/from16 v0, v18

    if-eq v3, v0, :cond_16

    goto/16 :goto_4

    .restart local v2    # "abortExponent":Z
    .restart local v6    # "expIsNegative":Z
    .restart local v8    # "expVal":I
    :cond_19
    const/high16 v18, 0x7fc00000    # NaNf

    .line 176
    return v18

    .line 180
    :pswitch_5
    const/4 v6, 0x1

    .line 182
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/caverock/androidsvg/NumberParser;->pos:I

    goto :goto_a

    .line 200
    .restart local v7    # "expStart":I
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v18, 0x30

    .line 201
    move/from16 v0, v18

    if-lt v3, v0, :cond_17

    const/16 v18, 0x39

    move/from16 v0, v18

    if-gt v3, v0, :cond_17

    .line 203
    int-to-long v0, v8

    move-wide/from16 v18, v0

    sget-wide v20, Lcom/caverock/androidsvg/NumberParser;->TOO_BIG:J

    cmp-long v18, v18, v20

    if-gtz v18, :cond_1b

    const/16 v18, 0x1

    :goto_c
    if-nez v18, :cond_1c

    const/high16 v18, 0x7fc00000    # NaNf

    .line 206
    return v18

    .line 203
    :cond_1b
    const/16 v18, 0x0

    goto :goto_c

    .line 208
    :cond_1c
    mul-int/lit8 v18, v8, 0xa

    add-int/lit8 v19, v3, -0x30

    add-int v8, v18, v19

    .line 209
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/caverock/androidsvg/NumberParser;->pos:I

    goto :goto_b

    :cond_1d
    const/high16 v18, 0x7fc00000    # NaNf

    .line 218
    return v18

    .line 222
    :cond_1e
    sub-int/2addr v9, v8

    goto/16 :goto_4

    .line 236
    .end local v2    # "abortExponent":Z
    .end local v6    # "expIsNegative":Z
    .end local v7    # "expStart":I
    .end local v8    # "expVal":I
    :cond_1f
    add-int v18, v9, v12

    const/16 v19, -0x2c

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    .line 239
    move-wide/from16 v0, v16

    long-to-float v10, v0

    .local v10, "f":F
    const-wide/16 v18, 0x0

    .line 241
    cmp-long v18, v16, v18

    if-eqz v18, :cond_20

    .line 244
    if-gtz v9, :cond_21

    .line 248
    if-ltz v9, :cond_22

    .line 263
    :cond_20
    :goto_d
    if-nez v11, :cond_24

    .end local v10    # "f":F
    :goto_e
    return v10

    .line 246
    .restart local v10    # "f":F
    :cond_21
    sget-object v18, Lcom/caverock/androidsvg/NumberParser;->positivePowersOf10:[F

    aget v18, v18, v9

    mul-float v10, v10, v18

    goto :goto_d

    :cond_22
    const/16 v18, -0x26

    .line 253
    move/from16 v0, v18

    if-lt v9, v0, :cond_23

    .line 259
    :goto_f
    sget-object v18, Lcom/caverock/androidsvg/NumberParser;->negativePowersOf10:[F

    neg-int v0, v9

    move/from16 v19, v0

    aget v18, v18, v19

    mul-float v10, v10, v18

    goto :goto_d

    .line 255
    :cond_23
    float-to-double v0, v10

    move-wide/from16 v18, v0

    const-wide v20, 0x3bc79ca10c924223L    # 1.0E-20

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v10, v0

    .line 256
    add-int/lit8 v9, v9, 0x14

    goto :goto_f

    .line 263
    :cond_24
    neg-float v10, v10

    goto :goto_e

    .line 81
    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 179
    :pswitch_data_1
    .packed-switch 0x2b
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
