.class Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$5;
.super Ljava/lang/Object;
.source "KeyguardCinematicPreview.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->goOffMode()V
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
    .line 310
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$5;->this$0:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 321
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$5;->this$0:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->reset()V

    .line 316
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 325
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 312
    return-void
.end method
