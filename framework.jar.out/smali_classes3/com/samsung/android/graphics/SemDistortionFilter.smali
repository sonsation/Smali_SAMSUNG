.class public Lcom/samsung/android/graphics/SemDistortionFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilter;
.source "SemDistortionFilter.java"


# static fields
.field private static final DISTORTION:I = 0x0

.field private static final MAX_RADIUS:F = 1024.0f

.field private static mFragmentShaderCode:Ljava/lang/String;


# instance fields
.field private mRadius:F


# direct methods
.method static synthetic -get0(Lcom/samsung/android/graphics/SemDistortionFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemDistortionFilter;->mRadius:F

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/graphics/SemDistortionFilter;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/SemDistortionFilter;->mRadius:F

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nvoid main(void) {\n   vec2 xy = 2.0 * outTexCoords.xy - 1.0;\n   vec2 uv;\n   float d = length(xy);\n   if ( d < 1.0 ) {\n       float theta = atan(xy.y, xy.x);\n       float radius = length(xy);\n       radius = pow(radius, filterParams[0]+1.0);\n       xy.x = radius * cos(theta);\n       xy.y = radius * sin(theta);\n       uv = 0.5 * (xy + 1.0);\n   } else {\n       uv = outTexCoords.xy;\n   }\n   gl_FragColor = texture2D(baseSampler, uv);\n}\n\n"

    .line 31
    sput-object v0, Lcom/samsung/android/graphics/SemDistortionFilter;->mFragmentShaderCode:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    const-string/jumbo v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    sget-object v1, Lcom/samsung/android/graphics/SemDistortionFilter;->mFragmentShaderCode:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/SemDistortionFilter;->mRadius:F

    .line 60
    return-void
.end method


# virtual methods
.method public animateDistortion(FFJJLandroid/animation/TimeInterpolator;)[I
    .locals 7
    .param p1, "aStartValue"    # F
    .param p2, "aEndValue"    # F
    .param p3, "aDuration"    # J
    .param p5, "aDelay"    # J
    .param p7, "aInterpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 102
    new-instance v1, Lcom/samsung/android/graphics/SemDistortionFilter$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/graphics/SemDistortionFilter$1;-><init>(Lcom/samsung/android/graphics/SemDistortionFilter;FF)V

    move-object v0, p0

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/SemImageFilterSet;->addAnimationForAllPasses(Lcom/samsung/android/graphics/SemImageFilter$IAnimationListener;JJLandroid/animation/TimeInterpolator;)[I

    move-result-object v0

    return-object v0
.end method

.method public setDistortion(F)V
    .locals 3
    .param p1, "power"    # F

    .prologue
    const/high16 v2, 0x44800000    # 1024.0f

    const/4 v1, 0x0

    .line 73
    iget v0, p0, Lcom/samsung/android/graphics/SemDistortionFilter;->mRadius:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 75
    iget v0, p0, Lcom/samsung/android/graphics/SemDistortionFilter;->mRadius:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 76
    iput v2, p0, Lcom/samsung/android/graphics/SemDistortionFilter;->mRadius:F

    .line 82
    :goto_0
    iget v0, p0, Lcom/samsung/android/graphics/SemDistortionFilter;->mRadius:F

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->setParam(IF)V

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->notifyWorkerFilters()V

    .line 71
    :cond_0
    return-void

    .line 77
    :cond_1
    iget v0, p0, Lcom/samsung/android/graphics/SemDistortionFilter;->mRadius:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 78
    iput v1, p0, Lcom/samsung/android/graphics/SemDistortionFilter;->mRadius:F

    goto :goto_0

    .line 80
    :cond_2
    iput p1, p0, Lcom/samsung/android/graphics/SemDistortionFilter;->mRadius:F

    goto :goto_0
.end method
