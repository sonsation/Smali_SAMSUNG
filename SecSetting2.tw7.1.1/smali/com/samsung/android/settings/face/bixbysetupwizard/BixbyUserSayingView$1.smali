.class Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$1;
.super Ljava/lang/Object;
.source "BixbyUserSayingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;->initRunnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 184
    new-instance v7, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$1$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$1$1;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$1;)V

    .line 191
    .local v7, "userSayingNormalizedDbDownUpdateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;

    invoke-static {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;->-get16(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;

    invoke-static {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;->-get16(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 193
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;

    invoke-static {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;->-get16(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 194
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;

    invoke-static {v0, v8}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;->-set2(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 196
    :cond_0
    iget-object v9, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;

    invoke-static {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;->-get7(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;)Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyAnimatorHelper;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;

    invoke-static {v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;->-get11(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;)F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/high16 v2, 0x42700000    # 60.0f

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 197
    invoke-static {}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;->-get2()Landroid/animation/TimeInterpolator;

    move-result-object v6

    .line 196
    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyAnimatorHelper;->makeVAnimFloat([FJJLandroid/animation/TimeInterpolator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;->-set2(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 199
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;

    invoke-static {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;->-get16(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 200
    invoke-static {}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mUserSayingTimeoutRunnable run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method
