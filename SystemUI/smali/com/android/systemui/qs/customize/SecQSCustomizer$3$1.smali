.class Lcom/android/systemui/qs/customize/SecQSCustomizer$3$1;
.super Landroid/view/View$DragShadowBuilder;
.source "SecQSCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/SecQSCustomizer$3;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/customize/SecQSCustomizer$3;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/SecQSCustomizer$3;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/qs/customize/SecQSCustomizer$3;
    .param p2, "$anonymous0"    # Landroid/view/View;

    .prologue
    .line 528
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$3$1;->this$1:Lcom/android/systemui/qs/customize/SecQSCustomizer$3;

    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 8
    .param p1, "shadowSize"    # Landroid/graphics/Point;
    .param p2, "shadowTouchPoint"    # Landroid/graphics/Point;

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$3$1;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 531
    .local v1, "shadowWidth":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer$3$1;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 532
    .local v0, "shadowHeight":I
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Point;->set(II)V

    .line 533
    div-int/lit8 v2, v1, 0x2

    int-to-double v4, v0

    const-wide v6, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 529
    return-void
.end method
