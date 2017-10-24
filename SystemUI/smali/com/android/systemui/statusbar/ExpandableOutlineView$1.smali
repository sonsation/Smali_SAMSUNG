.class Lcom/android/systemui/statusbar/ExpandableOutlineView$1;
.super Landroid/view/ViewOutlineProvider;
.source "ExpandableOutlineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/ExpandableOutlineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ExpandableOutlineView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/ExpandableOutlineView;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 39
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getTranslation()F

    move-result v1

    float-to-int v0, v1

    .line 40
    .local v0, "translation":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->-get0(Lcom/android/systemui/statusbar/ExpandableOutlineView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    iget v1, v1, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mClipTopAmount:I

    .line 43
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    .line 44
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->getActualHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    iget v4, v4, Lcom/android/systemui/statusbar/ExpandableOutlineView;->mClipTopAmount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 41
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Outline;->setRect(IIII)V

    .line 48
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->-get1(Lcom/android/systemui/statusbar/ExpandableOutlineView;)F

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 38
    return-void

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/ExpandableOutlineView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->-get2(Lcom/android/systemui/statusbar/ExpandableOutlineView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Outline;->setRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method
