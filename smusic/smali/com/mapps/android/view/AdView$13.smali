.class Lcom/mapps/android/view/AdView$13;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    .line 2303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v7, 0x0

    const/high16 v5, -0x3d4c0000    # -90.0f

    const/4 v6, 0x0

    .line 2306
    iget-object v3, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$23(Lcom/mapps/android/view/AdView;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v3, v4

    .line 2307
    .local v0, "centerX":F
    iget-object v3, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$23(Lcom/mapps/android/view/AdView;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v3, v4

    .line 2309
    .local v1, "centerY":F
    iget-object v3, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$35(Lcom/mapps/android/view/AdView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2310
    iget-object v3, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$26(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2311
    iget-object v3, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$26(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v3

    iget-object v4, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v4}, Lcom/mapps/android/view/AdView;->access$32(Lcom/mapps/android/view/AdView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mapps/android/view/AdView$SDKView;->setSDKImageDraw(Landroid/graphics/drawable/Drawable;)V

    .line 2312
    iget-object v3, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$26(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapps/android/view/AdView$SDKView;->bringToFront()V

    .line 2314
    :cond_0
    iget-object v3, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$23(Lcom/mapps/android/view/AdView;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2315
    iget-object v3, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$27(Lcom/mapps/android/view/AdView;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2316
    iget-object v3, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$27(Lcom/mapps/android/view/AdView;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->bringToFront()V

    .line 2317
    new-instance v2, Lcom/mapps/android/view/Flip3dAnimation;

    invoke-direct {v2, v5, v7, v0, v1}, Lcom/mapps/android/view/Flip3dAnimation;-><init>(FFFF)V

    .line 2330
    .local v2, "rotation":Lcom/mapps/android/view/Flip3dAnimation;
    :goto_0
    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Lcom/mapps/android/view/Flip3dAnimation;->setDuration(J)V

    .line 2331
    invoke-virtual {v2, v8}, Lcom/mapps/android/view/Flip3dAnimation;->setFillAfter(Z)V

    .line 2332
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Lcom/mapps/android/view/Flip3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2333
    iget-object v3, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$37(Lcom/mapps/android/view/AdView;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mapps/android/view/Flip3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2334
    iget-object v3, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3, v6}, Lcom/mapps/android/view/AdView;->access$38(Lcom/mapps/android/view/AdView;Z)V

    .line 2336
    iget-object v3, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$35(Lcom/mapps/android/view/AdView;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2337
    iget-object v3, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$39(Lcom/mapps/android/view/AdView;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2338
    iget-object v3, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$27(Lcom/mapps/android/view/AdView;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2353
    :goto_1
    return-void

    .line 2320
    .end local v2    # "rotation":Lcom/mapps/android/view/Flip3dAnimation;
    :cond_1
    iget-object v3, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2321
    iget-object v3, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v3

    iget-object v4, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v4}, Lcom/mapps/android/view/AdView;->access$32(Lcom/mapps/android/view/AdView;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mapps/android/view/AdView$SDKView;->setSDKImageDraw(Landroid/graphics/drawable/Drawable;)V

    .line 2322
    iget-object v3, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapps/android/view/AdView$SDKView;->bringToFront()V

    .line 2324
    :cond_2
    iget-object v3, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$27(Lcom/mapps/android/view/AdView;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2325
    iget-object v3, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$23(Lcom/mapps/android/view/AdView;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2326
    iget-object v3, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$23(Lcom/mapps/android/view/AdView;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->bringToFront()V

    .line 2327
    new-instance v2, Lcom/mapps/android/view/Flip3dAnimation;

    invoke-direct {v2, v5, v7, v0, v1}, Lcom/mapps/android/view/Flip3dAnimation;-><init>(FFFF)V

    .restart local v2    # "rotation":Lcom/mapps/android/view/Flip3dAnimation;
    goto :goto_0

    .line 2341
    :cond_3
    iget-object v3, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3, v6}, Lcom/mapps/android/view/AdView;->access$40(Lcom/mapps/android/view/AdView;Z)V

    .line 2342
    iget-object v3, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$35(Lcom/mapps/android/view/AdView;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2343
    iget-object v3, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3, v6}, Lcom/mapps/android/view/AdView;->access$36(Lcom/mapps/android/view/AdView;Z)V

    .line 2347
    :goto_2
    iget-object v3, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v3}, Lcom/mapps/android/view/AdView;->SetRotateTimer()V

    goto :goto_1

    .line 2345
    :cond_4
    iget-object v3, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3, v8}, Lcom/mapps/android/view/AdView;->access$36(Lcom/mapps/android/view/AdView;Z)V

    goto :goto_2

    .line 2350
    :cond_5
    iget-object v3, p0, Lcom/mapps/android/view/AdView$13;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$23(Lcom/mapps/android/view/AdView;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method
