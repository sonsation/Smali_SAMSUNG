.class Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable$1;
.super Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
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


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable$1;->this$0:Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public resize(II)Landroid/graphics/Shader;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable$1;->this$0:Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;->access$000(Lcom/samsung/android/app/music/milk/radio/drawable/RainbowRingDrawable;)Landroid/graphics/SweepGradient;

    move-result-object v0

    return-object v0
.end method
