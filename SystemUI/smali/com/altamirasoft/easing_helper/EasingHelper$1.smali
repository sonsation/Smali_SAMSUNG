.class Lcom/altamirasoft/easing_helper/EasingHelper$1;
.super Ljava/lang/Object;
.source "EasingHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/altamirasoft/easing_helper/EasingHelper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/altamirasoft/easing_helper/EasingHelper;


# direct methods
.method constructor <init>(Lcom/altamirasoft/easing_helper/EasingHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/altamirasoft/easing_helper/EasingHelper;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/altamirasoft/easing_helper/EasingHelper$1;->this$0:Lcom/altamirasoft/easing_helper/EasingHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/altamirasoft/easing_helper/EasingHelper$1;->this$0:Lcom/altamirasoft/easing_helper/EasingHelper;

    invoke-static {v0}, Lcom/altamirasoft/easing_helper/EasingHelper;->access$000(Lcom/altamirasoft/easing_helper/EasingHelper;)V

    .line 42
    return-void
.end method
