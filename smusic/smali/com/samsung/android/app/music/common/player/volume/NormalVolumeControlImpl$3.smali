.class Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$3;
.super Ljava/lang/Object;
.source "NormalVolumeControlImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->setUpVolumeIcon(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$3;->this$0:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$3;->this$0:Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;->hidePanel()V

    .line 329
    return-void
.end method
