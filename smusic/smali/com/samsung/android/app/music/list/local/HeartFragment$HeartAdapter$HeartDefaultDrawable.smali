.class Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$HeartDefaultDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "HeartFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeartDefaultDrawable"
.end annotation


# instance fields
.field private mImageTranslateX:I

.field private mImageTranslateY:I

.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;JII)V
    .locals 10
    .param p2, "id"    # J
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 1239
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$HeartDefaultDrawable;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    .line 1240
    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 1241
    mul-int/lit8 v0, p4, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$HeartDefaultDrawable;->setIntrinsicWidth(I)V

    .line 1242
    invoke-virtual {p0, p5}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$HeartDefaultDrawable;->setIntrinsicHeight(I)V

    .line 1243
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$HeartDefaultDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v8

    .line 1244
    .local v8, "paint":Landroid/graphics/Paint;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1245
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    mul-int/lit8 v3, p4, 0x2

    int-to-float v3, v3

    const/4 v4, 0x0

    .line 1246
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->access$2500(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;)Landroid/app/Fragment;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0008

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 1245
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1248
    const-wide/16 v0, -0x1

    const-wide/16 v2, 0x5

    rem-long v2, p2, v2

    int-to-long v4, p4

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x5

    div-long/2addr v2, v4

    mul-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$HeartDefaultDrawable;->translateImage(II)V

    .line 1249
    return-void
.end method

.method private translateImage(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1252
    iput p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$HeartDefaultDrawable;->mImageTranslateX:I

    .line 1253
    iput p2, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$HeartDefaultDrawable;->mImageTranslateY:I

    .line 1254
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1258
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1259
    iget v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$HeartDefaultDrawable;->mImageTranslateX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$HeartDefaultDrawable;->mImageTranslateY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1260
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter$HeartDefaultDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 1261
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1262
    return-void
.end method
