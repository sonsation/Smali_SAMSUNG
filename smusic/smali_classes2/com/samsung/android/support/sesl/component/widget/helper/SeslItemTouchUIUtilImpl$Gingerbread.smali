.class Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$Gingerbread;
.super Ljava/lang/Object;
.source "SeslItemTouchUIUtilImpl.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtil;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Gingerbread"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private draw(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Landroid/view/View;FF)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "dX"    # F
    .param p5, "dY"    # F

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 120
    invoke-virtual {p1, p4, p5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 121
    const-wide/16 v0, 0x0

    invoke-virtual {p2, p1, p3, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 123
    return-void
.end method


# virtual methods
.method public clearView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 128
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Landroid/view/View;FFIZ)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .prologue
    .line 143
    const/4 v0, 0x2

    if-eq p6, v0, :cond_0

    .line 144
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$Gingerbread;->draw(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Landroid/view/View;FF)V

    .line 146
    :cond_0
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Landroid/view/View;FFIZ)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .prologue
    .line 152
    const/4 v0, 0x2

    if-ne p6, v0, :cond_0

    .line 153
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$Gingerbread;->draw(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Landroid/view/View;FF)V

    .line 155
    :cond_0
    return-void
.end method

.method public onSelected(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 132
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 133
    return-void
.end method

.method public onSelected(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "actionState"    # I

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$Gingerbread;->onSelected(Landroid/view/View;)V

    .line 138
    return-void
.end method
