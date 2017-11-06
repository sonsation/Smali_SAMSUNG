.class Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable$2;
.super Landroid/graphics/drawable/shapes/OvalShape;
.source "RainbowRingDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;->init(Landroid/content/res/Resources;IIFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;

.field final synthetic val$thickness:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable$2;->this$0:Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;

    iput p2, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable$2;->val$thickness:I

    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    return-void
.end method


# virtual methods
.method protected onResize(FF)V
    .locals 6
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable$2;->rect()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable$2;->val$thickness:I

    int-to-float v1, v1

    div-float/2addr v1, v5

    iget v2, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable$2;->val$thickness:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable$2;->val$thickness:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    sub-float v3, p1, v3

    iget v4, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable$2;->val$thickness:I

    int-to-float v4, v4

    div-float/2addr v4, v5

    sub-float v4, p2, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 123
    return-void
.end method
