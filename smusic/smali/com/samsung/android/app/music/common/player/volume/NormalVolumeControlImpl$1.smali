.class Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$1;
.super Ljava/lang/Object;
.source "NormalVolumeControlImpl.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->ensurePanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$1;->this$0:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 4

    .prologue
    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$1;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "MPVL"

    const-string v2, "Media"

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$1;->this$0:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    .line 147
    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->access$000(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;)Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$1;->this$0:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    const-string v1, "1000"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->access$002(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$1;->this$0:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->access$100(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;)Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnVolumeControlChangedListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnVolumeControlChangedListener;->onPanelVisibilityChanged(Z)V

    .line 150
    return-void
.end method
