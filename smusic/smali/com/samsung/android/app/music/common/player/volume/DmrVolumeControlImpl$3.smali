.class Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl$3;
.super Ljava/lang/Object;
.source "DmrVolumeControlImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;->setUpVolumeIcon(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl$3;->this$0:Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl$3;->this$0:Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;->hidePanel()V

    .line 183
    return-void
.end method
