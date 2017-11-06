.class Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback$1;
.super Ljava/lang/Object;
.source "DefaultOptionGroup.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback;->onCreate(Lcom/samsung/android/app/music/common/player/volume/VolumeController$PanelLook;)Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 226
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback;

    .line 227
    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback;->access$200(Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$PanelActionCallback;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/common/util/UiUtils;->isPointInView(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
