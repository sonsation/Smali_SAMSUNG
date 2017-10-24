.class Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$2;
.super Ljava/lang/Object;
.source "GalaxyViewRotate.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->beginAlphaAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;


# direct methods
.method constructor <init>(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$2;->this$0:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 220
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$2;->this$0:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->-set1(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;F)F

    .line 221
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$2;->this$0:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->invalidate()V

    .line 219
    return-void
.end method
