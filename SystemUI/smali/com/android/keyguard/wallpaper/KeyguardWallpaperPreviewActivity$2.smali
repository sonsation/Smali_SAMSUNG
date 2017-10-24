.class Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$2;
.super Ljava/lang/Object;
.source "KeyguardWallpaperPreviewActivity.java"

# interfaces
.implements Lcom/android/keyguard/wallpaper/cinematic/KeyguardCinematicPreview$CinematicCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;
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
    .line 133
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$2;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeChanged(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity$2;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;

    invoke-static {v0, p1}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;->-wrap5(Lcom/android/keyguard/wallpaper/KeyguardWallpaperPreviewActivity;I)V

    .line 135
    return-void
.end method
