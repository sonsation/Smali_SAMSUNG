.class Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView$1;
.super Ljava/lang/Object;
.source "IndexViewV2.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 256
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 257
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->access$400(Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 258
    if-nez v0, :cond_2

    .line 259
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;

    invoke-static {v2, v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->access$502(Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;Z)Z

    .line 275
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->access$700(Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->access$800(Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;

    .line 276
    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->access$600(Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;)I

    move-result v4

    .line 275
    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->access$900(Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;II)I

    move-result v1

    .line 277
    .local v1, "top":I
    int-to-float v2, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 278
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->access$700(Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 280
    :cond_1
    return v6

    .line 260
    .end local v1    # "top":I
    :cond_2
    if-eq v0, v4, :cond_3

    if-ne v0, v7, :cond_0

    .line 262
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;

    invoke-static {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->access$502(Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;Z)Z

    .line 263
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->access$600(Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;)I

    move-result v2

    if-le v2, v5, :cond_0

    .line 264
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->access$300(Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;)V

    goto :goto_0

    .line 268
    :cond_4
    if-eq v0, v4, :cond_5

    if-ne v0, v7, :cond_0

    .line 269
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;

    invoke-static {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->access$502(Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;Z)Z

    .line 270
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->access$600(Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;)I

    move-result v2

    if-le v2, v5, :cond_0

    .line 271
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->access$300(Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;)V

    goto :goto_0
.end method
