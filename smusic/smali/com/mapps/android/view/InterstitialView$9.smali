.class Lcom/mapps/android/view/InterstitialView$9;
.super Ljava/lang/Object;
.source "InterstitialView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/InterstitialView;->htmlTypeSetting(Landroid/widget/RelativeLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/InterstitialView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/InterstitialView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/InterstitialView$9;->this$0:Lcom/mapps/android/view/InterstitialView;

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 356
    iget-object v2, p0, Lcom/mapps/android/view/InterstitialView$9;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v2}, Lcom/mapps/android/view/InterstitialView;->access$5(Lcom/mapps/android/view/InterstitialView;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 358
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    .line 390
    :goto_1
    return v0

    .line 360
    :pswitch_0
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$9;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Lcom/mapps/android/view/InterstitialView;->m_fFirstX:F

    .line 361
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$9;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, v0, Lcom/mapps/android/view/InterstitialView;->m_fFirstY:F

    goto :goto_0

    .line 364
    :pswitch_1
    iget-object v2, p0, Lcom/mapps/android/view/InterstitialView$9;->this$0:Lcom/mapps/android/view/InterstitialView;

    iget v2, v2, Lcom/mapps/android/view/InterstitialView;->m_fFirstX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x42480000    # 50.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 365
    iget-object v2, p0, Lcom/mapps/android/view/InterstitialView$9;->this$0:Lcom/mapps/android/view/InterstitialView;

    iget v2, v2, Lcom/mapps/android/view/InterstitialView;->m_fFirstX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 366
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView$9;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v1, v0}, Lcom/mapps/android/view/InterstitialView;->access$6(Lcom/mapps/android/view/InterstitialView;I)V

    .line 367
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView$9;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v1, v0}, Lcom/mapps/android/view/InterstitialView;->access$7(Lcom/mapps/android/view/InterstitialView;Z)V

    goto :goto_1

    .line 371
    :cond_1
    iget-object v2, p0, Lcom/mapps/android/view/InterstitialView$9;->this$0:Lcom/mapps/android/view/InterstitialView;

    iget v2, v2, Lcom/mapps/android/view/InterstitialView;->m_fFirstX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 372
    iget-object v2, p0, Lcom/mapps/android/view/InterstitialView$9;->this$0:Lcom/mapps/android/view/InterstitialView;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/mapps/android/view/InterstitialView;->access$6(Lcom/mapps/android/view/InterstitialView;I)V

    .line 373
    iget-object v2, p0, Lcom/mapps/android/view/InterstitialView$9;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v2, v1}, Lcom/mapps/android/view/InterstitialView;->access$7(Lcom/mapps/android/view/InterstitialView;Z)V

    goto :goto_1

    .line 378
    :cond_2
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$9;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v0, v1}, Lcom/mapps/android/view/InterstitialView;->access$6(Lcom/mapps/android/view/InterstitialView;I)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 390
    goto :goto_1

    .line 358
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
