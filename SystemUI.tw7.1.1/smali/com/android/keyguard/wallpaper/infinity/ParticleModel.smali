.class public Lcom/android/keyguard/wallpaper/infinity/ParticleModel;
.super Ljava/lang/Object;
.source "ParticleModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/wallpaper/infinity/ParticleModel$1;
    }
.end annotation


# static fields
.field public static ZIndexComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/keyguard/wallpaper/infinity/ParticleModel;",
            ">;"
        }
    .end annotation
.end field

.field public static count:I


# instance fields
.field public alpha:F

.field public blinkSpeed:F

.field public color:I

.field public extpandX:F

.field public extpandY:F

.field public index:I

.field public initAlpha:F

.field public initBlink:F

.field public initRadius:F

.field public initX:F

.field public initY:F

.field public initZ:F

.field public isStart:Z

.field public needBlink:Z

.field public needLongBlink:Z

.field public radius:F

.field public tension:F

.field public tx:F

.field public ty:F

.field public tz:F

.field public x:F

.field public xRand:F

.field public y:F

.field public yRand:F

.field public yx:F

.field public yy:F

.field public yz:F

.field public z:F

.field public zRand:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->count:I

    new-instance v0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel$1;

    invoke-direct {v0}, Lcom/android/keyguard/wallpaper/infinity/ParticleModel$1;-><init>()V

    sput-object v0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->ZIndexComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/high16 v1, 0x42480000    # 50.0f

    const/4 v0, 0x0

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->needBlink:Z

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->needLongBlink:Z

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->isStart:Z

    iput v1, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->extpandX:F

    iput v1, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->extpandY:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    sub-float/2addr v0, v2

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->x:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    sub-float/2addr v0, v2

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->y:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    sub-float/2addr v0, v2

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->z:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fe99999a0000000L    # 0.800000011920929

    mul-double/2addr v0, v2

    const-wide v2, 0x3fc99999a0000000L    # 0.20000000298023224

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->alpha:F

    return-void
.end method

.method public constructor <init>(FFFFF)V
    .locals 9

    const/4 v8, -0x1

    const/high16 v0, 0x42480000    # 50.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->needBlink:Z

    iput-boolean v2, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->needLongBlink:Z

    iput-boolean v2, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->isStart:Z

    iput v0, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->extpandX:F

    iput v0, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->extpandY:F

    iput p1, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->x:F

    iput p2, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->y:F

    iput p3, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->z:F

    iput p1, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->initX:F

    iput p2, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->initY:F

    iput p3, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->initZ:F

    iput p4, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->radius:F

    iput p4, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->initRadius:F

    iput p5, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->alpha:F

    iput p5, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->initAlpha:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    double-to-float v0, v4

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v0, v3

    const v3, 0x3dcccccd    # 0.1f

    add-float/2addr v0, v3

    iput v0, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->blinkSpeed:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    double-to-float v0, v4

    iput v0, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->initBlink:F

    sget v0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->count:I

    iput v0, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->index:I

    sget v0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->count:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->count:I

    iget v0, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->index:I

    rem-int/lit8 v0, v0, 0x64

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->needBlink:Z

    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->needBlink:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->index:I

    rem-int/lit8 v0, v0, 0x29

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->needLongBlink:Z

    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x3fd3333340000000L    # 0.30000001192092896

    cmpl-double v0, v4, v6

    if-lez v0, :cond_3

    const-string/jumbo v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->color:I

    :goto_2
    iput v8, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->color:I

    iget v0, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->index:I

    rem-int/lit16 v0, v0, 0xc9

    if-nez v0, :cond_4

    :goto_3
    iput-boolean v1, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->isStart:Z

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iput v8, p0, Lcom/android/keyguard/wallpaper/infinity/ParticleModel;->color:I

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3
.end method
