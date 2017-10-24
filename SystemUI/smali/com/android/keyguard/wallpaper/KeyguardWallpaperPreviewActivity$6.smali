.class Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$6;
.super Ljava/lang/Object;
.source "KeyguardWallpaperPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->init()V
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
    .line 290
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$6;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 293
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$6;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$6;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-get4(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-set1(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;Z)Z

    .line 294
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$6;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-get5(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/widget/ImageView;

    move-result-object v1

    .line 295
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$6;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-get4(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/android/keyguard/R$drawable;->ic_setting_check_on:I

    .line 294
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 296
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$6;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-get1(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$6;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-get1(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$6;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v1}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-get4(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview;->setAodOptionChecked(Z)V

    .line 292
    :cond_0
    return-void

    .line 293
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 295
    :cond_2
    sget v0, Lcom/android/keyguard/R$drawable;->ic_setting_check_off:I

    goto :goto_1
.end method
