.class Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$1$1;
.super Ljava/lang/Object;
.source "BixbyUserSayingView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$1;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$1$1;->this$1:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$1$1;->this$1:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$1;

    iget-object v1, v0, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView$1;->this$0:Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;->-set0(Lcom/samsung/android/settings/face/bixbysetupwizard/BixbyUserSayingView;F)F

    .line 186
    return-void
.end method
