.class Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$6;
.super Ljava/lang/Object;
.source "KeyguardCinematicPreview.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->goAodMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;


# direct methods
.method constructor <init>(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$6;->this$0:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 342
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 343
    .local v0, "value":F
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$6;->this$0:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;

    invoke-static {v1}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->-get1(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;)Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->changeAlpha(F)V

    .line 341
    return-void
.end method
