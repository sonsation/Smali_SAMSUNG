.class Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner$2;
.super Ljava/lang/Object;
.source "ResizableSpinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner$2;->this$0:Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v0, "ResizableSpinner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemSelected : view - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pos - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner$2;->this$0:Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->access$000(Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner$2;->this$0:Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->access$000(Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner$2;->this$0:Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->access$100(Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;Landroid/view/View;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner$2;->this$0:Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;

    .line 80
    .local v6, "adapter":Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;
    if-eqz v6, :cond_1

    .line 81
    invoke-virtual {v6, p3}, Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;->setSelectionPosition(I)V

    .line 83
    :cond_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner$2;->this$0:Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->access$000(Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner$2;->this$0:Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->access$000(Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    .line 90
    :cond_0
    return-void
.end method
