.class Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;
.super Ljava/lang/Object;
.source "ServiceBoxMusicPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MusicClickListener"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKeyCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyCode"    # I

    .prologue
    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;->mContext:Landroid/content/Context;

    .line 481
    iput p2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;->mKeyCode:I

    .line 479
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/music/MusicController;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;->mKeyCode:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->sendKeyToPlayer(I)V

    .line 485
    return-void
.end method
