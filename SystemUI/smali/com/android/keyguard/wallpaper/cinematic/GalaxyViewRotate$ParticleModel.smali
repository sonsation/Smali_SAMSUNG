.class Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;
.super Ljava/lang/Object;
.source "GalaxyViewRotate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParticleModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel$1;
    }
.end annotation


# static fields
.field public static ZIndexComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;",
            ">;"
        }
    .end annotation
.end field

.field static count:I


# instance fields
.field alpha:F

.field blinkSpeed:F

.field color:I

.field expand:F

.field index:I

.field initBlink:F

.field isStart:Z

.field needBlink:Z

.field needLongBlink:Z

.field radius:F

.field tension:F

.field tx:F

.field ty:F

.field tz:F

.field x:F

.field xRand:F

.field y:F

.field yRand:F

.field yx:F

.field yy:F

.field yz:F

.field z:F

.field zRand:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x0

    sput v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->count:I

    .line 462
    new-instance v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel$1;

    invoke-direct {v0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel$1;-><init>()V

    sput-object v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->ZIndexComparator:Ljava/util/Comparator;

    .line 395
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->needBlink:Z

    .line 424
    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->needLongBlink:Z

    .line 425
    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->isStart:Z

    .line 427
    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->expand:F

    .line 430
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    sub-float/2addr v0, v2

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->x:F

    .line 431
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    sub-float/2addr v0, v2

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->y:F

    .line 432
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    sub-float/2addr v0, v2

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->z:F

    .line 433
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fe99999a0000000L    # 0.800000011920929

    mul-double/2addr v0, v2

    const-wide v2, 0x3fc99999a0000000L    # 0.20000000298023224

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->alpha:F

    .line 429
    return-void
.end method

.method public constructor <init>(FFFFF)V
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "radius"    # F
    .param p5, "minAlpha"    # F

    .prologue
    const/4 v8, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iput-boolean v2, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->needBlink:Z

    .line 424
    iput-boolean v2, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->needLongBlink:Z

    .line 425
    iput-boolean v2, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->isStart:Z

    .line 427
    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->expand:F

    .line 437
    iput p1, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->x:F

    .line 438
    iput p2, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->y:F

    .line 439
    iput p3, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->z:F

    .line 440
    iput p4, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->radius:F

    .line 441
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    double-to-float v0, v4

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p5

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v0, p5

    iput v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->alpha:F

    .line 442
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    double-to-float v0, v4

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v0, v3

    const v3, 0x3dcccccd    # 0.1f

    add-float/2addr v0, v3

    iput v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->blinkSpeed:F

    .line 443
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    double-to-float v0, v4

    iput v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->initBlink:F

    .line 445
    sget v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->count:I

    iput v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->index:I

    .line 446
    sget v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->count:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->count:I

    .line 447
    iget v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->index:I

    rem-int/lit8 v0, v0, 0x64

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->needBlink:Z

    .line 448
    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->needBlink:Z

    if-nez v0, :cond_0

    .line 449
    iget v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->index:I

    rem-int/lit8 v0, v0, 0x29

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->needLongBlink:Z

    .line 452
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x3fd3333340000000L    # 0.30000001192092896

    cmpl-double v0, v4, v6

    if-lez v0, :cond_3

    .line 453
    const-string/jumbo v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->color:I

    .line 457
    :goto_2
    iput v8, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->color:I

    .line 459
    iget v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->index:I

    rem-int/lit16 v0, v0, 0xc9

    if-nez v0, :cond_4

    :goto_3
    iput-boolean v1, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->isStart:Z

    .line 436
    return-void

    :cond_1
    move v0, v2

    .line 447
    goto :goto_0

    :cond_2
    move v0, v2

    .line 449
    goto :goto_1

    .line 455
    :cond_3
    iput v8, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$ParticleModel;->color:I

    goto :goto_2

    :cond_4
    move v1, v2

    .line 459
    goto :goto_3
.end method
