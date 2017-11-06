.class public final Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;
.super Ljava/lang/Object;
.source "SmartVolumeManager.java"


# static fields
.field private static final AVC_STEP:[I

.field private static final CLASSNAME:Ljava/lang/String;

.field private static final DEFAULT_VOLUME_MAX_LEVEL:I = 0xf

.field private static volatile sSmartVolume:Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;


# instance fields
.field private mBaseSmartValue:D

.field private mDoResetBaseValue:Z

.field private mMaxVolumeLevel:I

.field private mPath:Ljava/lang/String;

.field private final mSmartVolumeEngine:Lcom/samsung/sectionmap/SmartVolumeLib;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->CLASSNAME:Ljava/lang/String;

    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->AVC_STEP:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1e
        0x37
        0x3d
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mBaseSmartValue:D

    .line 52
    const/16 v0, 0xf

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mMaxVolumeLevel:I

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mDoResetBaseValue:Z

    .line 80
    new-instance v0, Lcom/samsung/sectionmap/SmartVolumeLib;

    invoke-direct {v0}, Lcom/samsung/sectionmap/SmartVolumeLib;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mSmartVolumeEngine:Lcom/samsung/sectionmap/SmartVolumeLib;

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mSmartVolumeEngine:Lcom/samsung/sectionmap/SmartVolumeLib;

    invoke-virtual {v0}, Lcom/samsung/sectionmap/SmartVolumeLib;->SmartVolumeInit()I

    .line 82
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->sSmartVolume:Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    if-nez v0, :cond_1

    .line 67
    const-class v1, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    monitor-enter v1

    .line 68
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->sSmartVolume:Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->sSmartVolume:Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    .line 71
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->sSmartVolume:Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getSmartVolume(ID)I
    .locals 12
    .param p1, "volume"    # I
    .param p2, "calibration"    # D

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x5

    const/4 v8, 0x1

    const-wide/16 v6, 0x0

    .line 159
    move v2, p1

    .line 160
    .local v2, "tempVolume":I
    const/4 v1, 0x0

    .line 161
    .local v1, "loopCounter":I
    const/4 v0, 0x0

    .line 162
    .local v0, "diffVolume":I
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v9, :cond_1

    .line 163
    if-nez p1, :cond_2

    .line 234
    :cond_1
    :goto_1
    sub-int v3, p1, v0

    return v3

    .line 165
    :cond_2
    if-lez p1, :cond_3

    if-le v1, v8, :cond_3

    if-nez v2, :cond_3

    .line 166
    add-int/lit8 v0, v0, -0x1

    .line 167
    goto :goto_1

    .line 169
    :cond_3
    cmpl-double v3, p2, v6

    if-lez v3, :cond_8

    .line 170
    if-lt v2, v8, :cond_5

    if-gt v2, v9, :cond_5

    .line 171
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->AVC_STEP:[I

    aget v3, v3, v11

    int-to-double v4, v3

    sub-double/2addr p2, v4

    .line 172
    cmpg-double v3, p2, v6

    if-ltz v3, :cond_1

    .line 175
    add-int/lit8 v0, v0, 0x1

    .line 176
    add-int/lit8 v2, v2, -0x1

    .line 199
    :cond_4
    :goto_2
    cmpg-double v3, p2, v6

    if-gtz v3, :cond_0

    goto :goto_1

    .line 177
    :cond_5
    const/4 v3, 0x6

    if-lt v2, v3, :cond_6

    const/4 v3, 0x7

    if-gt v2, v3, :cond_6

    .line 178
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->AVC_STEP:[I

    aget v3, v3, v8

    int-to-double v4, v3

    sub-double/2addr p2, v4

    .line 179
    cmpg-double v3, p2, v6

    if-ltz v3, :cond_1

    .line 182
    add-int/lit8 v0, v0, 0x1

    .line 183
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 184
    :cond_6
    const/16 v3, 0x8

    if-lt v2, v3, :cond_7

    const/16 v3, 0xd

    if-gt v2, v3, :cond_7

    .line 185
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->AVC_STEP:[I

    aget v3, v3, v10

    int-to-double v4, v3

    sub-double/2addr p2, v4

    .line 186
    cmpg-double v3, p2, v6

    if-ltz v3, :cond_1

    .line 189
    add-int/lit8 v0, v0, 0x1

    .line 190
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 191
    :cond_7
    const/16 v3, 0xe

    if-lt v2, v3, :cond_4

    const/16 v3, 0xf

    if-gt v2, v3, :cond_4

    .line 192
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->AVC_STEP:[I

    aget v3, v3, v8

    int-to-double v4, v3

    sub-double/2addr p2, v4

    .line 193
    cmpg-double v3, p2, v6

    if-ltz v3, :cond_1

    .line 196
    add-int/lit8 v0, v0, 0x1

    .line 197
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 203
    :cond_8
    if-ltz v2, :cond_9

    const/4 v3, 0x4

    if-gt v2, v3, :cond_9

    .line 204
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->AVC_STEP:[I

    aget v3, v3, v11

    int-to-double v4, v3

    add-double/2addr p2, v4

    .line 205
    cmpl-double v3, p2, v6

    if-gtz v3, :cond_1

    .line 208
    add-int/lit8 v0, v0, -0x1

    .line 209
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 210
    :cond_9
    if-lt v2, v9, :cond_a

    const/4 v3, 0x6

    if-gt v2, v3, :cond_a

    .line 211
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->AVC_STEP:[I

    aget v3, v3, v8

    int-to-double v4, v3

    add-double/2addr p2, v4

    .line 212
    cmpl-double v3, p2, v6

    if-gtz v3, :cond_1

    .line 215
    add-int/lit8 v0, v0, -0x1

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 217
    :cond_a
    const/4 v3, 0x7

    if-lt v2, v3, :cond_b

    const/16 v3, 0xc

    if-gt v2, v3, :cond_b

    .line 218
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->AVC_STEP:[I

    aget v3, v3, v10

    int-to-double v4, v3

    add-double/2addr p2, v4

    .line 219
    cmpl-double v3, p2, v6

    if-gtz v3, :cond_1

    .line 222
    add-int/lit8 v0, v0, -0x1

    .line 223
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 224
    :cond_b
    const/16 v3, 0xd

    if-lt v2, v3, :cond_0

    const/16 v3, 0xe

    if-gt v2, v3, :cond_0

    .line 225
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->AVC_STEP:[I

    aget v3, v3, v8

    int-to-double v4, v3

    add-double/2addr p2, v4

    .line 226
    cmpl-double v3, p2, v6

    if-gtz v3, :cond_1

    .line 229
    add-int/lit8 v0, v0, -0x1

    .line 230
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method private getSmartVolumeWithMaxLevel(IDI)I
    .locals 8
    .param p1, "volume"    # I
    .param p2, "calibration"    # D
    .param p4, "maxLevel"    # I

    .prologue
    .line 241
    int-to-float v3, p1

    .line 242
    .local v3, "tempVolume":F
    int-to-float v4, p4

    const/high16 v5, 0x41700000    # 15.0f

    div-float v2, v4, v5

    .line 243
    .local v2, "rate":F
    const/4 v1, 0x0

    .line 244
    .local v1, "loopCounter":I
    const/4 v0, 0x0

    .line 245
    .local v0, "diffVolume":I
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->CLASSNAME:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSmartVolumeWithMaxLevel maxLevel : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x5

    if-ge v1, v4, :cond_1

    .line 248
    if-nez p1, :cond_2

    .line 319
    :cond_1
    :goto_1
    sub-int v4, p1, v0

    return v4

    .line 250
    :cond_2
    if-lez p1, :cond_3

    const/4 v4, 0x1

    if-le v1, v4, :cond_3

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-nez v4, :cond_3

    .line 251
    add-int/lit8 v0, v0, -0x1

    .line 252
    goto :goto_1

    .line 254
    :cond_3
    const-wide/16 v4, 0x0

    cmpl-double v4, p2, v4

    if-lez v4, :cond_8

    .line 255
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_5

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float/2addr v4, v2

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_5

    .line 256
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->AVC_STEP:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    int-to-double v4, v4

    sub-double/2addr p2, v4

    .line 257
    const-wide/16 v4, 0x0

    cmpg-double v4, p2, v4

    if-ltz v4, :cond_1

    .line 260
    add-int/lit8 v0, v0, 0x1

    .line 261
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    .line 284
    :cond_4
    :goto_2
    const-wide/16 v4, 0x0

    cmpg-double v4, p2, v4

    if-gtz v4, :cond_0

    goto :goto_1

    .line 262
    :cond_5
    const/high16 v4, 0x40a00000    # 5.0f

    mul-float/2addr v4, v2

    cmpl-float v4, v3, v4

    if-lez v4, :cond_6

    const/high16 v4, 0x40e00000    # 7.0f

    mul-float/2addr v4, v2

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_6

    .line 263
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->AVC_STEP:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-double v4, v4

    sub-double/2addr p2, v4

    .line 264
    const-wide/16 v4, 0x0

    cmpg-double v4, p2, v4

    if-ltz v4, :cond_1

    .line 267
    add-int/lit8 v0, v0, 0x1

    .line 268
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    goto :goto_2

    .line 269
    :cond_6
    const/high16 v4, 0x40e00000    # 7.0f

    mul-float/2addr v4, v2

    cmpl-float v4, v3, v4

    if-lez v4, :cond_7

    const/high16 v4, 0x41500000    # 13.0f

    mul-float/2addr v4, v2

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_7

    .line 270
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->AVC_STEP:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-double v4, v4

    sub-double/2addr p2, v4

    .line 271
    const-wide/16 v4, 0x0

    cmpg-double v4, p2, v4

    if-ltz v4, :cond_1

    .line 274
    add-int/lit8 v0, v0, 0x1

    .line 275
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    goto :goto_2

    .line 276
    :cond_7
    const/high16 v4, 0x41500000    # 13.0f

    mul-float/2addr v4, v2

    cmpl-float v4, v3, v4

    if-lez v4, :cond_4

    int-to-float v4, p4

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_4

    .line 277
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->AVC_STEP:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-double v4, v4

    sub-double/2addr p2, v4

    .line 278
    const-wide/16 v4, 0x0

    cmpg-double v4, p2, v4

    if-ltz v4, :cond_1

    .line 281
    add-int/lit8 v0, v0, 0x1

    .line 282
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    goto :goto_2

    .line 288
    :cond_8
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_9

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v4, v2

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_9

    .line 289
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->AVC_STEP:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    int-to-double v4, v4

    add-double/2addr p2, v4

    .line 290
    const-wide/16 v4, 0x0

    cmpl-double v4, p2, v4

    if-gtz v4, :cond_1

    .line 293
    add-int/lit8 v0, v0, -0x1

    .line 294
    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    goto/16 :goto_0

    .line 295
    :cond_9
    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v4, v2

    cmpl-float v4, v3, v4

    if-lez v4, :cond_a

    const/high16 v4, 0x40c00000    # 6.0f

    mul-float/2addr v4, v2

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_a

    .line 296
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->AVC_STEP:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-double v4, v4

    add-double/2addr p2, v4

    .line 297
    const-wide/16 v4, 0x0

    cmpl-double v4, p2, v4

    if-gtz v4, :cond_1

    .line 300
    add-int/lit8 v0, v0, -0x1

    .line 301
    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    goto/16 :goto_0

    .line 302
    :cond_a
    const/high16 v4, 0x40c00000    # 6.0f

    mul-float/2addr v4, v2

    cmpl-float v4, v3, v4

    if-lez v4, :cond_b

    const/high16 v4, 0x41400000    # 12.0f

    mul-float/2addr v4, v2

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_b

    .line 303
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->AVC_STEP:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    int-to-double v4, v4

    add-double/2addr p2, v4

    .line 304
    const-wide/16 v4, 0x0

    cmpl-double v4, p2, v4

    if-gtz v4, :cond_1

    .line 307
    add-int/lit8 v0, v0, -0x1

    .line 308
    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    goto/16 :goto_0

    .line 309
    :cond_b
    const/high16 v4, 0x41400000    # 12.0f

    mul-float/2addr v4, v2

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    add-int/lit8 v4, p4, -0x1

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_0

    .line 310
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->AVC_STEP:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-double v4, v4

    add-double/2addr p2, v4

    .line 311
    const-wide/16 v4, 0x0

    cmpl-double v4, p2, v4

    if-gtz v4, :cond_1

    .line 314
    add-int/lit8 v0, v0, -0x1

    .line 315
    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    goto/16 :goto_0
.end method


# virtual methods
.method public getSongPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume(ILjava/lang/String;)I
    .locals 10
    .param p1, "volume"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    .line 114
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mPath:Ljava/lang/String;

    .line 116
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mSmartVolumeEngine:Lcom/samsung/sectionmap/SmartVolumeLib;

    invoke-virtual {v5, p2}, Lcom/samsung/sectionmap/SmartVolumeLib;->SmartVolumeEXE(Ljava/lang/String;)I

    move-result v5

    int-to-double v2, v5

    .line 118
    .local v2, "smartValue":D
    cmpg-double v5, v2, v8

    if-gtz v5, :cond_0

    .line 119
    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->CLASSNAME:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVolume fail and so return current volume : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .end local p1    # "volume":I
    :goto_0
    return p1

    .line 123
    .restart local p1    # "volume":I
    :cond_0
    iget-boolean v5, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mDoResetBaseValue:Z

    if-eqz v5, :cond_1

    .line 124
    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mBaseSmartValue:D

    .line 125
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mDoResetBaseValue:Z

    .line 128
    :cond_1
    iget-wide v6, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mBaseSmartValue:D

    sub-double v0, v2, v6

    .line 130
    .local v0, "calibration":D
    iget-wide v6, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mBaseSmartValue:D

    cmpl-double v5, v6, v8

    if-eqz v5, :cond_2

    cmpl-double v5, v0, v8

    if-nez v5, :cond_3

    .line 131
    :cond_2
    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->CLASSNAME:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Useless get SmartVolume!, so return current volume : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_3
    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mMaxVolumeLevel:I

    const/16 v6, 0xf

    if-eq v5, v6, :cond_5

    .line 138
    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mMaxVolumeLevel:I

    invoke-direct {p0, p1, v0, v1, v5}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->getSmartVolumeWithMaxLevel(IDI)I

    move-result v4

    .line 143
    .local v4, "smartVolume":I
    :goto_1
    if-gez v4, :cond_4

    .line 144
    const/4 v4, 0x0

    .line 146
    :cond_4
    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->CLASSNAME:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getVolume current system volume "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nSmartVolumeExe adj : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " base adj : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mBaseSmartValue:D

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nsmartVolume : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\npath : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v4

    .line 149
    goto/16 :goto_0

    .line 140
    .end local v4    # "smartVolume":I
    :cond_5
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->getSmartVolume(ID)I

    move-result v4

    .restart local v4    # "smartVolume":I
    goto :goto_1
.end method

.method public release()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->sSmartVolume:Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mSmartVolumeEngine:Lcom/samsung/sectionmap/SmartVolumeLib;

    invoke-virtual {v0}, Lcom/samsung/sectionmap/SmartVolumeLib;->SmartVolumeRelease()I

    move-result v0

    return v0
.end method

.method public resetBaseValue()V
    .locals 2

    .prologue
    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mDoResetBaseValue:Z

    .line 327
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mSmartVolumeEngine:Lcom/samsung/sectionmap/SmartVolumeLib;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/sectionmap/SmartVolumeLib;->SmartVolumeEXE(Ljava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mBaseSmartValue:D

    .line 329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mDoResetBaseValue:Z

    .line 331
    :cond_0
    return-void
.end method

.method public resetValues()V
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mPath:Ljava/lang/String;

    .line 348
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->resetBaseValue()V

    .line 349
    return-void
.end method

.method public setMaxVolumeLevel(I)V
    .locals 0
    .param p1, "maxVolumeLevel"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SmartVolumeManager;->mMaxVolumeLevel:I

    .line 102
    return-void
.end method
