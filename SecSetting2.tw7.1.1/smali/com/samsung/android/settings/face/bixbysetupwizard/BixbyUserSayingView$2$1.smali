.class Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$2$1;
.super Ljava/lang/Object;
.source "BixbyUserSayingView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$2;

.field final synthetic val$finalI:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$2;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$2;
    .param p2, "val$finalI"    # I

    .prologue
    .line 209
    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$2$1;->this$1:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$2;

    iput p2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$2$1;->val$finalI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 212
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 213
    .local v0, "v":F
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$2$1;->this$1:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$2;

    iget-object v1, v1, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;

    invoke-static {v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;->-get9(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;)[F

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$2$1;->val$finalI:I

    aput v0, v1, v2

    .line 214
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$2$1;->this$1:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$2;

    iget-object v1, v1, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$2;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;

    invoke-virtual {v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;->invalidate()V

    .line 211
    return-void
.end method
