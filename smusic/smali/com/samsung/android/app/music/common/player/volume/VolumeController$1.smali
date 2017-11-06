.class Lcom/samsung/android/app/music/common/player/volume/VolumeController$1;
.super Ljava/lang/Object;
.source "VolumeController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/volume/VolumeController;->createVolumeButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/volume/VolumeController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/volume/VolumeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/volume/VolumeController;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$1;->this$0:Lcom/samsung/android/app/music/common/player/volume/VolumeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/VolumeController$1;->this$0:Lcom/samsung/android/app/music/common/player/volume/VolumeController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/volume/VolumeController;->access$1000(Lcom/samsung/android/app/music/common/player/volume/VolumeController;)V

    .line 120
    return-void
.end method
