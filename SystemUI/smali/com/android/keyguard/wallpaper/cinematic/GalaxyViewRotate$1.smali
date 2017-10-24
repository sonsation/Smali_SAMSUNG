.class Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$1;
.super Ljava/lang/Object;
.source "GalaxyViewRotate.java"

# interfaces
.implements Lcom/altamirasoft/easing_helper/EasingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
    .line 79
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$1;->this$0:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishUpdateValue(F)V
    .locals 0
    .param p1, "v"    # F

    .prologue
    .line 88
    return-void
.end method

.method public onUpdateCurrentValue(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$1;->this$0:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    invoke-static {v0, p1}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->-set2(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;F)F

    .line 83
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$1;->this$0:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->-wrap0(Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;)V

    .line 84
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate$1;->this$0:Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->invalidate()V

    .line 81
    return-void
.end method
