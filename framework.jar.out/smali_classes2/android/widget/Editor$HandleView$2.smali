.class Landroid/widget/Editor$HandleView$2;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$HandleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$HandleView;


# direct methods
.method constructor <init>(Landroid/widget/Editor$HandleView;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/Editor$HandleView;

    .prologue
    .line 5374
    iput-object p1, p0, Landroid/widget/Editor$HandleView$2;->this$1:Landroid/widget/Editor$HandleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Landroid/graphics/Rect;
    .param p3, "endValue"    # Landroid/graphics/Rect;

    .prologue
    .line 5376
    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 5377
    .local v1, "width":I
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 5380
    .local v0, "height":I
    iget-object v2, p0, Landroid/widget/Editor$HandleView$2;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/Editor$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Ljava/lang/Object;
    .param p3, "endValue"    # Ljava/lang/Object;

    .prologue
    .line 5375
    check-cast p2, Landroid/graphics/Rect;

    .end local p2    # "startValue":Ljava/lang/Object;
    check-cast p3, Landroid/graphics/Rect;

    .end local p3    # "endValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView$2;->evaluate(FLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method
