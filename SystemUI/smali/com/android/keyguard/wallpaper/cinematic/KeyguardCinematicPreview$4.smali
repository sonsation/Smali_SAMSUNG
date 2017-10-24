.class Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$4;
.super Ljava/lang/Object;
.source "KeyguardCinematicPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->holdChangeMode(J)V
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
    .line 265
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$4;->this$0:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x63

    .line 268
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$4;->this$0:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->-set1(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;Z)Z

    .line 270
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$4;->this$0:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->-get2(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$4;->this$0:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->-get2(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$4;->this$0:Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->-get2(Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 267
    return-void
.end method
