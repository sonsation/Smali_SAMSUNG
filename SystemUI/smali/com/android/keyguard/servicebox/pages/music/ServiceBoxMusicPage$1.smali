.class Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$1;
.super Ljava/lang/Object;
.source "ServiceBoxMusicPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;


# direct methods
.method constructor <init>(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->-get1(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->-get3(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 105
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->-get0(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/music/MusicController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->-wrap0(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->launchMusicApp(Lcom/android/keyguard/servicebox/KeyguardStatusCallback;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->-wrap1(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)V

    .line 99
    :cond_1
    :goto_0
    return-void

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->-get2(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)Landroid/media/MediaMetadata;

    move-result-object v0

    if-nez v0, :cond_3

    .line 110
    return-void

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->-get0(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/music/MusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->showBigActivity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->-wrap3(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)V

    goto :goto_0
.end method
