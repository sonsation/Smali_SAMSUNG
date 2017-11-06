.class Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$4;
.super Ljava/lang/Object;
.source "SeslColorPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 303
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->access$600(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v3

    .line 305
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    const/4 v4, 0x6

    if-ge v2, v4, :cond_1

    .line 306
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->access$700(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 307
    .local v0, "button":Landroid/view/View;
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 308
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->access$002(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;Z)Z

    .line 309
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->access$600(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 310
    .local v1, "color":I
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;)Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$PickedColor;->setColor(I)V

    .line 311
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    invoke-static {v4, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->access$800(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;I)V

    .line 312
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->access$400(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;)Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$OnColorChangedListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 313
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$4;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;->access$400(Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker;)Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$OnColorChangedListener;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslColorPicker$OnColorChangedListener;->onColorChanged(I)V

    .line 305
    .end local v1    # "color":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 317
    .end local v0    # "button":Landroid/view/View;
    :cond_1
    return-void
.end method
