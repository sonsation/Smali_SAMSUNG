.class Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$2;
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
    .line 438
    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$2;->this$0:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$2;->this$0:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-static {v0, p1}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->-wrap2(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;Landroid/view/View;)V

    .line 441
    return-void
.end method
