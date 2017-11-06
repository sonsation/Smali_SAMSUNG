.class Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl$2;
.super Ljava/lang/Object;
.source "DmrVolumeControlImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;->ensurePanel()V
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
    .line 78
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl$2;->this$0:Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl$2;->this$0:Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/volume/DmrVolumeControlImpl;->showPanel()V

    .line 95
    return-void

    .line 83
    :pswitch_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->dlnaDmrVolumeUp()V

    goto :goto_0

    .line 86
    :pswitch_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->dlnaDmrVolumeDown()V

    goto :goto_0

    .line 89
    :pswitch_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->setDlnaDmrMute()V

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x7f1201fc
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
