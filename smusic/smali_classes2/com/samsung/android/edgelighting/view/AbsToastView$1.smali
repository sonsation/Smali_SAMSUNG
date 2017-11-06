.class Lcom/samsung/android/edgelighting/view/AbsToastView$1;
.super Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverOnComputeInternalInsetsListenerReflection;
.source "AbsToastView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/edgelighting/view/AbsToastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/AbsToastView;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/AbsToastView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/edgelighting/view/AbsToastView;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView$1;->this$0:Lcom/samsung/android/edgelighting/view/AbsToastView;

    invoke-direct {p0}, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverOnComputeInternalInsetsListenerReflection;-><init>()V

    return-void
.end method


# virtual methods
.method public onComputeInternalInsets(Ljava/lang/Object;)V
    .locals 4
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 55
    invoke-static {}, Lcom/samsung/android/edgelighting/reflection/ReflectionContainer;->getViewTreeObserverInternalInsetsInfo()Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverInternalInsetsInfoReflection;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverInternalInsetsInfoReflection;->getTouchableRegion(Ljava/lang/Object;)Landroid/graphics/Region;

    move-result-object v0

    .line 57
    .local v0, "touchableRegion":Landroid/graphics/Region;
    if-nez v0, :cond_0

    .line 58
    const-string v1, "AbstractProxyReflection"

    const-string v2, "onComputeInternalInsets touchable region is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView$1;->this$0:Lcom/samsung/android/edgelighting/view/AbsToastView;

    invoke-virtual {v1}, Lcom/samsung/android/edgelighting/view/AbsToastView;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView$1;->this$0:Lcom/samsung/android/edgelighting/view/AbsToastView;

    iget-object v1, v1, Lcom/samsung/android/edgelighting/view/AbsToastView;->touchableRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/AbsToastView$1;->this$0:Lcom/samsung/android/edgelighting/view/AbsToastView;

    invoke-virtual {v2}, Lcom/samsung/android/edgelighting/view/AbsToastView;->getLeft()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 63
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView$1;->this$0:Lcom/samsung/android/edgelighting/view/AbsToastView;

    iget-object v1, v1, Lcom/samsung/android/edgelighting/view/AbsToastView;->touchableRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/AbsToastView$1;->this$0:Lcom/samsung/android/edgelighting/view/AbsToastView;

    invoke-virtual {v2}, Lcom/samsung/android/edgelighting/view/AbsToastView;->getTop()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 64
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView$1;->this$0:Lcom/samsung/android/edgelighting/view/AbsToastView;

    iget-object v1, v1, Lcom/samsung/android/edgelighting/view/AbsToastView;->touchableRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/AbsToastView$1;->this$0:Lcom/samsung/android/edgelighting/view/AbsToastView;

    invoke-virtual {v2}, Lcom/samsung/android/edgelighting/view/AbsToastView;->getRight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 65
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView$1;->this$0:Lcom/samsung/android/edgelighting/view/AbsToastView;

    iget-object v1, v1, Lcom/samsung/android/edgelighting/view/AbsToastView;->touchableRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/AbsToastView$1;->this$0:Lcom/samsung/android/edgelighting/view/AbsToastView;

    invoke-virtual {v2}, Lcom/samsung/android/edgelighting/view/AbsToastView;->getBottom()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 72
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView$1;->this$0:Lcom/samsung/android/edgelighting/view/AbsToastView;

    iget-object v1, v1, Lcom/samsung/android/edgelighting/view/AbsToastView;->touchableRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 74
    invoke-static {}, Lcom/samsung/android/edgelighting/reflection/ReflectionContainer;->getViewTreeObserverInternalInsetsInfo()Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverInternalInsetsInfoReflection;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/edgelighting/reflection/ReflectionContainer;->getViewTreeObserverInternalInsetsInfo()Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverInternalInsetsInfoReflection;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverInternalInsetsInfoReflection;->TOUCHABLE_INSETS_REGION:I

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverInternalInsetsInfoReflection;->setTouchableInsets(Ljava/lang/Object;I)V

    goto :goto_0

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView$1;->this$0:Lcom/samsung/android/edgelighting/view/AbsToastView;

    iget-object v1, v1, Lcom/samsung/android/edgelighting/view/AbsToastView;->touchableRect:Landroid/graphics/Rect;

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 68
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView$1;->this$0:Lcom/samsung/android/edgelighting/view/AbsToastView;

    iget-object v1, v1, Lcom/samsung/android/edgelighting/view/AbsToastView;->touchableRect:Landroid/graphics/Rect;

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 69
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView$1;->this$0:Lcom/samsung/android/edgelighting/view/AbsToastView;

    iget-object v1, v1, Lcom/samsung/android/edgelighting/view/AbsToastView;->touchableRect:Landroid/graphics/Rect;

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 70
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/AbsToastView$1;->this$0:Lcom/samsung/android/edgelighting/view/AbsToastView;

    iget-object v1, v1, Lcom/samsung/android/edgelighting/view/AbsToastView;->touchableRect:Landroid/graphics/Rect;

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method
