.class Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$9;
.super Ljava/lang/Object;
.source "KeyguardWallpaperPreviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->initPreviewArea()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;


# direct methods
.method constructor <init>(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$9;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 354
    iget-object v6, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$9;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    new-instance v0, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$9;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v1}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-get2(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/content/Context;

    move-result-object v1

    .line 355
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$9;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v2}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-get7(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$9;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v3}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-get7(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$9;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v4}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-get3(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Z

    move-result v4

    .line 356
    iget-object v5, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$9;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v5}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-get0(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$CinematicCallback;

    move-result-object v5

    .line 354
    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;-><init>(Landroid/content/Context;IIZLcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$CinematicCallback;)V

    invoke-static {v6, v0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-set0(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;)Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;

    .line 357
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$9;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-get1(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$9;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-get7(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$9;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v1}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-get1(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 359
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$9;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-get1(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->onResume()V

    .line 353
    :cond_0
    return-void
.end method
