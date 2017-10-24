.class Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$3;
.super Ljava/lang/Object;
.source "KeyguardCinematicPreview.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;-><init>(Landroid/content/Context;IIZLcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$CinematicCallback;)V
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
    .line 166
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$3;->this$0:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$3;->this$0:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->-get1(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;)Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/cinematic/GalaxyViewRotate;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 170
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$3;->this$0:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->reset()V

    .line 171
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$3;->this$0:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->-wrap0(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;)V

    .line 172
    const/4 v0, 0x1

    return v0
.end method
